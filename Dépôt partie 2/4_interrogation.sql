-- =========================================================
--  Fichier : 4_interrogation.sql
--  Objet   : Requêtes d’interrogation – Monde de Solarys
-- =========================================================

/* ==============================
   1) PROJECTIONS / SELECTIONS
   ============================== */

-- 🕯️ Ordre du Roi :
-- « Dis-moi quels royaumes pacifiques regorgent d’or… que je voie où lever l’impôt. »
-- Royaumes pacifiques les plus riches
SELECT nom, richesses_or
FROM Royaume
WHERE orientation_paix = 'paix'
ORDER BY richesses_or DESC
LIMIT 10;

-- 🕯️ Ordre du Roi :
-- « Quels métiers sentent la magie ? Qu’on surveille leurs pratiques. »
-- Métiers contenant "mage"
SELECT libelle
FROM Metier
WHERE libelle LIKE '%mage%';

-- 🕯️ Ordre du Roi :
-- « Combien d’espèces pensantes hantent nos terres ? Dresse-m’en la liste. »
-- Liste des espèces sapientes
SELECT libelle
FROM Espece
WHERE est_sapiente = 1;

-- 🕯️ Ordre du Roi :
-- « Quelles ressources ont une aura mystique ? Les alchimistes s’y intéresseront. »
-- Ressources dont la description contient "magique"
SELECT nom, description
FROM Ressource
WHERE description LIKE '%magique%';

-- 🕯️ Ordre du Roi :
-- « Parmi les royaumes d’aisance moyenne, lesquels brillent le plus ? »
-- Richesse située entre 50 000 et 80 000
SELECT nom, richesses_or
FROM Royaume
WHERE richesses_or BETWEEN 50000 AND 80000
ORDER BY richesses_or DESC;

-- 🕯️ Ordre du Roi :
-- « Quels rôles de combat nos armées alignent-elles ? Donne-moi la typologie. »
-- Liste distincte des rôles de combat
SELECT DISTINCT role_combat
FROM Classe
ORDER BY role_combat;

/* ==============================
   2) FONCTIONS D’AGRÉGATION
   ============================== */

-- 🕯️ Ordre du Roi :
-- « Quelle est la fortune moyenne de mes domaines ? »
-- Richesse moyenne des royaumes
SELECT AVG(richesses_or) AS richesse_moyenne
FROM Royaume;

-- 🕯️ Ordre du Roi :
-- « Compte toutes les espèces sapientes : autant de sujets à ménager… ou à taxer. »
-- Nombre d’espèces sapientes
SELECT COUNT(*) AS nb_especes_sapientes
FROM Espece
WHERE est_sapiente = 1;

-- 🕯️ Ordre du Roi :
-- « Par initiale, quelles ressources foisonnent au-delà du raisonnable ? »
-- Nombre de ressources par initiale
SELECT LEFT(nom, 1) AS initiale, COUNT(*) AS total
FROM Ressource
GROUP BY initiale
HAVING total > 3
ORDER BY initiale ASC;

-- 🕯️ Ordre du Roi :
-- « Les nobles “de la” foisonnent-ils ? Compte leurs lignées. »
-- Nombre de lignées dont le nom contient “de la”
SELECT COUNT(*) AS nb_lignees_de_la
FROM Lignee
WHERE nom LIKE '%de la%';

-- 🕯️ Ordre du Roi :
-- « Additionne l’or des royaumes pacifiques : j’aime savoir combien d'or dort en paix. »
-- Richesse totale des royaumes en paix
SELECT SUM(richesses_or) AS total_or_paix
FROM Royaume
WHERE orientation_paix = 'paix';

-- 🕯️ Ordre du Roi :
-- « Quelles guildes rassemblent au moins trois âmes vaillantes ? »
-- Guildes ayant au moins 3 membres
SELECT g.nom AS guilde, COUNT(*) AS nb_membres
FROM GuildeMembre gm
JOIN Guilde g ON g.id_guilde = gm.guilde_id
GROUP BY g.id_guilde, g.nom
HAVING nb_membres >= 3
ORDER BY nb_membres DESC;

-- 🕯️ Ordre du Roi :
-- « Par rôle, combien de classes d’armes tenons-nous prêtes ? »
-- Nombre de classes par rôle
SELECT role_combat, COUNT(*) AS nb_classes
FROM Classe
GROUP BY role_combat
ORDER BY nb_classes DESC, role_combat;

/* ================
   3) JOINTURES
   ================ */

-- 🕯️ Ordre du Roi :
-- « D’où viennent mes sujets ? Associe chaque nom à son royaume d'origine. »
-- Personnages avec leur royaume d’origine
SELECT p.nom AS personnage, r.nom AS royaume
FROM Personnage p
JOIN Royaume r ON p.royaume_origine_id = r.id_royaume
ORDER BY royaume, personnage;

-- 🕯️ Ordre du Roi :
-- « Qui porte un nom de lignée, et qui n’en porte point ? »
-- Lignées et personnages
SELECT p.nom AS personnage, l.nom AS lignee
FROM Personnage p
LEFT JOIN Lignee l ON l.id_lignee = p.lignee_id
ORDER BY personnage;

-- 🕯️ Ordre du Roi :
-- « Fais parler les sols : quelles ressources chaque royaume revendique ? »
-- Ressources et royaumes d’origine
SELECT r.nom AS ressource, ro.nom AS royaume, importance
FROM RoyaumeRessource rr
LEFT JOIN Ressource r ON rr.ressource_id = r.id_ressource
LEFT JOIN Royaume ro ON rr.royaume_id = ro.id_royaume
ORDER BY ro.nom, r.nom;

-- 🕯️ Ordre du Roi :
-- « Et s’il faut prendre par la droite, montre le même tableau, autrement joint. »
SELECT r.nom AS ressource, ro.nom AS royaume, rr.importance
FROM Ressource r
RIGHT JOIN RoyaumeRessource rr ON rr.ressource_id = r.id_ressource
RIGHT JOIN Royaume ro          ON ro.id_royaume   = rr.royaume_id
ORDER BY ro.nom, r.nom;

-- 🕯️ Ordre du Roi :
-- « Quelles classes manient quels arts, et à quel niveau ? »
-- Personnages, classes et niveau
SELECT p.nom, c.libelle, pc.niveau
FROM PersonnageClasse pc
JOIN Personnage p ON pc.personnage_id = p.id_personnage
JOIN Classe c ON pc.classe_id = c.id_classe;

-- 🕯️ Ordre du Roi :
-- « Ouvre le registre des guildes et nomme-moi leurs membres ainsi que leur utilité. »
-- Guildes, membres et rôle
SELECT g.nom AS guilde, p.nom AS membre, gm.role
FROM GuildeMembre gm
JOIN Guilde g ON gm.guilde_id = g.id_guilde
JOIN Personnage p ON gm.personnage_id = p.id_personnage;

-- 🕯️ Ordre du Roi :
-- « Par curiosité savante : croise tous les rôles de classe avec tous les types de métier. »
-- CROSS JOIN : rôles de classes × types de métiers
SELECT DISTINCT c.role_combat, m.type_metier
FROM Classe c
CROSS JOIN Metier m
ORDER BY c.role_combat, m.type_metier;

-- 🕯️ Ordre du Roi :
-- « Je veux la vue la plus complète des guildes et de ceux qui les peuplent (ou non). »
-- Tableau complet guildes/membres
SELECT g.nom AS guilde, p.nom AS membre, gm.role
FROM Guilde g
LEFT JOIN GuildeMembre gm ON gm.guilde_id = g.id_guilde
LEFT JOIN Personnage p    ON p.id_personnage = gm.personnage_id
UNION
SELECT g.nom AS guilde, p.nom AS membre, gm.role
FROM Personnage p
RIGHT JOIN GuildeMembre gm ON gm.personnage_id = p.id_personnage
RIGHT JOIN Guilde g        ON g.id_guilde = gm.guilde_id
ORDER BY guilde, membre;

/* =======================
   4) REQUÊTES IMBRIQUÉES
   ======================= */

-- 🕯️ Ordre du Roi :
-- « Qui dépasse la moyenne d’or ? Mes collecteurs partiront là d’abord. »
-- Royaumes plus riches que la moyenne
SELECT nom, richesses_or
FROM Royaume
WHERE richesses_or > (SELECT AVG(richesses_or) FROM Royaume)
ORDER BY richesses_or DESC, nom;

