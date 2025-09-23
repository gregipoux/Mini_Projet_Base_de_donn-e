-- CreateTable
CREATE TABLE "Race" (
    "id" SERIAL NOT NULL,
    "libelle" TEXT NOT NULL,

    CONSTRAINT "Race_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Role" (
    "id" SERIAL NOT NULL,
    "libelle" TEXT NOT NULL,

    CONSTRAINT "Role_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lignee" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,

    CONSTRAINT "Lignee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Personnage" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "dateNaissance" TIMESTAMP(3),
    "statutVie" TEXT,
    "dateDeces" TIMESTAMP(3),
    "causeDeces" TEXT,
    "raceId" INTEGER,
    "ligneeId" INTEGER,

    CONSTRAINT "Personnage_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PersonnageRole" (
    "personnageId" INTEGER NOT NULL,
    "roleId" INTEGER NOT NULL,

    CONSTRAINT "PersonnageRole_pkey" PRIMARY KEY ("personnageId","roleId")
);

-- CreateTable
CREATE TABLE "Competence" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "exigenceFormation" TEXT,
    "exigenceRaceId" INTEGER,

    CONSTRAINT "Competence_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PersonnageCompetence" (
    "personnageId" INTEGER NOT NULL,
    "competenceId" INTEGER NOT NULL,
    "niveau" INTEGER NOT NULL,

    CONSTRAINT "PersonnageCompetence_pkey" PRIMARY KEY ("personnageId","competenceId")
);

-- CreateTable
CREATE TABLE "Domaine" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "frontieres" TEXT,
    "richessesOr" DECIMAL(12,2),
    "ressources" TEXT,

    CONSTRAINT "Domaine_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Titre" (
    "id" SERIAL NOT NULL,
    "libelle" TEXT NOT NULL,

    CONSTRAINT "Titre_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PersonnageTitre" (
    "id" SERIAL NOT NULL,
    "dateDebut" TIMESTAMP(3),
    "dateFin" TIMESTAMP(3),
    "estActif" BOOLEAN NOT NULL DEFAULT false,
    "personnageId" INTEGER NOT NULL,
    "titreId" INTEGER NOT NULL,
    "domaineId" INTEGER,
    "ligneeId" INTEGER,

    CONSTRAINT "PersonnageTitre_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Village" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "localisation" TEXT,
    "population" INTEGER,
    "ressourcePrincipale" TEXT,
    "domaineId" INTEGER,

    CONSTRAINT "Village_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Guilde" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "specialite" TEXT,
    "reputation" TEXT,

    CONSTRAINT "Guilde_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GuildeMembre" (
    "personnageId" INTEGER NOT NULL,
    "guildeId" INTEGER NOT NULL,
    "dateEntree" TIMESTAMP(3),
    "dateSortie" TIMESTAMP(3),

    CONSTRAINT "GuildeMembre_pkey" PRIMARY KEY ("personnageId","guildeId")
);

-- CreateTable
CREATE TABLE "Creature" (
    "id" SERIAL NOT NULL,
    "espece" TEXT NOT NULL,
    "forces" TEXT,
    "faiblesses" TEXT,
    "dangerosite" TEXT,

    CONSTRAINT "Creature_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "EcoleMagie" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,

    CONSTRAINT "EcoleMagie_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Sort" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "element" TEXT,
    "coutMana" INTEGER,
    "niveauRequis" TEXT,
    "estInterdit" BOOLEAN NOT NULL DEFAULT false,
    "estRituel" BOOLEAN NOT NULL DEFAULT false,
    "ecoleId" INTEGER,

    CONSTRAINT "Sort_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Maladie" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "effets" TEXT,
    "contagion" TEXT,
    "remede" TEXT,
    "tauxMortalite" DOUBLE PRECISION,

    CONSTRAINT "Maladie_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PersonnageMaladie" (
    "personnageId" INTEGER NOT NULL,
    "maladieId" INTEGER NOT NULL,
    "dateDebut" TIMESTAMP(3) NOT NULL,
    "dateFin" TIMESTAMP(3),
    "issue" TEXT,

    CONSTRAINT "PersonnageMaladie_pkey" PRIMARY KEY ("personnageId","maladieId","dateDebut")
);

-- CreateTable
CREATE TABLE "Armee" (
    "id" SERIAL NOT NULL,
    "nom" TEXT,
    "effectif" INTEGER,
    "composition" TEXT,
    "moral" TEXT,
    "etatApprovisionnement" TEXT,
    "domaineId" INTEGER,
    "commandantId" INTEGER,

    CONSTRAINT "Armee_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Bataille" (
    "id" SERIAL NOT NULL,
    "nom" TEXT,
    "dateBataille" TIMESTAMP(3),
    "lieu" TEXT,
    "pertesA" INTEGER,
    "pertesB" INTEGER,
    "vainqueurTexte" TEXT,

    CONSTRAINT "Bataille_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ArmeeBataille" (
    "armeeId" INTEGER NOT NULL,
    "batailleId" INTEGER NOT NULL,
    "cote" TEXT,
    "pertes" INTEGER,

    CONSTRAINT "ArmeeBataille_pkey" PRIMARY KEY ("armeeId","batailleId")
);

-- CreateTable
CREATE TABLE "GuildeBataille" (
    "guildeId" INTEGER NOT NULL,
    "batailleId" INTEGER NOT NULL,
    "role" TEXT,

    CONSTRAINT "GuildeBataille_pkey" PRIMARY KEY ("guildeId","batailleId")
);

-- CreateTable
CREATE TABLE "CreatureBataille" (
    "creatureId" INTEGER NOT NULL,
    "batailleId" INTEGER NOT NULL,
    "nombre" INTEGER,
    "role" TEXT,

    CONSTRAINT "CreatureBataille_pkey" PRIMARY KEY ("creatureId","batailleId")
);

-- CreateTable
CREATE TABLE "Equipement" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "typeEquipement" TEXT,
    "materiaux" TEXT,
    "rarete" TEXT,
    "enchantements" TEXT,
    "affiniteRequise" TEXT,

    CONSTRAINT "Equipement_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PersonnageEquipement" (
    "personnageId" INTEGER NOT NULL,
    "equipementId" INTEGER NOT NULL,
    "dateAcquisition" TIMESTAMP(3),
    "source" TEXT,

    CONSTRAINT "PersonnageEquipement_pkey" PRIMARY KEY ("personnageId","equipementId")
);

-- CreateTable
CREATE TABLE "Marchand" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,

    CONSTRAINT "Marchand_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RouteCommerciale" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "securite" TEXT,
    "saison" TEXT,

    CONSTRAINT "RouteCommerciale_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lieu" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,
    "typeLieu" TEXT,
    "localisation" TEXT,

    CONSTRAINT "Lieu_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RouteSegment" (
    "routeId" INTEGER NOT NULL,
    "lieuId" INTEGER NOT NULL,
    "ordre" INTEGER NOT NULL,

    CONSTRAINT "RouteSegment_pkey" PRIMARY KEY ("routeId","lieuId","ordre")
);

-- CreateTable
CREATE TABLE "MarchandRoute" (
    "marchandId" INTEGER NOT NULL,
    "routeId" INTEGER NOT NULL,
    "biens" TEXT,
    "taxes" DOUBLE PRECISION,

    CONSTRAINT "MarchandRoute_pkey" PRIMARY KEY ("marchandId","routeId")
);

-- CreateTable
CREATE TABLE "Barde" (
    "id" SERIAL NOT NULL,
    "nom" TEXT NOT NULL,

    CONSTRAINT "Barde_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Histoire" (
    "id" SERIAL NOT NULL,
    "titre" TEXT,
    "typeEvenement" TEXT,
    "description" TEXT,
    "dateEvenement" TIMESTAMP(3),
    "bardeId" INTEGER,

    CONSTRAINT "Histoire_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Inventaire" (
    "id" SERIAL NOT NULL,
    "typeRessource" TEXT,
    "stock" INTEGER,
    "seuilAlerte" INTEGER,
    "dateMesure" TIMESTAMP(3),
    "lieuId" INTEGER,
    "armeeId" INTEGER,
    "villageId" INTEGER,

    CONSTRAINT "Inventaire_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RelationDiplomatique" (
    "id" SERIAL NOT NULL,
    "typeRelation" TEXT,
    "conditions" TEXT,
    "dateSignature" TIMESTAMP(3),
    "echeance" TEXT,
    "domaineSourceId" INTEGER NOT NULL,
    "domaineCibleId" INTEGER NOT NULL,

    CONSTRAINT "RelationDiplomatique_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Loi" (
    "id" SERIAL NOT NULL,
    "libelle" TEXT NOT NULL,
    "effet" TEXT,

    CONSTRAINT "Loi_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LoiTerritoire" (
    "loiId" INTEGER NOT NULL,
    "domaineId" INTEGER NOT NULL,

    CONSTRAINT "LoiTerritoire_pkey" PRIMARY KEY ("loiId","domaineId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Race_libelle_key" ON "Race"("libelle");

-- CreateIndex
CREATE UNIQUE INDEX "Role_libelle_key" ON "Role"("libelle");

-- CreateIndex
CREATE UNIQUE INDEX "Lignee_nom_key" ON "Lignee"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Competence_nom_key" ON "Competence"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Domaine_nom_key" ON "Domaine"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Titre_libelle_key" ON "Titre"("libelle");

-- CreateIndex
CREATE UNIQUE INDEX "Village_nom_key" ON "Village"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Guilde_nom_key" ON "Guilde"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Creature_espece_key" ON "Creature"("espece");

-- CreateIndex
CREATE UNIQUE INDEX "EcoleMagie_nom_key" ON "EcoleMagie"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Sort_nom_key" ON "Sort"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Maladie_nom_key" ON "Maladie"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Equipement_nom_key" ON "Equipement"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Marchand_nom_key" ON "Marchand"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "RouteCommerciale_nom_key" ON "RouteCommerciale"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Lieu_nom_key" ON "Lieu"("nom");

-- CreateIndex
CREATE UNIQUE INDEX "Barde_nom_key" ON "Barde"("nom");

-- CreateIndex
CREATE INDEX "RelationDiplomatique_domaineSourceId_idx" ON "RelationDiplomatique"("domaineSourceId");

-- CreateIndex
CREATE INDEX "RelationDiplomatique_domaineCibleId_idx" ON "RelationDiplomatique"("domaineCibleId");

-- CreateIndex
CREATE UNIQUE INDEX "Loi_libelle_key" ON "Loi"("libelle");

-- AddForeignKey
ALTER TABLE "Personnage" ADD CONSTRAINT "Personnage_raceId_fkey" FOREIGN KEY ("raceId") REFERENCES "Race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Personnage" ADD CONSTRAINT "Personnage_ligneeId_fkey" FOREIGN KEY ("ligneeId") REFERENCES "Lignee"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageRole" ADD CONSTRAINT "PersonnageRole_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageRole" ADD CONSTRAINT "PersonnageRole_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES "Role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Competence" ADD CONSTRAINT "Competence_exigenceRaceId_fkey" FOREIGN KEY ("exigenceRaceId") REFERENCES "Race"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageCompetence" ADD CONSTRAINT "PersonnageCompetence_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageCompetence" ADD CONSTRAINT "PersonnageCompetence_competenceId_fkey" FOREIGN KEY ("competenceId") REFERENCES "Competence"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageTitre" ADD CONSTRAINT "PersonnageTitre_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageTitre" ADD CONSTRAINT "PersonnageTitre_titreId_fkey" FOREIGN KEY ("titreId") REFERENCES "Titre"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageTitre" ADD CONSTRAINT "PersonnageTitre_domaineId_fkey" FOREIGN KEY ("domaineId") REFERENCES "Domaine"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageTitre" ADD CONSTRAINT "PersonnageTitre_ligneeId_fkey" FOREIGN KEY ("ligneeId") REFERENCES "Lignee"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Village" ADD CONSTRAINT "Village_domaineId_fkey" FOREIGN KEY ("domaineId") REFERENCES "Domaine"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GuildeMembre" ADD CONSTRAINT "GuildeMembre_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GuildeMembre" ADD CONSTRAINT "GuildeMembre_guildeId_fkey" FOREIGN KEY ("guildeId") REFERENCES "Guilde"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sort" ADD CONSTRAINT "Sort_ecoleId_fkey" FOREIGN KEY ("ecoleId") REFERENCES "EcoleMagie"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageMaladie" ADD CONSTRAINT "PersonnageMaladie_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageMaladie" ADD CONSTRAINT "PersonnageMaladie_maladieId_fkey" FOREIGN KEY ("maladieId") REFERENCES "Maladie"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Armee" ADD CONSTRAINT "Armee_domaineId_fkey" FOREIGN KEY ("domaineId") REFERENCES "Domaine"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Armee" ADD CONSTRAINT "Armee_commandantId_fkey" FOREIGN KEY ("commandantId") REFERENCES "Personnage"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ArmeeBataille" ADD CONSTRAINT "ArmeeBataille_armeeId_fkey" FOREIGN KEY ("armeeId") REFERENCES "Armee"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ArmeeBataille" ADD CONSTRAINT "ArmeeBataille_batailleId_fkey" FOREIGN KEY ("batailleId") REFERENCES "Bataille"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GuildeBataille" ADD CONSTRAINT "GuildeBataille_guildeId_fkey" FOREIGN KEY ("guildeId") REFERENCES "Guilde"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "GuildeBataille" ADD CONSTRAINT "GuildeBataille_batailleId_fkey" FOREIGN KEY ("batailleId") REFERENCES "Bataille"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CreatureBataille" ADD CONSTRAINT "CreatureBataille_creatureId_fkey" FOREIGN KEY ("creatureId") REFERENCES "Creature"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CreatureBataille" ADD CONSTRAINT "CreatureBataille_batailleId_fkey" FOREIGN KEY ("batailleId") REFERENCES "Bataille"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageEquipement" ADD CONSTRAINT "PersonnageEquipement_personnageId_fkey" FOREIGN KEY ("personnageId") REFERENCES "Personnage"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PersonnageEquipement" ADD CONSTRAINT "PersonnageEquipement_equipementId_fkey" FOREIGN KEY ("equipementId") REFERENCES "Equipement"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RouteSegment" ADD CONSTRAINT "RouteSegment_routeId_fkey" FOREIGN KEY ("routeId") REFERENCES "RouteCommerciale"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RouteSegment" ADD CONSTRAINT "RouteSegment_lieuId_fkey" FOREIGN KEY ("lieuId") REFERENCES "Lieu"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MarchandRoute" ADD CONSTRAINT "MarchandRoute_marchandId_fkey" FOREIGN KEY ("marchandId") REFERENCES "Marchand"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MarchandRoute" ADD CONSTRAINT "MarchandRoute_routeId_fkey" FOREIGN KEY ("routeId") REFERENCES "RouteCommerciale"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Histoire" ADD CONSTRAINT "Histoire_bardeId_fkey" FOREIGN KEY ("bardeId") REFERENCES "Barde"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Inventaire" ADD CONSTRAINT "Inventaire_lieuId_fkey" FOREIGN KEY ("lieuId") REFERENCES "Lieu"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Inventaire" ADD CONSTRAINT "Inventaire_armeeId_fkey" FOREIGN KEY ("armeeId") REFERENCES "Armee"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Inventaire" ADD CONSTRAINT "Inventaire_villageId_fkey" FOREIGN KEY ("villageId") REFERENCES "Village"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RelationDiplomatique" ADD CONSTRAINT "RelationDiplomatique_domaineSourceId_fkey" FOREIGN KEY ("domaineSourceId") REFERENCES "Domaine"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RelationDiplomatique" ADD CONSTRAINT "RelationDiplomatique_domaineCibleId_fkey" FOREIGN KEY ("domaineCibleId") REFERENCES "Domaine"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LoiTerritoire" ADD CONSTRAINT "LoiTerritoire_loiId_fkey" FOREIGN KEY ("loiId") REFERENCES "Loi"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LoiTerritoire" ADD CONSTRAINT "LoiTerritoire_domaineId_fkey" FOREIGN KEY ("domaineId") REFERENCES "Domaine"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
