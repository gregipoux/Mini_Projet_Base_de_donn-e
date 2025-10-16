-- =========================================================
--  Fichier : 2_contraintes.sql
--  Objet   : Contraintes de validation
-- =========================================================

DELIMITER $$
CREATE TRIGGER trg_cours_no_forbidden
BEFORE INSERT ON EcoleCours
FOR EACH ROW
BEGIN
  DECLARE interdit TINYINT;
  SELECT est_interdit INTO interdit FROM Sort WHERE id_sort = NEW.sort_id;
  IF interdit = 1 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Ce sort est interdit et ne peut pas être enseigné.';
  END IF;
END$$
DELIMITER ;

-- 1) INVENTAIRE : un seul détenteur par ligne (village OU armée OU personnage OU guilde)
ALTER TABLE Inventaire
  ADD CONSTRAINT ck_inv_un_seul_detenteur
  CHECK (
    ((id_village    IS NOT NULL) +
     (armee_id      IS NOT NULL) +
     (personnage_id IS NOT NULL) +
     (guilde_id     IS NOT NULL)) = 1
  );

-- 1.b) INVENTAIRE : valeurs non négatives (si renseignées)
ALTER TABLE Inventaire
  ADD CONSTRAINT ck_inv_stock_nonneg
  CHECK (stock IS NULL OR stock >= 0),
  ADD CONSTRAINT ck_inv_seuil_nonneg
  CHECK (seuil_alerte IS NULL OR seuil_alerte >= 0);

-- 2) QUANTITÉS STRICTEMENT POSITIVES là où c'est du dénombrement
ALTER TABLE ExpeditionStock
  ADD CONSTRAINT ck_es_quantite_pos CHECK (quantite >= 1);

ALTER TABLE MarchandAchat
  ADD CONSTRAINT ck_ma_quantite_pos CHECK (quantite >= 1),
  ADD CONSTRAINT ck_ma_prix_nonneg CHECK (prix_total IS NULL OR prix_total >= 0);

-- 3) ARMEE : effectif non négatif (si renseigné)
ALTER TABLE Armee
  ADD CONSTRAINT ck_armee_effectif_nonneg
  CHECK (effectif IS NULL OR effectif >= 0);

-- 4) PERSONNAGE : mana_max non négatif
ALTER TABLE Personnage
  ADD CONSTRAINT ck_pers_mana_nonneg
  CHECK (mana_max >= 0);

-- 5) NIVEAUX de progression (si présents) : >= 1
ALTER TABLE PersonnageClasse
  ADD CONSTRAINT ck_pc_niveau_pos CHECK (niveau IS NULL OR niveau >= 1);
ALTER TABLE PersonnageMetier
  ADD CONSTRAINT ck_pm_niveau_pos CHECK (niveau IS NULL OR niveau >= 1);
ALTER TABLE PersonnageCompetence
  ADD CONSTRAINT ck_pcomp_niveau_pos CHECK (niveau IS NULL OR niveau >= 1);

-- 6) RELATION_DIPLOMATIQUE : éviter les doublons exacts (source, cible, date)
--    NB : les lignes avec date NULL ne sont pas affectées (NULLs multiples autorisés).
CREATE UNIQUE INDEX ux_rel_src_cible_date
  ON RelationDiplomatique(royaume_source_id, royaume_cible_id, date_signature_lore);

-- 7) PERSONNAGE_TITRE : empêcher deux titres "actifs" identiques simultanés
DELIMITER $$
CREATE TRIGGER trg_pt_no_dup_same_title_bi
BEFORE INSERT ON PersonnageTitre
FOR EACH ROW
BEGIN
  IF NEW.est_actif = 1 THEN
    IF EXISTS (
      SELECT 1
      FROM PersonnageTitre t
      WHERE t.personnage_id = NEW.personnage_id
        AND t.titre_id      = NEW.titre_id
        AND t.est_actif     = 1
    ) THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ce personnage a déjà ce titre en actif.';
    END IF;
  END IF;
END$$

CREATE TRIGGER trg_pt_no_dup_same_title_bu
BEFORE UPDATE ON PersonnageTitre
FOR EACH ROW
BEGIN
  IF NEW.est_actif = 1 THEN
    IF EXISTS (
      SELECT 1
      FROM PersonnageTitre t
      WHERE t.personnage_id = NEW.personnage_id
        AND t.titre_id      = NEW.titre_id
        AND t.est_actif     = 1
        AND t.id_pers_titre <> OLD.id_pers_titre
    ) THEN
      SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ce personnage a déjà ce titre en actif.';
    END IF;
  END IF;
END$$
DELIMITER ;


-- 8) SORT : nombre d'éléments magiques par sort (1 à 6)
DELIMITER $$
-- À l’insertion d’un lien SORT-ELEMENT : interdire > 6 éléments par sort
CREATE TRIGGER trg_se_max6_bi
BEFORE INSERT ON SortElement
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM SortElement WHERE sort_id = NEW.sort_id) >= 6 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Un sort ne peut pas avoir plus de 6 éléments.';
  END IF;
END$$

-- À la suppression d’un lien SORT-ELEMENT : interdire de supprimer le dernier
CREATE TRIGGER trg_se_no_delete_last_bd
BEFORE DELETE ON SortElement
FOR EACH ROW
BEGIN
  IF (SELECT COUNT(*) FROM SortElement WHERE sort_id = OLD.sort_id) <= 1 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Impossible de supprimer le dernier élément d’un sort.';
  END IF;
END$$
DELIMITER ;