-- 🕯️ Ordre du Roi :
-- « Montre-moi les lignées orphelines de descendants. »
-- Lignées sans personnage
SELECT nom
FROM Lignee
WHERE id_lignee NOT IN (
  SELECT lignee_id FROM Personnage WHERE lignee_id IS NOT NULL
)
ORDER BY nom;

-- 🕯️ Ordre du Roi :
-- « Quels métiers n’ont point d’apprentis ? Qu’on y envoie des recruteurs. »
-- Métiers non attribués
SELECT libelle
FROM Metier
WHERE id_metier NOT IN (SELECT metier_id FROM PersonnageMetier)
ORDER BY libelle;

-- 🕯️ Ordre du Roi :
-- « Quels royaumes n’affichent aucune ressource “principale” ? »
-- Royaumes sans ressource “principale”
SELECT nom
FROM Royaume
WHERE id_royaume NOT IN (
  SELECT royaume_id FROM RoyaumeRessource WHERE importance = 'principale'
);

-- 🕯️ Ordre du Roi :
-- « Et lesquels possèdent au moins une rareté ? Qu’on en apporte un échantillon. »
-- Royaumes ayant au moins une ressource rare
SELECT nom
FROM Royaume
WHERE EXISTS (
  SELECT 1
  FROM RoyaumeRessource rr
  WHERE rr.royaume_id = Royaume.id_royaume
    AND rr.importance = 'rare'
)
ORDER BY nom;

-- 🕯️ Ordre du Roi :
-- « Je veux les héros dont le mana dépasse la moyenne de leur espèce. »
-- Personnages au mana supérieur à la moyenne de son espèce
SELECT p.nom, p.mana_max
FROM Personnage p
WHERE p.mana_max IS NOT NULL
  AND p.mana_max >= ALL (
    SELECT AVG(p2.mana_max)
    FROM Personnage p2
    WHERE p2.mana_max IS NOT NULL
    GROUP BY p2.espece_id
)
ORDER BY p.mana_max DESC, p.nom;

-- 🕯️ Ordre du Roi :
-- « Nomme ceux qui portent un titre actif en ce moment. »
-- Personnages ayant un titre actif
SELECT DISTINCT p.nom
FROM Personnage p
WHERE EXISTS (
  SELECT 1
  FROM PersonnageTitre pt
  WHERE pt.personnage_id = p.id_personnage
    AND pt.est_actif = 1
)
ORDER BY p.nom;

-- 🕯️ Ordre du Roi :
-- « La maladie gagne-t-elle nos contrées ? Dresse la liste des infectés et des maux. »
-- Personnages infectés et leur maladie
SELECT DISTINCT p.nom AS personnage, m.nom AS maladie
FROM Personnage p
JOIN PersonnageMaladie pm ON pm.personnage_id = p.id_personnage
JOIN Maladie m           ON m.id_maladie      = pm.maladie_id
ORDER BY maladie, personnage;

-- 🕯️ Ordre du Roi :
-- « Les guildes qui n’ont jamais combattu… qu’on leur rafraîchisse la mémoire. »
-- Guildes sans bataille à leur actif
SELECT g.nom
FROM Guilde g
WHERE NOT EXISTS (
  SELECT 1 FROM GuildeBataille gb WHERE gb.guilde_id = g.id_guilde
)
ORDER BY g.nom;

-- 🕯️ Ordre du Roi :
-- « Quelles armées dépassent la moyenne d’effectif de leur royaume ? »
-- Armées avec effectif supérieur à la moyenne de leur royaume
SELECT a.id_armee, a.nom, a.royaume_id, r.nom, a.effectif
FROM Armee a
JOIN Royaume r ON a.royaume_id = r.id_royaume
WHERE a.effectif IS NOT NULL
  AND a.effectif > ANY (
    SELECT AVG(a2.effectif)
    FROM Armee a2
    WHERE a2.royaume_id = a.royaume_id
      AND a2.effectif IS NOT NULL
    GROUP BY a2.royaume_id
)
ORDER BY a.royaume_id, a.effectif DESC;

-- 🕯️ Ordre du Roi :
-- « Existe-t-il des expéditions sans un seul membre ? Qu’on les rebaptise “pique-nique royal”. »
-- Expéditions sans membre
SELECT e.id_expedition, e.nom
FROM Expedition e
WHERE NOT EXISTS (
  SELECT 1 FROM ExpeditionMembre em
  WHERE em.expedition_id = e.id_expedition
)
ORDER BY e.id_expedition;
