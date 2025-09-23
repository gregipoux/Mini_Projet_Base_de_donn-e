/*
  Seed script to populate the database with rich example data across all models.
  Run with: pnpm prisma:seed
*/

const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function upsertUnique(model, where, create) {
  return prisma[model].upsert({ where, update: {}, create });
}

async function main() {
  // --- Base lookups ---
  const human = await upsertUnique('race', { libelle: 'Humain' }, { libelle: 'Humain' });
  const elf = await upsertUnique('race', { libelle: 'Elfe' }, { libelle: 'Elfe' });
  const dwarf = await upsertUnique('race', { libelle: 'Nain' }, { libelle: 'Nain' });

  const roleRoi = await upsertUnique('role', { libelle: 'Roi' }, { libelle: 'Roi' });
  const roleGuerier = await upsertUnique('role', { libelle: 'Guerrier' }, { libelle: 'Guerrier' });
  const roleMage = await upsertUnique('role', { libelle: 'Mage' }, { libelle: 'Mage' });

  const ligneeA = await upsertUnique('lignee', { nom: 'Maison Aurelion' }, { nom: 'Maison Aurelion' });
  const ligneeB = await upsertUnique('lignee', { nom: 'Clan Barad' }, { nom: 'Clan Barad' });

  const titreDuc = await upsertUnique('titre', { libelle: 'Duc' }, { libelle: 'Duc' });
  const titreComte = await upsertUnique('titre', { libelle: 'Comte' }, { libelle: 'Comte' });
  const titreArchimage = await upsertUnique('titre', { libelle: 'Archimage' }, { libelle: 'Archimage' });

  const domaineNord = await upsertUnique('domaine', { nom: 'Domaine du Nord' }, {
    nom: 'Domaine du Nord',
    frontieres: 'Montagnes, forêts enneigées',
    richessesOr: '12000.50',
    ressources: 'Bois, fourrures'
  });
  const domaineSud = await upsertUnique('domaine', { nom: 'Domaine du Sud' }, {
    nom: 'Domaine du Sud',
    frontieres: 'Plaines et dunes',
    richessesOr: '8900.00',
    ressources: 'Céréales, épices'
  });

  // --- Personnages ---
  const arthur = await prisma.personnage.upsert({
    where: { id: 1 },
    update: {},
    create: {
      nom: 'Arthur',
      dateNaissance: new Date('0985-03-12'),
      statutVie: 'vivant',
      raceId: human.id,
      ligneeId: ligneeA.id
    }
  });

  const elenya = await prisma.personnage.upsert({
    where: { id: 2 },
    update: {},
    create: {
      nom: 'Elenya',
      dateNaissance: new Date('1001-07-08'),
      statutVie: 'vivant',
      raceId: elf.id,
      ligneeId: ligneeA.id
    }
  });

  const brom = await prisma.personnage.upsert({
    where: { id: 3 },
    update: {},
    create: {
      nom: 'Brom',
      dateNaissance: new Date('0970-11-22'),
      statutVie: 'vivant',
      raceId: dwarf.id,
      ligneeId: ligneeB.id
    }
  });

  // --- Competences ---
  const competenceEpée = await upsertUnique('competence', { nom: 'Maîtrise de l’épée' }, {
    nom: 'Maîtrise de l’épée',
    exigenceFormation: 'Entraînement militaire'
  });
  const competenceArc = await upsertUnique('competence', { nom: 'Tir à l’arc' }, {
    nom: 'Tir à l’arc',
    exigenceFormation: 'Guilde des rangers',
    exigenceRaceId: elf.id
  });
  const competenceForge = await upsertUnique('competence', { nom: 'Forge' }, {
    nom: 'Forge',
    exigenceFormation: 'Apprentissage artisanal'
  });

  // PersonnageCompetence
  await prisma.personnageCompetence.upsert({
    where: { personnageId_competenceId: { personnageId: arthur.id, competenceId: competenceEpée.id } },
    update: {},
    create: { personnageId: arthur.id, competenceId: competenceEpée.id, niveau: 5 }
  });
  await prisma.personnageCompetence.upsert({
    where: { personnageId_competenceId: { personnageId: elenya.id, competenceId: competenceArc.id } },
    update: {},
    create: { personnageId: elenya.id, competenceId: competenceArc.id, niveau: 6 }
  });
  await prisma.personnageCompetence.upsert({
    where: { personnageId_competenceId: { personnageId: brom.id, competenceId: competenceForge.id } },
    update: {},
    create: { personnageId: brom.id, competenceId: competenceForge.id, niveau: 7 }
  });

  // Roles m2m via PersonnageRole
  await prisma.personnageRole.upsert({
    where: { personnageId_roleId: { personnageId: arthur.id, roleId: roleRoi.id } },
    update: {},
    create: { personnageId: arthur.id, roleId: roleRoi.id }
  });
  await prisma.personnageRole.upsert({
    where: { personnageId_roleId: { personnageId: elenya.id, roleId: roleMage.id } },
    update: {},
    create: { personnageId: elenya.id, roleId: roleMage.id }
  });
  await prisma.personnageRole.upsert({
    where: { personnageId_roleId: { personnageId: brom.id, roleId: roleGuerier.id } },
    update: {},
    create: { personnageId: brom.id, roleId: roleGuerier.id }
  });

  // Titres attribués
  await prisma.personnageTitre.createMany({
    data: [
      { personnageId: arthur.id, titreId: titreDuc.id, domaineId: domaineNord.id, estActif: true, dateDebut: new Date('1020-01-01') },
      { personnageId: elenya.id, titreId: titreArchimage.id, estActif: true, dateDebut: new Date('1025-05-01') },
      { personnageId: brom.id, titreId: titreComte.id, domaineId: domaineSud.id, estActif: false, dateDebut: new Date('1010-03-01'), dateFin: new Date('1020-03-01') }
    ],
    skipDuplicates: true
  });

  // Villages
  const villageNordheim = await upsertUnique('village', { nom: 'Nordheim' }, {
    nom: 'Nordheim',
    localisation: 'Vallée glacée',
    population: 1200,
    ressourcePrincipale: 'Bois',
    domaineId: domaineNord.id
  });
  const villageSolara = await upsertUnique('village', { nom: 'Solara' }, {
    nom: 'Solara',
    localisation: 'Oasis du Sud',
    population: 2200,
    ressourcePrincipale: 'Épices',
    domaineId: domaineSud.id
  });

  // Guildes et membres
  const guildeRangers = await upsertUnique('guilde', { nom: 'Rangers d’Argent' }, { nom: 'Rangers d’Argent', specialite: 'Éclaireurs' });
  const guildeMages = await upsertUnique('guilde', { nom: 'Conclave des Mages' }, { nom: 'Conclave des Mages', specialite: 'Magie arcane' });

  await prisma.guildeMembre.upsert({
    where: { personnageId_guildeId: { personnageId: elenya.id, guildeId: guildeMages.id } },
    update: {},
    create: { personnageId: elenya.id, guildeId: guildeMages.id, dateEntree: new Date('1020-06-01') }
  });
  await prisma.guildeMembre.upsert({
    where: { personnageId_guildeId: { personnageId: arthur.id, guildeId: guildeRangers.id } },
    update: {},
    create: { personnageId: arthur.id, guildeId: guildeRangers.id, dateEntree: new Date('1015-02-10') }
  });

  // Créatures
  const dragon = await upsertUnique('creature', { espece: 'Dragon' }, { espece: 'Dragon', forces: 'Feu', faiblesses: 'Glace', dangerosite: 'Extrême' });
  const troll = await upsertUnique('creature', { espece: 'Troll' }, { espece: 'Troll', forces: 'Force brute', faiblesses: 'Feu', dangerosite: 'Moyenne' });

  // Écoles de magie et sorts
  const ecoleFeu = await upsertUnique('ecoleMagie', { nom: 'École du Feu' }, { nom: 'École du Feu' });
  const ecoleGlace = await upsertUnique('ecoleMagie', { nom: 'École de la Glace' }, { nom: 'École de la Glace' });

  await upsertUnique('sort', { nom: 'Boule de feu' }, { nom: 'Boule de feu', element: 'Feu', coutMana: 20, niveauRequis: 'Adept', ecoleId: ecoleFeu.id });
  await upsertUnique('sort', { nom: 'Morsure du givre' }, { nom: 'Morsure du givre', element: 'Glace', coutMana: 15, niveauRequis: 'Apprenti', ecoleId: ecoleGlace.id });

  // Maladies
  const peste = await upsertUnique('maladie', { nom: 'Peste cendrée' }, { nom: 'Peste cendrée', effets: 'Fièvre, toux', contagion: 'Aérienne', remede: 'Élixir rare', tauxMortalite: 0.35 });
  const rhume = await upsertUnique('maladie', { nom: 'Rhume des steppes' }, { nom: 'Rhume des steppes', effets: 'Éternuements', contagion: 'Contact', remede: 'Repos', tauxMortalite: 0.01 });

  await prisma.personnageMaladie.upsert({
    where: { personnageId_maladieId_dateDebut: { personnageId: arthur.id, maladieId: rhume.id, dateDebut: new Date('1026-01-15') } },
    update: {},
    create: { personnageId: arthur.id, maladieId: rhume.id, dateDebut: new Date('1026-01-15'), dateFin: new Date('1026-01-22'), issue: 'Guéri' }
  });

  // Armées
  const armeeNord = await prisma.armee.upsert({
    where: { id: 1 },
    update: {},
    create: {
      nom: 'Garde du Nord',
      effectif: 800,
      composition: 'Fantassins, archers',
      moral: 'Haut',
      etatApprovisionnement: 'Bon',
      domaineId: domaineNord.id,
      commandantId: arthur.id
    }
  });
  const armeeSud = await prisma.armee.upsert({
    where: { id: 2 },
    update: {},
    create: {
      nom: 'Lanciers du Sud',
      effectif: 600,
      composition: 'Lanciers, cavalerie légère',
      moral: 'Moyen',
      etatApprovisionnement: 'Moyen',
      domaineId: domaineSud.id,
      commandantId: brom.id
    }
  });

  // Bataille, participations
  const batailleGlaives = await prisma.bataille.upsert({
    where: { id: 1 },
    update: {},
    create: { nom: 'Bataille des Glaives', dateBataille: new Date('1024-09-10'), lieu: 'Col du Loup', pertesA: 120, pertesB: 200, vainqueurTexte: 'Garde du Nord' }
  });

  await prisma.armeeBataille.upsert({
    where: { armeeId_batailleId: { armeeId: armeeNord.id, batailleId: batailleGlaives.id } },
    update: {},
    create: { armeeId: armeeNord.id, batailleId: batailleGlaives.id, cote: 'A', pertes: 120 }
  });
  await prisma.armeeBataille.upsert({
    where: { armeeId_batailleId: { armeeId: armeeSud.id, batailleId: batailleGlaives.id } },
    update: {},
    create: { armeeId: armeeSud.id, batailleId: batailleGlaives.id, cote: 'B', pertes: 200 }
  });

  // Guilde participation à bataille
  await prisma.guildeBataille.upsert({
    where: { guildeId_batailleId: { guildeId: guildeRangers.id, batailleId: batailleGlaives.id } },
    update: {},
    create: { guildeId: guildeRangers.id, batailleId: batailleGlaives.id, role: 'Éclaireurs' }
  });

  // Créatures dans bataille
  await prisma.creatureBataille.upsert({
    where: { creatureId_batailleId: { creatureId: dragon.id, batailleId: batailleGlaives.id } },
    update: {},
    create: { creatureId: dragon.id, batailleId: batailleGlaives.id, nombre: 1, role: 'Menace majeure' }
  });

  // Équipements
  const epeeLeg = await upsertUnique('equipement', { nom: 'Épée légendaire' }, { nom: 'Épée légendaire', typeEquipement: 'Arme', materiaux: 'Acier runique', rarete: 'Légendaire', enchantements: '+10 ATQ', affiniteRequise: 'Feu' });
  const arcVif = await upsertUnique('equipement', { nom: 'Arc vif-argent' }, { nom: 'Arc vif-argent', typeEquipement: 'Arme', materiaux: 'Bois elfique', rarete: 'Rare', enchantements: '+7 DEX' });

  await prisma.personnageEquipement.upsert({
    where: { personnageId_equipementId: { personnageId: arthur.id, equipementId: epeeLeg.id } },
    update: {},
    create: { personnageId: arthur.id, equipementId: epeeLeg.id, dateAcquisition: new Date('1023-02-02'), source: 'Quête' }
  });
  await prisma.personnageEquipement.upsert({
    where: { personnageId_equipementId: { personnageId: elenya.id, equipementId: arcVif.id } },
    update: {},
    create: { personnageId: elenya.id, equipementId: arcVif.id, dateAcquisition: new Date('1024-04-04'), source: 'Récompense' }
  });

  // Marchands, routes, lieux
  const marchandOrin = await upsertUnique('marchand', { nom: 'Orin le Marchand' }, { nom: 'Orin le Marchand' });
  const marchandSila = await upsertUnique('marchand', { nom: 'Sila des Sables' }, { nom: 'Sila des Sables' });

  const routeNordSud = await upsertUnique('routeCommerciale', { nom: 'Route Nord-Sud' }, { nom: 'Route Nord-Sud', securite: 'Moyenne', saison: 'Été' });
  const routeDesDunes = await upsertUnique('routeCommerciale', { nom: 'Route des Dunes' }, { nom: 'Route des Dunes', securite: 'Basse', saison: 'Automne' });

  const lieuColLoup = await upsertUnique('lieu', { nom: 'Col du Loup' }, { nom: 'Col du Loup', typeLieu: 'Col', localisation: 'Chaîne du Nord' });
  const lieuOasis = await upsertUnique('lieu', { nom: 'Grande Oasis' }, { nom: 'Grande Oasis', typeLieu: 'Oasis', localisation: 'Désert du Sud' });
  const lieuCarrefour = await upsertUnique('lieu', { nom: 'Carrefour Royal' }, { nom: 'Carrefour Royal', typeLieu: 'Carrefour', localisation: 'Plaines centrales' });

  await prisma.routeSegment.upsert({
    where: { routeId_lieuId_ordre: { routeId: routeNordSud.id, lieuId: lieuColLoup.id, ordre: 1 } },
    update: {},
    create: { routeId: routeNordSud.id, lieuId: lieuColLoup.id, ordre: 1 }
  });
  await prisma.routeSegment.upsert({
    where: { routeId_lieuId_ordre: { routeId: routeNordSud.id, lieuId: lieuCarrefour.id, ordre: 2 } },
    update: {},
    create: { routeId: routeNordSud.id, lieuId: lieuCarrefour.id, ordre: 2 }
  });
  await prisma.routeSegment.upsert({
    where: { routeId_lieuId_ordre: { routeId: routeDesDunes.id, lieuId: lieuCarrefour.id, ordre: 1 } },
    update: {},
    create: { routeId: routeDesDunes.id, lieuId: lieuCarrefour.id, ordre: 1 }
  });
  await prisma.routeSegment.upsert({
    where: { routeId_lieuId_ordre: { routeId: routeDesDunes.id, lieuId: lieuOasis.id, ordre: 2 } },
    update: {},
    create: { routeId: routeDesDunes.id, lieuId: lieuOasis.id, ordre: 2 }
  });

  await prisma.marchandRoute.upsert({
    where: { marchandId_routeId: { marchandId: marchandOrin.id, routeId: routeNordSud.id } },
    update: {},
    create: { marchandId: marchandOrin.id, routeId: routeNordSud.id, biens: 'Fourrures, outils', taxes: 0.05 }
  });
  await prisma.marchandRoute.upsert({
    where: { marchandId_routeId: { marchandId: marchandSila.id, routeId: routeDesDunes.id } },
    update: {},
    create: { marchandId: marchandSila.id, routeId: routeDesDunes.id, biens: 'Épices, soies', taxes: 0.07 }
  });

  // Bardes et histoires
  const bardeTaliesin = await upsertUnique('barde', { nom: 'Taliesin' }, { nom: 'Taliesin' });
  await prisma.histoire.createMany({
    data: [
      { titre: 'La Chanson du Nord', typeEvenement: 'Épopée', description: 'Exploit de la Garde du Nord', dateEvenement: new Date('1024-10-01'), bardeId: bardeTaliesin.id },
      { titre: 'L’Étreinte des Dunes', typeEvenement: 'Ballade', description: 'Voyage de Sila', dateEvenement: new Date('1025-03-11'), bardeId: bardeTaliesin.id }
    ],
    skipDuplicates: true
  });

  // Inventaires (lieu, armée, village)
  await prisma.inventaire.createMany({
    data: [
      { typeRessource: 'Vivres', stock: 300, seuilAlerte: 100, dateMesure: new Date('1026-02-01'), armeeId: armeeNord.id },
      { typeRessource: 'Eau', stock: 120, seuilAlerte: 50, dateMesure: new Date('1026-02-03'), lieuId: lieuOasis.id },
      { typeRessource: 'Grain', stock: 800, seuilAlerte: 200, dateMesure: new Date('1026-02-05'), villageId: villageSolara.id }
    ],
    skipDuplicates: true
  });

  // Relations diplomatiques
  await prisma.relationDiplomatique.createMany({
    data: [
      { typeRelation: 'Alliance', conditions: 'Défense mutuelle', dateSignature: new Date('1021-01-01'), echeance: '1026', domaineSourceId: domaineNord.id, domaineCibleId: domaineSud.id },
      { typeRelation: 'Traité commercial', conditions: 'Baisse des taxes', dateSignature: new Date('1022-06-01'), echeance: '1027', domaineSourceId: domaineSud.id, domaineCibleId: domaineNord.id }
    ],
    skipDuplicates: true
  });

  // Lois et rattachements
  const loiChasse = await upsertUnique('loi', { libelle: 'Régulation de la chasse' }, { libelle: 'Régulation de la chasse', effet: 'Limite saisonnière' });
  const loiCommerce = await upsertUnique('loi', { libelle: 'Code du commerce' }, { libelle: 'Code du commerce', effet: 'Taxes harmonisées' });

  await prisma.loiTerritoire.upsert({
    where: { loiId_domaineId: { loiId: loiChasse.id, domaineId: domaineNord.id } },
    update: {},
    create: { loiId: loiChasse.id, domaineId: domaineNord.id }
  });
  await prisma.loiTerritoire.upsert({
    where: { loiId_domaineId: { loiId: loiCommerce.id, domaineId: domaineSud.id } },
    update: {},
    create: { loiId: loiCommerce.id, domaineId: domaineSud.id }
  });

  console.log('Seed completed successfully.');
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });


