-- =========================================================
--  Fichier : 1_creation.sql
--  Objet   : Création des tables
-- =========================================================

-- =========================================================
--  Monde : SOLARYS  (MySQL 8 / InnoDB / utf8mb4)
--  Relance sûre : DROP (ordre inverse des dépendances)
-- =========================================================

-- DROP DATABASE IF EXISTS Solarys;
-- CREATE DATABASE Solarys CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
-- USE Solarys;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS
  LoiRoyaume,
  Loi,
  RelationDiplomatique,
  ExpeditionStock,        --
  ExpeditionMembre,       --
  Expedition,             --
  Inventaire,
  PersonnageEquipement,
  EquipementRessource,
  Equipement,
  CreatureBataille,       --
  GuildeBataille,         --
  ArmeeBataille,          --
  Bataille,               --
  Armee,
  PersonnageMaladie,
  Maladie,
  EcoleCours,
  SortElement,
  Sort,
  ElementMagique,
  EcoleMagie,
  Creature,
  MarchandAchat,
  MarchandTrajet,
  Marchand,
  Renommee,
  PersonnageTitre,
  Titre,
  GuildeMembre,
  Guilde,
  Village,
  RoyaumeRessource,
  Ressource,
  PersonnageCompetence,
  Competence,
  PersonnageClasse,
  Classe,
  PersonnageMetier,
  Metier,
  Personnage,
  Lignee,
  Espece,
  Royaume;


-- =========================================================
--                     TABLES COEUR
-- =========================================================

-- Royaume
-- Les États/territoires de Solarys (nom, frontières, richesses, ressources, posture “paix/neutre/belligérant”). 
-- Clé centrale pour villes, armées, diplomatie, lois.
CREATE TABLE Royaume (
  id_royaume INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  frontieres LONGTEXT,
  richesses_or DECIMAL(12,2),
  orientation_paix ENUM('paix','neutre','belligerant') NOT NULL,
  PRIMARY KEY (id_royaume),
  UNIQUE KEY ux_royaume_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Espece
-- Les espèces intelligentes (ou non) : humains, nains, elfes, orcs, dragons, wyverns… 
-- avec est_sapiente pour savoir si l’espèce peut avoir métiers/classes/guildes.
CREATE TABLE Espece (
  id_espece INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(50) NOT NULL,     
  est_sapiente BOOLEAN NOT NULL,
  PRIMARY KEY (id_espece),
  UNIQUE KEY ux_espece_libelle (libelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Lignee
-- Familles/lignées nobles ou notables (nom unique). 
-- Sert pour titres et pour référencer l’origine familiale des personnages.
CREATE TABLE Lignee (
  id_lignee INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL, 
  PRIMARY KEY (id_lignee),
  UNIQUE KEY ux_lignee_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Personnage
-- Personnages principaux pour l’exemple (identité, espèce, lignée, royaume d’origine, dates de vie, résumé, mana max). 
-- Point d’ancrage pour métiers, classes, compétences, inventaires, guildes, expéditions, armées.
CREATE TABLE Personnage (
  id_personnage INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(120) NOT NULL,
  espece_id INT,
  lignee_id INT,
  royaume_origine_id INT,
  date_naissance_lore VARCHAR(60) NOT NULL,
  statut_vie ENUM('vivant','mort','inconnu') NOT NULL,
  date_deces_lore VARCHAR(60),
  cause_deces VARCHAR(120),
  mana_max INT DEFAULT 0, 
  bio_courte VARCHAR(300),
  PRIMARY KEY (id_personnage),
  KEY idx_pers_espece (espece_id),
  KEY idx_pers_lignee (lignee_id),
  KEY idx_pers_royaume (royaume_origine_id),
  CONSTRAINT fk_pers_espece  FOREIGN KEY (espece_id)         REFERENCES Espece(id_espece),
  CONSTRAINT fk_pers_lignee  FOREIGN KEY (lignee_id)         REFERENCES Lignee(id_lignee),
  CONSTRAINT fk_pers_royaume FOREIGN KEY (royaume_origine_id)REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--           METIERS / CLASSES / COMPETENCES
-- =========================================================

-- Metier
-- Référentiel des métiers civils (cuisinier, armurier, herboriste…), typés artisan/marchand/service/autre.
CREATE TABLE Metier (
  id_metier INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(60) NOT NULL, 
  type_metier VARCHAR(60) NOT NULL,
  PRIMARY KEY (id_metier),
  UNIQUE KEY ux_metier_libelle (libelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageMetier
-- Attribution des métiers aux personnages + niveau de maîtrise.
CREATE TABLE PersonnageMetier (
  personnage_id INT NOT NULL,
  metier_id INT NOT NULL,
  niveau INT DEFAULT 1, 
  PRIMARY KEY (personnage_id, metier_id),
  KEY idx_pme_metier (metier_id),
  CONSTRAINT fk_pme_pers  FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pme_metier FOREIGN KEY (metier_id)     REFERENCES Metier(id_metier)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Classe
-- Référentiel des classes “combat/aventure” (mage, tank, archer, voleur…) avec rôle (dps/tank/soin/support/hybride).
CREATE TABLE Classe (
  id_classe INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(60) NOT NULL, 
  role_combat VARCHAR(60) NOT NULL,
  PRIMARY KEY (id_classe),
  UNIQUE KEY ux_classe_libelle (libelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageClasse
-- Attribution des classes aux personnages + niveau de classe.
CREATE TABLE PersonnageClasse (
  personnage_id INT NOT NULL,
  classe_id INT NOT NULL,
  niveau INT DEFAULT 1,
  PRIMARY KEY (personnage_id, classe_id),
  KEY idx_pc_classe (classe_id),
  CONSTRAINT fk_pclass_pers  FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pclass_class FOREIGN KEY (classe_id)     REFERENCES Classe(id_classe)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Competence
-- Référentiel des compétences (cuisine, forge, pistage…), avec éventuelle exigence d’espèce ou de formation.
CREATE TABLE Competence (
  id_competence INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  exigence_espece_id INT,  
  exigence_formation VARCHAR(120),
  PRIMARY KEY (id_competence),
  UNIQUE KEY ux_comp_nom (nom),
  KEY idx_comp_espece (exigence_espece_id),
  CONSTRAINT fk_comp_espece FOREIGN KEY (exigence_espece_id) REFERENCES Espece(id_espece)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageCompetence
-- Compétences détenues par un personnage + niveau.
CREATE TABLE PersonnageCompetence (
  personnage_id INT NOT NULL,
  competence_id INT NOT NULL,
  niveau INT DEFAULT 1,
  PRIMARY KEY (personnage_id, competence_id),
  KEY idx_pcomp_comp (competence_id),
  CONSTRAINT fk_pcomp_pers FOREIGN KEY (personnage_id)  REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pcomp_comp FOREIGN KEY (competence_id)  REFERENCES Competence(id_competence)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- =========================================================
--               VILLES / GUILDES / MARCHANDS / ROUTES
-- =========================================================

-- Ressource
-- Catalogue des catégories de biens (minerais, épices, tissus, peaux, mana cristallisé, etc.).
CREATE TABLE Ressource (
  id_ressource INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  description TEXT NULL,
  PRIMARY KEY (id_ressource),
  UNIQUE KEY ux_ressource_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- RoyaumeRessource
-- Ressources disponibles dans un royaume, avec importance (principale/secondaire/rare) et note.
CREATE TABLE RoyaumeRessource (
  royaume_id INT NOT NULL,
  ressource_id INT NOT NULL,
  importance ENUM('principale','secondaire','rare') NULL,
  note VARCHAR(200) NULL,
  PRIMARY KEY (royaume_id, ressource_id),
  KEY idx_rr_ressource (ressource_id),
  CONSTRAINT fk_rr_royaume   FOREIGN KEY (royaume_id)   REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_rr_ressource FOREIGN KEY (ressource_id) REFERENCES Ressource(id_ressource)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Village
-- Localités d’un royaume (nom, localisation, population, ressource principale). 
-- Sert d’ancrage aux inventaires “fixes”.
CREATE TABLE Village (
  id_village INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(120) NOT NULL,
  localisation VARCHAR(150),
  population INT,
  ressource_principale_id INT NULL,
  royaume_id INT,
  PRIMARY KEY (id_village),
  UNIQUE KEY ux_village_nom (nom),
  KEY idx_village_royaume (royaume_id),
  KEY idx_village_ressource (ressource_principale_id),
  CONSTRAINT fk_village_royaume FOREIGN KEY (royaume_id) REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_village_ressource  FOREIGN KEY (ressource_principale_id) REFERENCES Ressource(id_ressource)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Guilde
-- Organisations (aventuriers, marchande, autre), avec spécialité et réputation.
CREATE TABLE Guilde (
  id_guilde INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  type_guilde VARCHAR(60) NOT NULL,
  specialite VARCHAR(60),
  reputation VARCHAR(12),
  PRIMARY KEY (id_guilde),
  UNIQUE KEY ux_guilde_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- GuildeMembre
-- Appartenance des personnages à une guilde (rôle/fonction, dates d’entrée/sortie).
CREATE TABLE GuildeMembre (
  personnage_id INT NOT NULL,
  guilde_id INT NOT NULL,
  role VARCHAR(60),
  date_entree_lore VARCHAR(60) NOT NULL,
  date_sortie_lore VARCHAR(60),
  PRIMARY KEY (personnage_id, guilde_id),
  KEY idx_gm_guilde (guilde_id),
  CONSTRAINT fk_gm_pers   FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_gm_guilde FOREIGN KEY (guilde_id)     REFERENCES Guilde(id_guilde)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- =========================================================
--                         TITRES & RENOMMEE
-- =========================================================

-- Titre
-- Titres et dignités (Duc, Archimage, Héros de Solarys…).
CREATE TABLE Titre (
  id_titre INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(40) NOT NULL,
  effets JSON NULL,
  effets_commentaire VARCHAR(200) NULL,
  PRIMARY KEY (id_titre),
  UNIQUE KEY ux_titre_libelle (libelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageTitre
-- Qui porte quel titre, dans quel royaume, pour quelle période (avec lignée si le titre est héréditaire).
CREATE TABLE PersonnageTitre (
  id_pers_titre INT NOT NULL AUTO_INCREMENT,
  personnage_id INT,
  titre_id INT,
  royaume_id INT,
  lignee_id INT,
  date_debut_lore VARCHAR(60) NOT NULL,
  date_fin_lore VARCHAR(60),
  est_actif BOOLEAN,
  PRIMARY KEY (id_pers_titre),
  KEY idx_pt_pers (personnage_id),
  KEY idx_pt_titre (titre_id),
  KEY idx_pt_royaume (royaume_id),
  KEY idx_pt_lignee (lignee_id),
  CONSTRAINT fk_pt_pers   FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pt_titre  FOREIGN KEY (titre_id)      REFERENCES Titre(id_titre),
  CONSTRAINT fk_pt_royaume FOREIGN KEY (royaume_id)   REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_pt_lignee FOREIGN KEY (lignee_id)     REFERENCES Lignee(id_lignee)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Renommee
-- Mesure la réputation locale (par royaume) ou mondiale (Solarys) 
-- d’un personnage ou d’une guilde (score + intitulé honorifique).
CREATE TABLE Renommee (
  id_renommee INT NOT NULL AUTO_INCREMENT,
  personnage_id INT NULL,
  guilde_id INT NULL,
  royaume_id INT NULL,
  village_id INT NULL,
  echelle ENUM('village','royaume','solarys') NOT NULL,
  titre_reconnu VARCHAR(120),
  PRIMARY KEY (id_renommee),
  KEY idx_rn_pers (personnage_id),
  KEY idx_rn_guilde (guilde_id),
  KEY idx_rn_royaume (royaume_id),
  KEY idx_rn_village (village_id),
  CONSTRAINT fk_rn_pers    FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_rn_guilde  FOREIGN KEY (guilde_id)     REFERENCES Guilde(id_guilde),
  CONSTRAINT fk_rn_royaume FOREIGN KEY (royaume_id)    REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_rn_village FOREIGN KEY (village_id)    REFERENCES Village(id_village)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ======================
--  MARCHANDS : trajets simples + achats de ressources
-- ======================

-- Marchand
-- Marchands identifiés, éventuellement rattachés à une guilde marchande.
CREATE TABLE Marchand (
  id_marchand INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  guilde_id INT NULL,
  PRIMARY KEY (id_marchand),
  UNIQUE KEY ux_marchand_nom (nom),
  KEY idx_marchand_guilde (guilde_id),
  CONSTRAINT fk_marchand_guilde FOREIGN KEY (guilde_id) REFERENCES Guilde(id_guilde)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- MarchandTrajet
-- Déplacements d’un marchand entre deux royaumes (départ/arrivée, dates).
CREATE TABLE MarchandTrajet (
  id_trajet INT NOT NULL AUTO_INCREMENT,
  marchand_id INT NOT NULL,
  royaume_depart_id INT NOT NULL,
  royaume_arrivee_id INT NOT NULL,
  date_depart_lore VARCHAR(60) NOT NULL,
  date_arrivee_lore VARCHAR(60),
  PRIMARY KEY (id_trajet),
  KEY idx_mt_marchand (marchand_id),
  KEY idx_mt_dep (royaume_depart_id),
  KEY idx_mt_arr (royaume_arrivee_id),
  CONSTRAINT fk_mt_marchand FOREIGN KEY (marchand_id)      REFERENCES Marchand(id_marchand),
  CONSTRAINT fk_mt_dep      FOREIGN KEY (royaume_depart_id) REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_mt_arr      FOREIGN KEY (royaume_arrivee_id)REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- MarchandAchat
-- Achats réalisés pendant un trajet (ressource, quantité, prix total, royaume où l’achat a eu lieu).
CREATE TABLE MarchandAchat (
  id_achat INT NOT NULL AUTO_INCREMENT,
  trajet_id INT NOT NULL,
  royaume_id INT NOT NULL,
  ressource_id INT NOT NULL,
  quantite INT NOT NULL DEFAULT 1,
  prix_total DECIMAL(12,2) NULL,
  date_achat_lore VARCHAR(60),
  PRIMARY KEY (id_achat),
  KEY idx_ma_trajet (trajet_id),
  KEY idx_ma_royaume (royaume_id),
  KEY idx_ma_ressource (ressource_id),
  CONSTRAINT fk_ma_trajet   FOREIGN KEY (trajet_id)   REFERENCES MarchandTrajet(id_trajet),
  CONSTRAINT fk_ma_royaume  FOREIGN KEY (royaume_id)  REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_ma_ress     FOREIGN KEY (ressource_id)REFERENCES Ressource(id_ressource)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--                        BESTIAIRE & MAGIE
-- =========================================================

-- Creature
-- Bestiaire non sapient (ou créatures traitées comme telles) : espèce, forces/faiblesses, niveau de dangerosité.
CREATE TABLE Creature (
  id_creature INT NOT NULL AUTO_INCREMENT,
  espece_id INT NOT NULL,
  forces VARCHAR(200),
  faiblesses VARCHAR(200),
  dangerosite ENUM('faible','moderee','elevee','cataclysmique') NOT NULL,
  PRIMARY KEY (id_creature),
  CONSTRAINT fk_creature_espece FOREIGN KEY (espece_id) REFERENCES Espece(id_espece)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ======================
--  MAGIE : ECOLES / SORTS / COURS (professeur PNJ)
-- ======================

-- EcoleMagie
-- Écoles/Académies (nom, royaume). Permet de lier l’enseignement à un lieu.
CREATE TABLE EcoleMagie (
  id_ecole INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  royaume_id INT,
  PRIMARY KEY (id_ecole),
  UNIQUE KEY ux_ecole_nom (nom),
  KEY idx_ecole_royaume (royaume_id),
  CONSTRAINT fk_ecole_royaume FOREIGN KEY (royaume_id) REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ElementMagique
-- Référentiel des éléments (feu, glace, foudre, lumière, ténèbres, …).
CREATE TABLE ElementMagique (
  id_element INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(30) NOT NULL,
  PRIMARY KEY (id_element),
  UNIQUE KEY ux_element_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Sort
-- Référentiel des sorts (nom, affinité d’école/élément, coût en mana, niveau requis, flags interdit/rituel).
CREATE TABLE Sort (
  id_sort INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL, 
  ecole_id INT,
  cout_mana INT,
  niveau_requis INT,
  est_interdit BOOLEAN,
  est_rituel BOOLEAN,
  PRIMARY KEY (id_sort),
  UNIQUE KEY ux_sort_nom (nom),
  KEY idx_sort_ecole (ecole_id),
  CONSTRAINT fk_sort_ecole FOREIGN KEY (ecole_id) REFERENCES EcoleMagie(id_ecole)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- SortElement
-- Association entre Sort et ElementMagique.
CREATE TABLE SortElement (
  sort_id INT NOT NULL,
  element_id INT NOT NULL,
  PRIMARY KEY (sort_id, element_id),
  KEY idx_se_element (element_id),
  CONSTRAINT fk_se_sort    FOREIGN KEY (sort_id)    REFERENCES Sort(id_sort),
  CONSTRAINT fk_se_element FOREIGN KEY (element_id) REFERENCES ElementMagique(id_element)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- EcoleCours
-- Association École ↔ Professeur (Personnage) ↔ Sort. 
-- Un trigger empêche d’enseigner un sort marqué est_interdit = 1.
CREATE TABLE EcoleCours (
  ecole_id INT NOT NULL,
  professeur_id INT NOT NULL,
  sort_id INT NOT NULL,
  PRIMARY KEY (ecole_id, professeur_id, sort_id),
  KEY idx_cours_prof (professeur_id),
  KEY idx_cours_sort (sort_id),
  CONSTRAINT fk_cours_ecole FOREIGN KEY (ecole_id)      REFERENCES EcoleMagie(id_ecole),
  CONSTRAINT fk_cours_prof  FOREIGN KEY (professeur_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_cours_sort  FOREIGN KEY (sort_id)       REFERENCES Sort(id_sort)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Maladie
-- Référentiel des maladies (effets, contagion, remède, taux de mortalité).
CREATE TABLE Maladie (
  id_maladie INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(80) NOT NULL,
  effets VARCHAR(300),
  contagion VARCHAR(120),
  remede VARCHAR(200),
  taux_mortalite DOUBLE,
  PRIMARY KEY (id_maladie),
  UNIQUE KEY ux_maladie_nom (nom)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageMaladie
-- Historique des maladies d’un personnage (dates, issue).
CREATE TABLE PersonnageMaladie (
  personnage_id INT NOT NULL,
  maladie_id INT NOT NULL,
  date_debut_lore VARCHAR(60) NOT NULL,
  date_fin_lore VARCHAR(60),
  issue VARCHAR(40),
  PRIMARY KEY (personnage_id, maladie_id, date_debut_lore),
  KEY idx_pma_maladie (maladie_id),
  CONSTRAINT fk_pma_pers   FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pma_maladie FOREIGN KEY (maladie_id)   REFERENCES Maladie(id_maladie)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--                       ARMÉES & BATAILLES
-- =========================================================

-- Armee
-- Forces d’un royaume (nom, effectif, composition, moral, approvisionnement) et leur commandant (Personnage).
CREATE TABLE Armee (
  id_armee INT NOT NULL AUTO_INCREMENT,
  royaume_id INT,
  nom VARCHAR(80) NOT NULL,
  effectif INT,
  composition VARCHAR(200),
  moral VARCHAR(30),
  etat_approvisionnement VARCHAR(60),
  commandant_id INT,
  PRIMARY KEY (id_armee),
  KEY idx_armee_royaume (royaume_id),
  KEY idx_armee_commandant (commandant_id),
  CONSTRAINT fk_armee_royaume   FOREIGN KEY (royaume_id)   REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_armee_cmdt      FOREIGN KEY (commandant_id)REFERENCES Personnage(id_personnage)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Bataille
-- Événements militaires (nom, date, lieu textuel, pertes, vainqueur).
CREATE TABLE Bataille (
  id_bataille INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(120) NOT NULL,
  date_bataille_lore VARCHAR(60),
  lieu VARCHAR(120),
  pertesA INT,
  pertesB INT,
  vainqueur_texte VARCHAR(120),
  PRIMARY KEY (id_bataille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ArmeeBataille
-- Participation d’armées à une bataille (camp A/B/neutre, pertes).
CREATE TABLE ArmeeBataille (
  armee_id INT NOT NULL,
  bataille_id INT NOT NULL,
  cote VARCHAR(10),
  pertes INT,
  PRIMARY KEY (armee_id, bataille_id),
  KEY idx_ab_bataille (bataille_id),
  CONSTRAINT fk_ab_armee    FOREIGN KEY (armee_id)    REFERENCES Armee(id_armee),
  CONSTRAINT fk_ab_bataille FOREIGN KEY (bataille_id) REFERENCES Bataille(id_bataille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- GuildeBataille
-- Participation des guildes à une bataille (rôle joué).
CREATE TABLE GuildeBataille (
  guilde_id INT NOT NULL,
  bataille_id INT NOT NULL,
  role VARCHAR(60),
  PRIMARY KEY (guilde_id, bataille_id),
  KEY idx_gb_bataille (bataille_id),
  CONSTRAINT fk_gb_guilde   FOREIGN KEY (guilde_id)   REFERENCES Guilde(id_guilde),
  CONSTRAINT fk_gb_bataille FOREIGN KEY (bataille_id) REFERENCES Bataille(id_bataille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- CreatureBataille
-- Implication de créatures (type, effectif, rôle) dans une bataille.
CREATE TABLE CreatureBataille (
  creature_id INT NOT NULL,
  bataille_id INT NOT NULL,
  nombre INT,
  role VARCHAR(60),
  PRIMARY KEY (creature_id, bataille_id),
  KEY idx_cb_bataille (bataille_id),
  CONSTRAINT fk_cb_creature FOREIGN KEY (creature_id) REFERENCES Creature(id_creature),
  CONSTRAINT fk_cb_bataille FOREIGN KEY (bataille_id) REFERENCES Bataille(id_bataille)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--                       EQUIPEMENT & STOCKS
-- =========================================================

-- Equipement
-- Items (armes, armures, outils, consommables…) 
-- avec rarete (commun → mythique), matériaux, éventuels enchantements/affinités.
CREATE TABLE Equipement (
  id_equipement INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(120) NOT NULL,
  type_equipement VARCHAR(60),
  rarete ENUM('commun','rare','epique','legendaire','mythique') NOT NULL,
  enchantements VARCHAR(250),
  element_affinite_id INT NULL,
  description TEXT,
  PRIMARY KEY (id_equipement),
  UNIQUE KEY ux_equip_nom (nom),
  KEY idx_equip_element (element_affinite_id),
  CONSTRAINT fk_equip_element FOREIGN KEY (element_affinite_id) REFERENCES ElementMagique(id_element)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- EquipementRessource
-- Association entre Equipement et Ressource (ex: épée = acier + cuir).
CREATE TABLE EquipementRessource (
  equipement_id INT NOT NULL,
  ressource_id INT NOT NULL,
  PRIMARY KEY (equipement_id, ressource_id),
  KEY idx_er_ressource (ressource_id),
  CONSTRAINT fk_er_equip     FOREIGN KEY (equipement_id) REFERENCES Equipement(id_equipement),
  CONSTRAINT fk_er_ressource FOREIGN KEY (ressource_id)  REFERENCES Ressource(id_ressource)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- PersonnageEquipement
-- Items possédés par un personnage (qualité/état, date d’acquisition, source).
CREATE TABLE PersonnageEquipement (
  personnage_id INT NOT NULL,
  equipement_id INT NOT NULL,
  qualite VARCHAR(40),
  date_acquisition_lore VARCHAR(60),
  source VARCHAR(120),
  PRIMARY KEY (personnage_id, equipement_id),
  KEY idx_pe_equip (equipement_id),
  CONSTRAINT fk_pe_pers  FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_pe_equip FOREIGN KEY (equipement_id) REFERENCES Equipement(id_equipement)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Inventaire
-- Stocks fixes d’un village ou militaires d’une armée (type de ressource, quantité, seuil d’alerte, date de mesure).
CREATE TABLE Inventaire (
  id_inventaire INT NOT NULL AUTO_INCREMENT,
  ressource_id INT NOT NULL,
  stock INT,
  seuil_alerte INT,
  id_village INT NULL,
  armee_id INT NULL,
  personnage_id INT NULL,
  guilde_id INT NULL,
  date_mesure_lore VARCHAR(60),
  PRIMARY KEY (id_inventaire),
  KEY idx_inv_ressource (ressource_id),
  KEY idx_inv_village (id_village),
  KEY idx_inv_armee (armee_id),
  KEY idx_inv_personnage (personnage_id),
  KEY idx_inv_guilde (guilde_id),
  CONSTRAINT fk_inv_ressource   FOREIGN KEY (ressource_id)  REFERENCES Ressource(id_ressource),
  CONSTRAINT fk_inv_village     FOREIGN KEY (id_village)    REFERENCES Village(id_village),
  CONSTRAINT fk_inv_armee       FOREIGN KEY (armee_id)      REFERENCES Armee(id_armee),
  CONSTRAINT fk_inv_personnage  FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_inv_guilde      FOREIGN KEY (guilde_id)     REFERENCES Guilde(id_guilde)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--                 EXPEDITIONS (missions suivies)
-- =========================================================

-- Expedition
-- Missions suivies (nom, objectif, royaume d’opération, dates).
CREATE TABLE Expedition (
  id_expedition INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(120) NOT NULL,
  objectif TEXT NOT NULL,
  royaume_id INT,
  date_debut_lore VARCHAR(60),
  date_fin_lore VARCHAR(60),
  PRIMARY KEY (id_expedition),
  KEY idx_exp_royaume (royaume_id),
  CONSTRAINT fk_exp_royaume FOREIGN KEY (royaume_id) REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- ExpeditionMembre
-- Composition de l’expédition (qui participe, rôle dans la mission).
CREATE TABLE ExpeditionMembre (
  expedition_id INT NOT NULL,
  personnage_id INT NOT NULL,
  role_mission TEXT NULL,
  PRIMARY KEY (expedition_id, personnage_id),
  KEY idx_em_pers (personnage_id),
  CONSTRAINT fk_em_exp  FOREIGN KEY (expedition_id) REFERENCES Expedition(id_expedition),
  CONSTRAINT fk_em_pers FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Stocks portés pendant l’expédition pour chaque membre.
-- Le chef de groupe prend les items de la mission (si existants) dans son inventaire.
CREATE TABLE ExpeditionStock (
  expedition_id INT NOT NULL,
  equipement_id INT NOT NULL,
  personnage_id INT NOT NULL,
  quantite INT NOT NULL DEFAULT 1,
  PRIMARY KEY (expedition_id, equipement_id, personnage_id),
  KEY idx_es_equip (equipement_id),
  KEY idx_es_pers (personnage_id),
  CONSTRAINT fk_es_exp  FOREIGN KEY (expedition_id) REFERENCES Expedition(id_expedition),
  CONSTRAINT fk_es_equip FOREIGN KEY (equipement_id) REFERENCES Equipement(id_equipement),
  CONSTRAINT fk_es_pers FOREIGN KEY (personnage_id) REFERENCES Personnage(id_personnage),
  CONSTRAINT fk_es_member FOREIGN KEY (expedition_id, personnage_id) REFERENCES ExpeditionMembre(expedition_id, personnage_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================================================
--                   DIPLOMATIE / LOIS
-- =========================================================

-- RelationDiplomatique
-- Relations entre royaumes (alliance, trêve, rivalité, guerre…), conditions, date, échéance.
CREATE TABLE RelationDiplomatique (
  id_relation INT NOT NULL AUTO_INCREMENT,
  royaume_source_id INT,
  royaume_cible_id INT,
  type_relation VARCHAR(20),
  conditions VARCHAR(300),
  date_signature_lore VARCHAR(60),
  echeance VARCHAR(40),
  PRIMARY KEY (id_relation),
  KEY idx_rel_src (royaume_source_id),
  KEY idx_rel_dst (royaume_cible_id),
  CONSTRAINT fk_rel_src FOREIGN KEY (royaume_source_id) REFERENCES Royaume(id_royaume),
  CONSTRAINT fk_rel_dst FOREIGN KEY (royaume_cible_id)  REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Loi
-- Corpus légal (intitulé + texte).
CREATE TABLE Loi (
  id_loi INT NOT NULL AUTO_INCREMENT,
  libelle VARCHAR(120) NOT NULL,
  effet LONGTEXT,
  PRIMARY KEY (id_loi),
  UNIQUE KEY ux_loi_libelle (libelle)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- LoiRoyaume
-- Application d’une loi dans un royaume donné.
CREATE TABLE LoiRoyaume (
  loi_id INT NOT NULL,
  royaume_id INT NOT NULL,
  PRIMARY KEY (loi_id, royaume_id),
  KEY idx_lr_royaume (royaume_id),
  CONSTRAINT fk_lr_loi     FOREIGN KEY (loi_id)    REFERENCES Loi(id_loi),
  CONSTRAINT fk_lr_royaume FOREIGN KEY (royaume_id)REFERENCES Royaume(id_royaume)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
