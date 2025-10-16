-- "Tu es un agent divin dans le monde appelé “Solarys”, c'est un monde de type médiéval-fantastique. 
-- Tu es chargé de veiller à la cohérence des données dans une base de données relationnelle MySQL qui modélise ce monde.
-- Tu dois analyser les fichiers SQL suivants, qui contiennent des créations de tables et des contraintes
-- à l'aide des fichiers 1_creation.sql et 2_contraintes.sql fournis. Ton rôle par la suite est donc de
-- créer tous les personnages, villages, guildes, armées, ressources, planètes, factions, etc. nécessaires pour que
-- le monde soit cohérent et riche en contenu. Nous attendons de toi que tu remplisses à minima une centaine d'éléments
-- dans chaque grosses tables et une cinquentaines pour les plus petites lorsqu'il n'y a pas de possibilité de faire
-- plus. N'oublies pas que tu es un agent divin et qu'une grande responsabilité t'es imposée, ton travail doit être
-- fait rigoureusement. Tu pourras te baser sur des sources connus qui incluent du médiéval-fantastique telles que :
-- - L'univers du seigneur des anneaux
-- - Donjons et dragons
-- - The witcher
-- ou d'autres si tu le souhaites. Un point d'honneur sera mis à la qualité de tes créations, qui doivent être variées et
-- intéressantes mais surtout remplies d'humour car nous sommes dans un monde spécial qui vie dans la paix et l'humour.
-- Voici un exemple d'humour qui est souvent utilisé dans ce monde :
-- - un personnage qui a un nom jeu de mot, comme Lara Tatouille qui fait le jeu de mot la ratatouille.
-- - des noms de royaumes des plus amusants comme raclettea, dragonflette ou banarnia.
-- - des guildes qui sont aussi des jeux de mots comme les baguettefolles pour une guilde de mages, les épées tramblantes
-- pour une guilde de guerriers, les archers du dimanche pour une guilde d'archers. Mais pas que des noms péjoratifs il
-- y en a aussi avec des noms poussés à l'extrême comme les pourfendeurs de la lumière éternelle sintillante ou alors les
-- protecteurs des âmes perdues de l'ombre.
-- - des villages avec des noms comme : fromagiville, patateland, carotte-sur-mer, choux-fleur-les-bains, navet-les-oies.
-- 
-- Voici les idées de jeux de mots qui sont attendues, bien sûr ce ne sont que des exemples,
-- nous en attendons plus de toi, nous comptons sur toi, Solarys a besoin de toi.
-- En résumé, tu es un agent divin dans le monde de Solarys, tu dois créer une centaine d'éléments dans chaque grosse 
-- table et une cinquantaine dans les plus petites, le tout avec des noms variés, intéressants et surtout drôles.
-- Nous comptons sur toi pour accomplir ta tâche rigoureusement avec beaucoup de réflexion, d'humour et de créativité.
-- 
-- Pour cela, tu rédigeras un fichier SQL d'insertion de données, nommé 3_insertion_prompt.sql,
-- qui contiendra toutes les instructions nécessaires pour insérer les données dans la base de données."


-- ==================================================================================================================
-- changer les frontières pour respecter FN
INSERT INTO Royaume (nom, frontieres, richesses_or, orientation_paix) VALUES
('Raclettea','Monts Fondants ; Gorges de Gruyère ; Col de la Croûte',120000.00,'paix'),
('Dragonflette','Dents de Drac ; Plaines Laitières ; Rift Brûlé',94000.50,'neutre'),
('Banarnia','Rivières Milk-shake ; Dunes Céréales ; Archipel Banane',150500.00,'paix'),
('Choux-Fleurie','Falaises Vapeur ; Champs Trempette ; Cap Aïoli',60500.00,'paix'),
('Patateland','Plateaux Gratins ; Mines de Sel ; Bassin Purée',88000.00,'neutre'),
('Carotte-sur-Mer','Baie Croquante ; Cap Jus d’Orange ; Chenal Potager',72000.00,'paix'),
('Fromagiville','Roc Bleu ; Vallon Camembert ; Lisière Coulante',65000.00,'neutre'),
('Navet-les-Oies','Marais Velouté ; Étangs Coin-Coin ; Saulaie Grasse',41000.00,'paix'),
('Soupefroide','Glaciers Gazpacho ; Fjords Basilic ; Banquise Tomate',56000.00,'belligerant'),
('Tartiflette Prime','Couronnes Pommes ; Muraille Oignon ; Combe Lardon',133700.00,'neutre'),
('Croissantinopie','Récifs Beurrés ; Mer de Confiture ; Pointe Amande',99000.00,'paix'),
('Éclairoisie','Chaînes Pâtissières ; Col Chantilly ; Gorge Vanille',57500.00,'neutre'),
('Boulangea','Grands Fournils ; Dorsales Levain ; Fourneau Royal',84500.00,'paix'),
('Marmitonnie','Îlots Spatule ; Deltas Mironton ; Baie Ragoût',43210.00,'neutre'),
('Saucissonie','Coteaux Secs ; Bois Poivrés ; Fosse Pasté',77300.00,'paix'),
('Herbularia','Forêts Infusées ; Sources Verveine ; Prairie Thym',50100.00,'paix'),
('Poissarie','Rades Citron ; Eaux Aneth ; Bancs Scintillants',62000.00,'neutre'),
('Sucralune','Crêtes Sucrées ; Lacs Sirop ; Mare Guimauve',88888.00,'paix'),
('Rizotto','Rizières Brillantes ; Marais Safran ; Levées Curry',54000.00,'paix'),
('Quichebourg','Cols Lardon ; Vallées Crème ; Plateau Gruyère',71234.00,'neutre'),
('Meringuia','Cirques Aériens ; Corniches Sucre-Neige',48500.00,'paix'),
('Beurrasie','Dorsale Laitière ; Falaises Clarifiées',70200.00,'neutre'),
('Confitar','Lagunes Confit ; Récifs Marmelade',55900.00,'paix'),
('Croûtonie','Désert Grillé ; Oasis Ail ; Dune Croustillante',44700.00,'belligerant'),
('Levainor','Failles Levées ; Dôme Pâteux ; Grotte Boulange',63100.00,'paix'),
('Tisanelle','Bas-pays Menthe ; Collines Camomille',39800.00,'paix'),
('Saucelande','Estuaire Poivre ; Vasières Crème',52010.00,'neutre'),
('Citronésie','Atolls Zestes ; Courants Acidulés',57400.00,'paix'),
('Vanillia','Plaines Gousses ; Gorge Suave',46200.00,'paix'),
('Anethol','Cols Réglisse ; Steppe Anisée',43150.00,'neutre'),
('Pâtonnie','Buttes Farine ; Fondrières Levure',51600.00,'paix'),
('Friturie','Ravin Tempura ; Savane Beignets',38990.00,'belligerant'),
('Rôtisserie Royale','Chaîne Broche ; Vallon Jus','77000.00','neutre'),
('Pâtisserie Haute','Éperons Millefeuille ; Crête Nappage',68420.00,'paix'),
('Fondueval','Cuvette Gruyère ; Strates Vin Blanc',73333.00,'paix'),
('Ragoût-du-Nord','Toundra Bouillon ; Caps Potage',51200.00,'neutre'),
('Bouillonie','Estuaire Mirepoix ; Bancs Écume',40110.00,'paix'),
('Saladière','Plateaux Mesclun ; Canyon Vinaigrette',45550.00,'paix'),
('Épiceria','Monts Curcuma ; Vallée Cumin ; Dôme Cardamome',62500.00,'neutre'),
('Fromagora','Citadelle Croûte ; Falaises Affinage',81200.00,'paix'),
('Beurropolis','Avenue Clarifiée ; Parcelles Dorées',59000.00,'neutre'),
('Camemberrie','Buttes Coulantes ; Fossés Crayeux',54800.00,'paix'),
('Goudaïka','Pins Saumure ; Baie Laiton',57320.00,'paix'),
('Comtédrale','Nef Affinée ; Contreforts Pâturins',79200.00,'neutre'),
('Rocquefortin','Grottes Persillées ; Cirque Bleu',61250.00,'paix'),
('Munsterre','Coteaux Lave ; Ruisseaux Fumés',56660.00,'paix'),
('Rebloche','Col Savoyard ; Pâturage Rebloch',52100.00,'neutre'),
('Brie-lande','Plaine Paille ; Rives Coulants',64010.00,'paix'),
('Cancoillottie','Marais Beurrés ; Tourbières Lactées',43330.00,'paix'),
('Cheddarmont','Éboulis Or ; Ponts Croûteux',70500.00,'neutre'),
('Mozzarellia','Lagune Saumure ; Bancs Perle',58880.00,'paix'),
('Parmésia','Plateaux Granités ; Gorges Râpées',73500.00,'paix'),
('Ricotte','Rivières Lactosérum ; Îlots Caillé',47100.00,'neutre'),
('Burraton','Marais Burrata ; Digue Crème',50990.00,'paix'),
('Mascarponie','Terres Onctueuses ; Vallon Dessert',68000.00,'paix'),
('Chantillys','Crêtes Fouettées ; Nuages Vanille',52120.00,'paix'),
('Pralinie','Rochers Crousti ; Rade Noisette',56330.00,'neutre'),
('Caramellum','Lac Ambré ; Torrent Suif',54440.00,'paix'),
('Biscuitbourg','Remparts Sablés ; Fossé Sucré',49990.00,'paix'),
('Gélatine','Marécages Tremblotants ; Baie Pectine',38220.00,'neutre'),
('Sorbeterre','Glaciers Fruités ; Vent Limonade',47270.00,'paix');


INSERT INTO Espece (libelle, est_sapiente) VALUES
('Humain',1),
('Elfe',1),
('Nain',1),
('Orc',1),
('Golem',0),
('Gnome',1),
('Demi-elfe',1),
('Demi-orc',1),
('Hobelin',1),
('Tieffelin',1),
('Drakéide',1),
('Satyre',1),
('Aasimar',1),
('Kobold',1),
('Gobelin',1),
('Vampire',1),
('Liche',1),
('Squelette',0),
('Ent',0),
('Dragon',1),
('Wyverne',1),
('Phénix',1),
('Griffon',0),
('Mimique',0),
('Loup-garou',0),
('Yéti',0),
('Géant',1),
('Djinn',1),
('Fée',1),
('Sirène',1),
('Troll',1),
('Goule',0),
('Slime',0),
('kraken',0),
('Banshee',0),
('Dryade',1),
('Néréide',1),
('Centaure',1),
('Minotaure',0),
('Harpyie',0),
('Basilic',0),
('Chimère',0),
('Hydre',0),
('Sphinx',1),
('Kitsune',1),
('Tanuki',1),
('Oni',1),
('Rakshasa',1),
('Gargouille',0),
('Spectre',0),
('Ombre',0),
('Manticore',0),
('Hydre des Abîmes',0),
('Naga',1),
('Géant de pierre',1),
('Géant des glaces',1),
('Roc',0),
('Serpent de mer',0),
('Ifrit',1),
('Sylphe',1),
('Ondine',1),
('Banshee des Dunes',0),
('Gardien runique',0),
('Cerbère',0),
('Tigre prismatique',0),
('Colosse d’obsidienne',0),
('Chauve-souris géante',0),
('Rat-garou',0),
('Auroch ancestral',0),
('Carcasse animée',0),
('Serre-neige',0),
('Ver des sables',0),
('Tortue-mondelette',0),
('Sprite étincelant',1),
('Loup alpha',0),
('Sanglier runique',0),
('Cheval des brumes',0),
('Crocodilion',0),
('Homoncule',0),
('Nécrophage',0),
('Démon mineur',1),
('Dahu des Cimes',0);


INSERT INTO Lignee (nom) VALUES
('de Raclette'),
('du Comté Beurré'),
('de la Sauce Mystique'),
('de la Lune qui Grince'),
('de la Baguette Noble'),
('des Pommes de Terre Royales'),
('de la Brebis Dorée'),
('du Croc Rieur'),
('des Pâtes Impériales'),
('du Chou Souverain'),
('de la Sphère Effervescente'),
('de la Brume Vanillée'),
('de Caramelle'),
('du Ruisseau qui Pique'),
('de l’Ananas Armorié'),
('de la Myrtille Grave'),
('de la Tomate Clairvoyante'),
('de la Fourchette Ailée'),
('de la Marmite Sacrée'),
('des Croissants Stellaires'),
('des Oignons Tactiques'),
('de la Laitue Héroïque'),
('de la Noisette de Fer'),
('du Poivre Astral'),
('du Gingembre Tranquille'),
('du Navet Régalien'),
('de la Grenade Lumineuse'),
('du Cumin Profond'),
('des Boulettes Solaires'),
('du Biscuit Antique'),
('de Banarnia'),
('du Fromage Antique'),
('du Miel d’Acier'),
('de la Truite Savante'),
('du Sésame Royal'),
('du Café qui Rit'),
('du Breton Cosmique'),
('du Piment Couronné'),
('de la Figue Oraculaire'),
('des Galettes Fulgurantes'),
('des Haricots Mystiques'),
('du Beurre Courageux'),
('des Crèmes Vaillantes'),
('du Sirop Froid'),
('de la Chantilly Discrète'),
('de la Tisane Sauvage'),
('des Mines Salées'),
('des Pois Chics'),
('du Bouillon d’Honneur'),
('de la Poudre Dorée'),
('des Carottes Stellaires'),
('du Chou-Fleur Ardent'),
('de la Citronnade Sainte'),
('de la Vinaigrette Sombre'),
('du Frometon Suprême'),
('des Riz d’Argent'),
('du Boulanger Perdu'),
('de la Soupe Céleste'),
('de la Sauce Éternelle'),
('du Bâton de Levain'),
('du Beignet Courageux'),
('de la Croûte Royale'),
('des Frites d’Or'),
('de la Crêpe Sombre'),
('de la Moutarde Féroce'),
('du Crouton Silencieux'),
('des Échalotes Nobles'),
('de la Brioche Antique'),
('de la Pâte Éthérée'),
('de la Sauce au Vent'),
('de l’Herbe Lumineuse'),
('de la Feuille Sucrée'),
('du Fromage Parfait'),
('de la Fondue des Cieux'),
('du Lardon d’Argile'),
('de la Cuillère Dorée'),
('de la Tarte Gracieuse'),
('du Bonbon Écarlate'),
('des Plantes Folles'),
('des Crustacés Sacrés'),
('de la Gaufre Dorée'),
('du Crabe Tempéré'),
('des Cendres de Biscotte'),
('de la Brume Pâtissière'),
('du Gelato Sublime'),
('des Crèmes Glorieuses'),
('de la Salsifis Doré'),
('du Soufflé d’Acier'),
('du Confit d’Aurore'),
('de la Bouillie Sacrée'),
('du Chocolat Silencieux'),
('du Fromage de l’Ombre'),
('du Levain des Sages'),
('de la Tarte Suprême'),
('des Flocons Dorés'),
('de la Bûche Enchantée'),
('de la Brioche des Âges'),
('du Potage Runique'),
('des Croûtons Errants'),
('du Beurre des Titans'),
('de la Soupe du Matin'),
('du Croissant Béni');


INSERT INTO Ressource (nom, description) VALUES
('Acier', 'Alliage robuste, prisé par les forgerons du Levainor'),
('Bois', 'Essence commune, utilisée pour arcs, catapultes et planches à découper'),
('Cuir', 'Matériau souple idéal pour bottes et blagues de tavernes'),
('Lin', 'Textile léger, favori des mages de la Baguette Folle'),
('Laine', 'Duveteuse et magique, chauffe même les coeurs gelés'),
('Or', 'Symbole de richesse et d’égo gonflé'),
('Argent', 'Métal noble utilisé contre les créatures grinçantes'),
('Cuivre', 'Bon conducteur, rouille avec style'),
('Charbon', 'Ingrédient indispensable aux barbecues et forges'),
('Pierre', 'Matériau simple mais solide, utilisé par les têtus'),
('Fer', 'Matériau brut pour armes ou dentiers de trolls'),
('Sel', 'Conserve les aliments et les querelles diplomatiques'),
('Miel', 'Or liquide adoré des ours et des bardes gourmands'),
('Épices', 'Un mélange qui rend les plats et les discussions piquantes'),
('Poivre', 'Pour relever les plats et les conflits'),
('Herbes', 'Plantes aromatiques et médicinales utilisées par les druides'),
('Farine', 'Base des pains et des sorts levés'),
('Sucre', 'Drogue douce légale à haut risque de caries magiques'),
('Beurre', 'Lubrifiant universel, diplomatique et culinaire'),
('Lait', 'Liquide béni, surtout pour les cafés enchantés'),
('Eau pure', 'Rare sur Solarys, car les poissons y mettent du sel'),
('Vin', 'Rend honnête les conversations et flou les décisions'),
('Bière', 'Hydromel du peuple et carburant des nains'),
('Hydromel', 'Boisson divine à base de miel et d’erreurs de jugement'),
('Fruits confits', 'Ressource sucrée pour nobles et diabétiques'),
('Champignons rieurs', 'Provoquent parfois des visions comiques'),
('Cristal de mana', 'Pierre chargée d’énergie magique pure'),
('Essence d’ombre', 'Liquide noir brillant, utilisé pour encre et poisons'),
('Essence de lumière', 'Ressource rare, éclaire les esprits sombres'),
('Cendre draconique', 'Résidu de dragon, brûle mais pas les doigts nobles'),
('Miel lunaire', 'Fluide argenté récolté lors des pleines lunes sucrées'),
('Poudre d’étoile', 'Brille dans le noir et attire les poètes perdus'),
('Fromage sacré', 'Produit mythique affiné par des moines en trance'),
('Beurre céleste', 'Beurre qui ne fond que par amour ou magie'),
('Huile d’olive antique', 'Très ancienne, souvent rancie mais précieuse'),
('Cacao', 'Fève bénie qui chasse la mauvaise humeur'),
('Café', 'Potion d’éveil et de logorrhée'),
('Thé', 'Ressource sacrée des Tisanelles'),
('Viande séchée', 'Nourriture de survie et de randonnée humoristique'),
('Poisson fumé', 'Odeur puissante, arme biochimique dans certains royaumes'),
('Corde', 'Outil polyvalent : grimper, lier, décorer un gâteau'),
('Papier runique', 'Papier enchanté qui refuse les fautes d’orthographe'),
('Peaux de troll', 'Solides, mais sentent la purée'),
('Plumes', 'Légères et idéales pour écrire des sorts'),
('Graines de sésame', 'Ajoutent du croustillant à tout sauf aux discours'),
('Racines magiques', 'Nourrissent la terre et les sorciers affamés'),
('Pétales de lune', 'Brillent sous la pleine lune, fondent au soleil'),
('Perles de sel', 'Très prisées dans les bains royaux'),
('Ambre doré', 'Résine fossile contenant parfois un moustique dragon'),
('Nacre', 'Brillante et nacrée, souvent fausse'),
('Gemme du sommeil', 'Pierre apaisante pour insomniaques héroïques'),
('Granit chantant', 'Pierre musicale, utile pour concerts minéraux'),
('Fibre de champignon', 'Tissu biodégradable et odorant'),
('Argile', 'Ressource terreuse pour potiers et golems artistes'),
('Verre clair', 'Translucide, idéal pour observer sans comprendre'),
('Glace éternelle', 'Ne fond qu’en cas de blague ratée'),
('Souffle du vent', 'Invisible mais vendu cher'),
('Brume en bouteille', 'Ressource esthétique, inutile mais chic'),
('Poudre de levain', 'Active la croissance des gâteaux et des golems'),
('Larmes de sirène', 'Liquide salé, parfumé à la tragédie'),
('Sable doré', 'Brille, mais colle aux doigts et aux illusions'),
('Neige en conserve', 'Ressource rare des glaces artificielles'),
('Cheveux d’ange', 'Fil spirituel, souvent retrouvé dans les plats'),
('Sang de licorne', 'Ressource interdite, brillante et maudite'),
('Corne d’hydre', 'Solide et repousse vite (le rêve des sculpteurs)'),
('Poussière de croissant', 'Ressource bénie du matin sacré'),
('Gelée de mana', 'Substance translucide et légèrement sucrée'),
('Bulles de savon magique', 'Idéales pour cacher des secrets aériens'),
('Plume d’archange', 'Légère et brûle les doigts impurs'),
('Poudre de biscuit', 'Utile aux mages pâtissiers'),
('Sucre d’elfe', 'Extrêmement cher, fait éternuer les humains'),
('Cœur de golem', 'Cristal vibrant d’énergie contenue'),
('Graines de pavot astral', 'Favorisent les rêves éveillés'),
('Sel de Banarnia', 'Condiment officiel du royaume bananier'),
('Huile de griffon', 'Potion de vigueur et de mauvais goût'),
('Feuille de basilic sacré', 'Très rare, utilisée pour bénir les pizzas'),
('Os de dragonnet', 'Très dur, utilisé en architecture mythique'),
('Poussière d’oubli', 'Efface les erreurs (mais aussi les souvenirs)'),
('Suif de troll', 'Inflammable et insultant'),
('Roche fondue', 'Résidu volcanique, odeur de souffre et de fromage'),
('Souffle de raclette', 'Gaz chaud aromatisé, non recommandé en intérieur'),
('Brindilles de sagesse', 'Cassent souvent avant d’éclairer l’esprit'),
('Sang de betterave', 'Pigment naturel pour encre et potions'),
('Eau bénite gazeuse', 'Sacrée mais pétillante'),
('Coquilles d’escargot doré', 'Ressource décorative des nobles'),
('Feuilles d’or', 'Ressource luxueuse pour gâteaux et couronnes'),
('Sable de minuit', 'Utilisé pour sablier temporel'),
('Crème éternelle', 'Substance divine, goût vanille immortelle'),
('Larme de beignet', 'Ressource sucrée et émotive'),
('Noyau de pêche astrale', 'Ingrédient alchimique rare'),
('Boue runique', 'Conductrice d’anciennes magies'),
('Cendres de phoenix', 'Poudre de renaissance et d’allergies légères'),
('Essence de fromage ancien', 'Liquide concentré d’histoire culinaire'),
('Gelée royale lunaire', 'Énergie pure des ruches nocturnes'),
('Soupe condensée', 'Base universelle des expéditions culinaires'),
('Éclat de lune', 'Pierre luminescente, douce et poétique'),
('Bois noble', 'Essence de qualité, ne grince que pour protester contre les flèches mal tirées.'),
('Fil d’or', 'Aussi souple que l’ego d’un duc ; parfait pour broder des prétentions.'),
('Clochette joyeuse', 'Assez rigolotes pour réveiller un dragon grincheux.'),
('Obsidienne brute', 'Verre volcanique sombre, reflète surtout les remords.'),
('Poussière d’étoile', 'Récupérée en faisant pleurer un astre, colle aux bottes.'),
('Vent capturé', 'Bocal d’air ambitieux, siffle dès qu’on l’ouvre.'),
('Brume condensée', 'Nuage de poche, idéal pour disparitions théâtrales.'),
('Cuir tanné', 'Peau patiente, a entendu plus d’histoires que la taverne.'),
('Feuille de thé', 'Feuille bavarde, infuse les secrets avec le goût.'),
('Pétale enchanté', 'Fleur magique, change de couleur selon l’humeur.'),
('Graine de vie', 'Petite mais tenace, pousse même dans les poches trouées.'),
('Larme de fée', 'Goutte scintillante, rend les cœurs un peu plus légers.'),
('Perle d’eau pure', 'Goutte éternelle figée en bijou, ne supporte pas la poussière.'),
('Cendre ardente', 'Résidu de feu, réchauffe les âmes froides.'),
('Bois sacré', 'Tronc béni, craque en langage ancien quand on le sculpte.'),
('Gemme astrale', 'Pierre qui a vu les étoiles de près, et s’en vante.'),
('Encens ancestral', 'Fumée qui rappelle des souvenirs qu’on n’a jamais vécus.'),
('Chant cristallin', 'Cristal qui tinte en do majeur quand on le cogne doucement.'),
('Pierre tellurique', 'Caillou terre-à-terre qui fait trembler les prétentieux.'),
('Sable du temps', 'Grains têtus qui refusent d’être à l’heure.'),
('Acier trempé', 'Acier qui a pris un bain froid pour devenir sérieux.'),
('Braise éternelle', 'Charbon ardent, ne s’éteint qu’avec les promesses non tenues.'),
('Corail noir', 'Récif nocturne, très à la mode chez les casques plongeants.'),
('Bois lunaire', 'Bois pâle qui brille quand on lui raconte une histoire.'),
('Poudre sélène', 'Poussière de lune, scintille même de mauvaise humeur.'),
('Bois calciné', 'Charpente carbonisée qui a vu le feu et en redemande.'),
('Cristal chaotique', 'Structure instable, classe le désordre par ordre alphabétique.'),
('Plume d’azur', 'Plume légère, laisse un ciel bleu derrière chaque trait.'),
('Lingot d’or', 'Or discipliné, reste en bloc malgré les flatteries.'),
('Rune gravée', 'Symbole éternellement grognon quand on le retourne.'),
('Fragment solaire', 'Éclat de soleil capturé, bronzage garanti sous capuche.'),
('Tissu runique', 'Étoffe qui lit par-dessus votre épaule.'),
('Pierre brute', 'Roche franche, n’a jamais appris la politesse.'),
('Herbes vives', 'Plantes pressées qui poussent avant la fin de la phrase.'),
('Acier sacré', 'Métal béni, refuse de couper les coins.'),
('Givre pur', 'Froid poli, trace des arabesques sur les moustaches.'),
('Cœur d’orage', 'Noyau d’éclair domestiqué ; ronchonne quand il fait beau.'),
('Sable du désert', 'Grain voyageur, retrouve toujours les bottes.'),
('Fil d’argent', 'Brin noble, conducteur de compliments.'),
('Fil de lin', 'Fil humble, tient mieux que les promesses.'),
('Argent pur', 'Métal lunatique, brille plus fort sous les ragots.'),
('Verre poli', 'Transparence fière de ne rien cacher.'),
('Résine odorante', 'Gomme parfumée, attire mouches et souvenirs.'),
('Huile fine', 'Lubrifiant de salon, glisse aussi sur les excuses.'),
('Plume de griffon', 'Souvenir aérien, pique l’orgueil si on la met de travers.'),
('Épices fortes', 'Poudre bavarde, fait parler les plats (et les convives).'),
('Ampoule alchimique', 'Flacon têtu, ne casse que quand on jure que non.'),
('Écaille de dragon', 'Tuile ignifugée, idéale contre les courants d’air brûlants.'),
('Onguent soporifique', 'Crème bâilleuse, endort même les bardes.'),
('Corde runique', 'Lien qui lit ; noue les destins au double nœud.'),
('Orichalque', 'Légende métallique, sonne la note rare du coffre plein.'),
('Gemme élémentaire', 'Noyau polyvalent, change d’humeur avec la météo.'),
('Voile de sérénité', 'Tissu muet, étouffe bruits et disputes.'),
('Peau parcheminée', 'Cuir lettré, aime qu’on l’écrive correctement.'),
('Encre runique', 'Encre qui corrige les fautes avant qu’on les fasse.'),
('Encre d’ombre', 'Liquide ténébreux, sèche à la lumière des secrets.'),
('Fromage ancien', 'Meule érudite, cite souvent des caves célèbres.'),
('Rouages d’acier', 'Mécanismes disciplinés, tournent rond même dans les rumeurs.'),
('Argile rouge', 'Terre timide qui rougit pour un oui ou pour un bol.'),
('Acier céleste', 'Alliage de haute altitude, étincelle quand on le flatte.'),
('Perle d’aube', 'Goutte rosée qui se lève plus tôt que les coqs.'),
('Sel marin', 'Cristaux voyageurs, sentent la vague et la poésie.'),
('Beurre fin', 'Doux et bien élevé, ne crie jamais au chaud.'),
('Raclette affinée', 'Fromage sérieux, fond uniquement par vocation.'),
('Farine blanche', 'Poudre modeste, lève sans faire de vague.'),
('Poivre noir', 'Grain piquant, relève les débats et les plats fades.'),
('Chocolat noir', 'Cacao intense, amer avec les faux amis.'),
('Miel doré', 'Nectar patient, coule lentement mais sûrement.'),
('Lait frais', 'Liquide jovial, toujours prêt à mousser les conversations.'),
('Vin rouge', 'Élixir bavard, colore les débats et les joues.'),
('Bière brune', 'Boisson robuste, mousse les histoires de taverne.'),
('Hydromel doux', 'Potion sucrée, adoucit même les cœurs de pierre.'),
('Café corsé', 'Breuvage énergique, réveille les esprits endormis.'),
('Thé vert', 'Infusion zen, calme les ardeurs et les débats.'),
('Chantilly ferme', 'Nuage discipliné, tient la pose pour les portraits.'),
('Bois résineux', 'Bois collant, parfait pour torches et moustaches.'),
('Fonte', 'Métal massif qui aime les bains bouillants.'),
('Fragment de néant', 'Morceau d’ombre dense, idéal pour les discussions profondes.'),
('Épée Solaire', 'Brûle d’une flamme qui ne s’éteint jamais.'),
('Épée Nocturne', 'Une lame d’ombre qui boit la lumière.'),
('Faux du Néant', 'Outil de fin de cycle, manie le vide avec poésie.'),
('Bâton de l’Astrolithe', 'Un pilier d’étoiles solidifiées.'),
('Bâton du Temps Figé', 'Fige tout sauf les regrets.'),
('Épée des Échos', 'Chaque coup résonne dans l’âme de l’adversaire.'),
('Marteau de l’Éclipse', 'Se manifeste à la lumière d’une double lune.'),
('Lame des Saisons', 'Change d’élément selon la saison.'),
('Trident de la Mer Claire', 'Symbole des marins de Poissarie.'),
('Lance du Zénith', 'Condense la lumière en un faisceau mortel.'),
('Armure de la Lumière Pure', 'Brille d’une intensité à aveugler la mauvaise foi.'),
('Armure d’Obsidienne', 'A résisté à la Guerre des Forges.'),
('Cuirasse du Temps', 'Vieillit le porteur au ralenti.'),
('Bouclier des Astres', 'Réfléchit les constellations et les sorts.'),
('Armure des Titans', 'Créée à partir d’un fragment d’étoile.'),
('Anneau du Temps', 'Décale les rendez-vous d’un quart d’heure.'),
('Cape du Crépuscule', 'Camoufle dans la pénombre et dans les soirées mondaines.'),
('Bracelet des Étoiles', 'Gravé d’un ciel miniature.'),
('Larme de Dragon', 'Un ingrédient rare pour des potions puissantes.'),
('Larme de Sirène', 'Utilisée dans les élixirs de charme.'),
('Plume de Phénix', 'Indispensable pour les mages écrivains.'),
('Poche Dimensionnelle', 'Contient tout sauf ce qu’on cherche.'),
('Sceptre des Arcanes', 'Canalise tous les éléments connus et inconnus.'),
('Orbe des Étoiles', 'Renferme un fragment de cosmos.'),
('Grimoire Vivant', 'Écrit seul, corrige parfois le lecteur.'),
('Anneau des Six Éléments', 'Fusionne feu, eau, air, terre, lumière et ténèbres.'),
('Couronne des Dieux Muets', 'Silencieusement toute-puissante.'),
('Diadème du Zénith', 'Diffuse une aura solaire.'),
('Cape de Lune', 'Change de couleur selon les phases.'),
('Cristal d’Âme', 'Contient la mémoire d’un ancien héros.'),
('Sphère du Temps', 'Permet de suspendre l’instant parfait.'),
('Relique du Premier Mage', 'Son nom seul déclenche la révérence.'),
('Miroir de Vérité', 'Révèle tout, même les mauvaises coupes de cheveux.'),
('Harpe Céleste', 'Ses notes guérissent les cœurs brisés.'),
('Ancre du Monde', 'Stabilise et réécrit à souhait la réalité autour d’elle.');

INSERT INTO Metier (libelle, type_metier) VALUES
('Forgeron', 'artisan'),
('Tavernier', 'service'),
('Boulanger', 'artisan'),
('Brasseur', 'artisan'),
('Cuisinier arcanique', 'artisan'),
('Pêcheur de nuages', 'autre'),
('Apiculteur astral', 'artisan'),
('Herboriste', 'artisan'),
('Alchimiste', 'artisan'),
('Marchand ambulant', 'marchand'),
('Éclaireur', 'service'),
('Éleveur de griffons', 'autre'),
('Cartographe', 'service'),
('Maître du levain', 'artisan'),
('Tisseur de runes', 'artisan'),
('Scribe des vents', 'service'),
('Barde', 'service'),
('Conteur itinérant', 'service'),
('Vannier', 'artisan'),
('Tailleur de pierre', 'artisan'),
('Enchanteur de cuillères', 'artisan'),
('Potier', 'artisan'),
('Charpentier', 'artisan'),
('Mineur', 'autre'),
('Fermier', 'autre'),
('Maître du fromage', 'artisan'),
('Sorcier culinaire', 'autre'),
('Chevalier du goût', 'autre'),
('Brigadier des sauces', 'autre'),
('Jardinier céleste', 'autre'),
('Fabricant de catapultes', 'artisan'),
('Épicier du destin', 'marchand'),
('Marchand de miel', 'marchand'),
('Marchand de tapis volants', 'marchand'),
('Marchand de rires', 'marchand'),
('Marchand d’épices rares', 'marchand'),
('Maître pâtissier', 'artisan'),
('Couturier des nobles', 'artisan'),
('Tailleur de capes magiques', 'artisan'),
('Cordonnier de dragons', 'artisan'),
('Brasseur d’orages', 'artisan'),
('Distillateur d’illusions', 'artisan'),
('Orfèvre', 'artisan'),
('Bijoutier runique', 'artisan'),
('Peintre d’armures', 'artisan'),
('Sculpteur de golems', 'artisan'),
('Calligraphe mystique', 'service'),
('Archiviste de guildes', 'service'),
('Prêtre du brunch', 'service'),
('Aubergiste galactique', 'service'),
('Marin des brumes', 'autre'),
('Explorateur', 'autre'),
('Guide des cavernes', 'autre'),
('Gardien de phare', 'autre'),
('Apprenti du chaos', 'autre'),
('Éleveur de moutons lunaires', 'autre'),
('Dompteur de dragons', 'autre'),
('Conducteur de marmites', 'autre'),
('Guérisseur', 'service'),
('Soigneur d’âmes perdues', 'service'),
('Médecin des pois', 'service'),
('Chirurgien des croûtes', 'service'),
('Psychomage', 'service'),
('Banquier d’aventures', 'marchand'),
('Commerçant inter-royaumes', 'marchand'),
('Ambassadeur des sauces', 'service'),
('Messager royal', 'service'),
('Vendeur de rêves', 'marchand'),
('Voleur professionnel', 'autre'),
('Assassin végétarien', 'autre'),
('Bretteur acrobatique', 'autre'),
('Danseur à deux épées', 'autre'),
('Troubadour des tavernes', 'service'),
('Crieur public', 'service'),
('Chasseur de primes', 'autre'),
('Gardien de bibliothèque', 'service'),
('Inquisiteur du sucré', 'autre'),
('Sorcier pâtissier', 'autre'),
('Rôtisseur légendaire', 'artisan'),
('Maître de chai', 'artisan'),
('Fabricant d’armes chantantes', 'artisan'),
('Fondeur d’espoir', 'artisan'),
('Tanneur des ombres', 'artisan'),
('Maître des portails', 'autre'),
('Maître de la sieste', 'autre'),
('Collecteur de miettes', 'service'),
('Conseiller royal', 'service'),
('Chronomage', 'autre'),
('Juge des concours culinaires', 'service'),
('Facteur interdimensionnel', 'service'),
('Inventeur fou', 'autre'),
('Chef de guilde', 'service'),
('Artificier arcanique', 'artisan'),
('Restaurateur d’artefacts', 'artisan'),
('Maître verrier', 'artisan'),
('Vitrailliste mystique', 'artisan'),
('Armurier runique', 'artisan'),
('Graveur de glyphes', 'artisan'),
('Horloger temporel', 'artisan'),
('Cristallier de mana', 'artisan'),
('Cartomancien-artisan', 'artisan'),
('Ingénieur des golems', 'artisan'),
('Ingénieur runique', 'artisan'),
('Forgeron aérolythe', 'artisan'),
('Tisseur de brumes', 'artisan'),
('Facteur d’arcs célestes', 'artisan'),
('Luthier cosmique', 'artisan'),
('Sellier de griffons', 'artisan'),
('Calligraphe d’illusions', 'artisan'),
('Ornemaniste d’armures', 'artisan'),
('Lapidaire astral', 'artisan'),
('Marionnettiste runique', 'artisan'),
('Pyro-distillateur', 'artisan'),
('Commissaire-priseur d’artefacts', 'marchand'),
('Négociant en reliques', 'marchand'),
('Marchand de grimoires', 'marchand'),
('Broker de cristaux de mana', 'marchand'),
('Courtier en montures exotiques', 'marchand'),
('Negociant en épices astrales', 'marchand'),
('Marchand de composants alchimiques', 'marchand'),
('Commerçant d’objets maudits (certifiés)', 'marchand'),
('Intendant de caravane', 'marchand'),
('Gestionnaire d’entrepôt runique', 'marchand'),
('Diplomate inter-royaumes', 'service'),
('Archiviste astral', 'service'),
('Bibliothécaire des arcanes', 'service'),
('Conservateur de musée magique', 'service'),
('Stratège militaire', 'service'),
('Maître d’armes', 'service'),
('Précepteur noble', 'service'),
('Topographe royal', 'service'),
('Inquisiteur des contrats', 'service'),
('Officier des douanes magiques', 'service'),
('Chambellan de guilde', 'service'),
('Cartographe astral', 'service'),
('Ambassadeur itinérant', 'service'),
('Maître de cérémonie', 'service'),
('Exorciste agréé', 'service'),
('Chasseur d’artefacts', 'autre'),
('Explorateur de ruines', 'autre'),
('Pisteur de monstres', 'autre'),
('Ranger des confins', 'autre'),
('Chrono-érudit', 'autre'),
('Géomancien', 'autre'),
('Dompteur de wyvernes', 'autre'),
('Nécromancien repenti', 'autre'),
('Voyageur planaire', 'autre'),
('Survivaliste des sables', 'autre'),
('Veilleur des frontières', 'autre'),
('Custode des portails', 'autre'),
('Runologue', 'artisan'),
('Musicien', 'service'),
('Navigateur céleste', 'autre'),
('Éclaireur des cieux', 'autre'),
('Apothicaire', 'artisan'),
('Sentinelle', 'autre'),
('Routier céleste', 'autre'),
('Fauconnier', 'autre'),
('Souffleur de verre', 'artisan'),
('Charpentier naval', 'artisan');

-- ajouter quelques classes normales, à refaire
INSERT INTO Classe (libelle, role_combat) VALUES
('Mage à raclette', 'dps'),
('Guerrier-panier', 'tank'),
('Barde fouetté', 'support'),
('Rodeur de marché', 'dps'),
('Clerc chantilly', 'soin'),
('Voleur d’épices', 'dps'),
('Chevalier-louche', 'tank'),
('Druide infuseur', 'soin'),
('Sorcier flamby', 'dps'),
('Paladin du levain', 'tank'),
('Moine tire-bouchon', 'dps'),
('Artificier pâtissier', 'hybride'),
('Sentinelle du sel', 'tank'),
('Hurleur poivré', 'dps'),
('Chantre du sucre', 'support'),
('Brise-Croûte', 'dps'),
('Domptelune', 'support'),
('Enchante-beurre', 'support'),
('Essaimeur', 'soin'),
('Catapultier', 'dps'),
('Épéiste mousseux', 'dps'),
('Lancier au sirop', 'dps'),
('Arbalétrier beurré', 'dps'),
('Archer de la brioche', 'dps'),
('Bouclier battu', 'tank'),
('Gardien croûton', 'tank'),
('Sentinelle confite', 'tank'),
('Mur de meringue', 'tank'),
('Acolyte du brunch', 'soin'),
('Apothicaire pétillant', 'soin'),
('Chirurgien des croûtes', 'soin'),
('Ménestrel carbonara', 'support'),
('Tambour-major chantilly', 'support'),
('Crieur de bataille', 'support'),
('Chronomage', 'support'),
('Illusionniste sablé', 'hybride'),
('Ensorceleur caramélisé', 'dps'),
('Nécromage de levure', 'hybride'),
('Pyromancien gratiné', 'dps'),
('Cryomancien givré', 'dps'),
('Aquamancien infusé', 'support'),
('Aéromancien feuilleté', 'support'),
('Géomancien croquant', 'tank'),
('Électromage citronné', 'dps'),
('Luminarque', 'support'),
('Ombremancien', 'dps'),
('Tisseur de runes', 'hybride'),
('Scribe de bataille', 'support'),
('Chasseur d’arômes', 'dps'),
('Traqueur de truffes', 'dps'),
('Bretteur à deux lames', 'dps'),
('Danse-lames', 'dps'),
('Assassin végétarien', 'dps'),
('Voleur de miettes', 'dps'),
('Sabreur chantant', 'dps'),
('Moine du thé', 'support'),
('Chevalier du petit-déj', 'tank'),
('Champion pané', 'tank'),
('Garde-lait', 'tank'),
('Porteur de marmite', 'tank'),
('Invoker de couverts', 'hybride'),
('Conjurateur de chantilly', 'soin'),
('Bénisseur de pâtisseries', 'soin'),
('Exorciste des mimiqueurs', 'soin'),
('Maître des portails', 'support'),
('Ingénieur catapulte', 'support'),
('Alchimiste des sauces', 'hybride'),
('Cuisinomancien', 'hybride'),
('Troubadour des tavernes', 'support'),
('Ambassadeur flamboyant', 'support');


INSERT INTO ElementMagique (nom) VALUES
('feu'),
('glace'),
('foudre'),
('terre'),
('eau'),
('air'),
('lumière'),
('ténèbres'),
('métal'),
('bois'),
('sucre'),
('sel'),
('poivre'),
('beurre'),
('fromage'),
('farine'),
('miel'),
('épice'),
('herbe'),
('brume'),
('ombre'),
('vent'),
('chaleur'),
('froid'),
('cristal'),
('lave'),
('sable'),
('poussière'),
('boue'),
('lune'),
('soleil'),
('astre'),
('esprit'),
('chant'),
('temps'),
('ombrelle'),
('orage'),
('pluie'),
('neige'),
('givre'),
('brouillard'),
('électricité'),
('sérénité'),
('panique'),
('arcane'),
('rire'),
('amour');


INSERT INTO Titre (libelle, effets, effets_commentaire) VALUES
('Roi de Solarys', '{"autorite":"+100"}', 'Symbole de pouvoir suprême sur le continent.'),
('Reine des Cinq Royaumes', '{"charisme":"+90"}', 'Dirige avec grâce et fermeté.'),
('Duc du Nord', '{"influence":"+70"}', 'Contrôle les frontières glacées de Solarys.'),
('Marquis de l’Aube', '{"renommee":"+50"}', 'Premier à voir le soleil, dernier à fuir la nuit.'),
('Comte des Brumes', '{"perception":"+40"}', 'Maître des secrets et des murmures.'),
('Baronne des Rivières', '{"diplomatie":"+30"}', 'Connue pour sa sagesse et son sens de la négociation.'),
('Capitaine de la Garde Royale', '{"force":"+60"}', 'Protège la couronne depuis des générations.'),
('Grand Chancelier', '{"organisation":"+80"}', 'Régit les lois et les finances du royaume.'),
('Préfet de la Connaissance', '{"savoir":"+50"}', 'Supervise les bibliothèques royales.'),
('Seigneur des Marches', '{"courage":"+40"}', 'Garde des confins orientaux du royaume.'),
('Protecteur du Peuple', '{"charisme":"+60"}', 'Aimé des foules pour sa justice.'),
('Commandant des Armées', '{"leadership":"+90"}', 'Stratège légendaire des guerres du Levant.'),
('Chevalier Écarlate', '{"honneur":"+50"}', 'Toujours fidèle à son serment.'),
('Champion du Royaume', '{"bravoure":"+70"}', 'Représente Solarys dans les tournois royaux.'),
('Maître des Lois', '{"sagesse":"+60"}', 'Conseille les souverains dans la justice.'),
('Gardien du Sceau Royal', '{"loyaute":"+50"}', 'Conserve les secrets d’État les mieux gardés.'),
('Archiviste Impérial', '{"memoire":"+40"}', 'Connaît l’histoire par cœur… et par erreur.'),
('Grand Inquisiteur', '{"foi":"+80"}', 'Détecte les mensonges et les hérésies.'),
('Héraut du Royaume', '{"voix":"+30"}', 'Annonce les victoires et les drames.'),
('Diplomate de la Couronne', '{"eloquence":"+50"}', 'Peut déclarer la guerre en quatre langues.'),
('Archimage de Solarys', '{"mana":"+100"}', 'Maître incontesté des arcanes.'),
('Grand Druide des Landes', '{"nature":"+80"}', 'Unit les forêts et les bêtes.'),
('Sorcier des Tempêtes', '{"foudre":"+60"}', 'Fait pleuvoir les malédictions et les éclairs.'),
('Maître des Ombres', '{"furtivite":"+70"}', 'On ne le voit jamais venir… ou repartir.'),
('Champion des Flammes', '{"feu":"+80"}', 'Combattant incandescent du chaos.'),
('Gardien de l’Obsidienne', '{"defense":"+60"}', 'Inébranlable comme la roche.'),
('Oracle du Temps', '{"clairvoyance":"+90"}', 'Voit hier, demain, et parfois maintenant.'),
('Prophète des Étoiles', '{"foi":"+70"}', 'Lit le destin dans les constellations.'),
('Nécromancien Couronné', '{"ténèbres":"+80"}', 'Roi des morts et des fêtes ratées.'),
('Mage des Marées', '{"eau":"+60"}', 'Fait couler les ennemis et les navires.'),
('Élémentaliste d’Azur', '{"magie":"+60"}', 'Maîtrise l’eau et le vent.'),
('Conjurateur de Lune', '{"illusion":"+50"}', 'Ses rêves deviennent réels (parfois malgré lui).'),
('Scribe du Néant', '{"savoir_interdit":"+90"}', 'Écrit des livres que personne ne doit lire.'),
('Alchimiste du Savoir', '{"science":"+70"}', 'Transforme tout, même les échecs, en or.'),
('Exorciste des Âmes', '{"foi":"+60"}', 'Ramène les esprits… ou les renvoie poliment.'),
('Sentinelle des Abysses', '{"volonte":"+70"}', 'Regarde le vide sans ciller.'),
('Maître du Feu Céleste', '{"feu_sacre":"+90"}', 'Brûle le mal et les impôts.'),
('Chevalier Astral', '{"lumiere":"+80"}', 'Monte des destriers d’étoiles.'),
('Mage des Rêves', '{"sommeil":"+60"}', 'Fait rêver ou cauchemarder à volonté.'),
('Prêtre du Soleil', '{"lumiere":"+70"}', 'Illumine les esprits et les casseroles.'),
('Chasseur de Dragons', '{"force":"+80"}', 'A survécu pour le raconter.'),
('Brise-Serment', '{"intimidation":"+50"}', 'Craint des pactes et des promesses.'),
('Épéiste Runique', '{"vitesse":"+60"}', 'Chaque coup est un mot ancien.'),
('Arcaniste du Vent', '{"agilite":"+50"}', 'Ne se coiffe jamais, mais combat toujours.'),
('Moine du Silence', '{"serenite":"+90"}', 'Parle peu, frappe juste.'),
('Maître des Portails', '{"magie_spatiale":"+80"}', 'Ouvre des passages et des problèmes.'),
('Voyant du Crépuscule', '{"clairvoyance":"+50"}', 'Voit la fin avant le début.'),
('Gardien du Nexus', '{"stabilite":"+70"}', 'Maintient l’équilibre entre les mondes.'),
('Rôdeur des Ruines', '{"discretion":"+60"}', 'Explore les endroits que personne ne veut voir.'),
('Seigneur des Esprits', '{"charisme_spectral":"+90"}', 'Discute avec les morts comme avec des amis.'),
('Commandant du Néant', '{"commandement":"+80"}', 'Dirige les armées invisibles.'),
('Champion des Cieux', '{"vol":"+70"}', 'Héros ailé, redouté des dragons.'),
('Sentinelle de l’Aube', '{"perception":"+50"}', 'Premier éveillé, dernier endormi.'),
('Chevalier du Crépuscule', '{"equilibre":"+60"}', 'Entre lumière et ténèbres, il marche.'),
('Émissaire des Titans', '{"puissance":"+90"}', 'Parle au nom des géants.'),
('Érudit du Zéphyr', '{"vitesse":"+40"}', 'Court plus vite qu’il ne lit.'),
('Vigile des Flammes', '{"resistance":"+50"}', 'Protège les forges sacrées.'),
('Capitaine des Voiles Blanches', '{"navigation":"+70"}', 'Maîtrise vents et vagues.'),
('Explorateur des Sables', '{"survie":"+60"}', 'A toujours du sable dans les bottes.'),
('Maître des Esprits Anciens', '{"communication":"+80"}', 'Entend les arbres parler, et répond poliment.'),
('Paladin de l’Équilibre', '{"justice":"+70"}', 'Protège la balance entre ombre et lumière.'),
('Champion des Terres Brisées', '{"force":"+80"}', 'Reconstruit ce qu’il détruit.'),
('Héraut des Cendres', '{"endurance":"+50"}', 'Toujours debout, même après l’incendie.'),
('Grand Stratège du Nord', '{"intelligence_militaire":"+70"}', 'Ne perd jamais, sauf aux dés.'),
('Chasseur d’Abominations', '{"determination":"+80"}', 'Ne fuit devant rien, sauf les factures.'),
('Maître du Temps', '{"magie_temporelle":"+100"}', 'Toujours en avance, parfois trop.'),
('Archidruide des Saisons', '{"nature":"+80"}', 'Contrôle la pluie, le vent et les allergies.'),
('Émissaire des Ombres', '{"furtivite":"+90"}', 'Ambassadeur des ténèbres civilisées.'),
('Sage de la Flamme', '{"sagesse":"+70"}', 'Illumine les esprits par la chaleur.'),
('Veilleur des Portes', '{"vigilance":"+60"}', 'Ne dort jamais, sauf en réunion.'),
('Grand Fromage de Solarys', '{"charisme":"+20"}', 'Toujours entouré de courtisans et d’odeurs.'),
('Baron du Beurre Demi-Sel', '{"charme":"+30"}', 'Ni trop doux, ni trop salé.'),
('Seigneur de la Raclette', '{"aura_de_chaleur":"+50"}', 'Fait fondre tout sur son passage.'),
('Protecteur des Croissants Lunaires', '{"volonte":"+40"}', 'Maître des viennoiseries astrales.'),
('Archimage du Lait Chaud', '{"sommeil":"+100"}', 'Endort tout auditoire en 3 minutes.'),
('Champion du Thé Glacé', '{"froid_de_calme":"+50"}', 'Toujours détendu, même au combat.'),
('Chevalier de la Tarte Sucrée', '{"gloire":"+40"}', 'Récompensé pour services rendus au dessert.'),
('Commandant du Café Noir', '{"vigilance":"+80"}', 'Ne dort jamais, même les yeux fermés.'),
('Sorcier du Beurre Volant', '{"magie_gastronomique":"+60"}', 'Capable de faire léviter une poêle.'),
('Duc des Restes du Festin', '{"endurance_gastrique":"+90"}', 'N’abandonne jamais avant la dernière bouchée.'),
('Champion du Rire', '{"joie":"+70"}', 'Répand la bonne humeur et la panique.'),
('Héros des Blagues Ratées', '{"persévérance":"+30"}', 'Continue même quand personne ne rit.'),
('Maître des Jeux de Mots', '{"intelligence":"+90"}', 'Règne sur les calembours et les soupirs.'),
('Paladin de la Bêtise Noble', '{"innocence":"+60"}', 'Frappe d’abord, réfléchit après… parfois.'),
('Gardien du Canapé Éternel', '{"repos":"+100"}', 'Héros de la paresse assumée.'),
('Élue de la Taverne', '{"popularité":"+50"}', 'Boit avec sagesse (et quantité).'),
('Mage du Silence Gênant', '{"discrétion":"+40"}', 'Crée le malaise instantanément.'),
('Prophète du Hasard', '{"chance":"+100"}', 'Prévoit l’imprévisible, souvent par accident.'),
('Apôtre de la Louche Sacrée', '{"cuisine_divine":"+80"}', 'Bénit les soupes et les armées.'),
('Héraut des Éclats de Rire', '{"aura_joyeuse":"+70"}', 'Rassemble les cœurs par l’humour.');


INSERT INTO EcoleMagie (nom, royaume_id) VALUES
('Académie Royale des Arcanes',          (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Université Impériale des Sciences Occultes', (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Collège des Études Astrales',          (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Institut de Géomancie du Nord',        (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Conservatoire de l’Art Runique',       (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Académie de Défense Contre les Anathèmes', (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Cénacle de Théurgie et Liturgie',      (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('École Navale d’Hydromancie',           (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Institut Cartographique des Flux Magiques', (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Ordre des Veilleurs de l’Aube',        (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('École Militaire d’Arcanomécanique',    (SELECT id_royaume FROM Royaume WHERE nom='Patateland')),
('Académie de Diplomatie Magique',       (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Conclave de Cryptomancie',             (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Institut d’Étude des Plans',           (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('École Royale des Chronomances',        (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Tour de l’Obsidienne',                 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Cercle des Quatre Vents',              (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Collégiale des Sept Sceaux',           (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Sanctuaire des Voiles Blanches',       (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Citadelle de l’Aether',                (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Monastère de la Lune Haute',           (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Arche du Feu Céleste',                 (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre')),
('Bibliothèque du Crépuscule',           (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie')),
('Serre des Druides Gris',               (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Guilde des Nidificateurs d’Esprits',   (SELECT id_royaume FROM Royaume WHERE nom='Navet-les-Oies')),
('Chapitre des Épées Chantantes',        (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Collège des Voies Invisibles',         (SELECT id_royaume FROM Royaume WHERE nom='Meringuia')),
('Cercle du Miroir Froid',               (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Académie des Marées Profondes',        (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Tour des Éons',                        (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Enclave des Ombres Liées',             (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Confrérie du Zéphyr',                  (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Sanctuaire du Roc-Chœur',              (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Cénacle des Oracles Stellaires',       (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Abbaye des Bénédictions Sereines',     (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('École des Portails et Traverses',      (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Collège des Runes de Garde',           (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Temple du Rayon d’Aube',               (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Arcanerie des Éclats d’Orage',         (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Académie de l’Empreinte Spirituelle',  (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Conservatoire des Harmoniques Voilées',(SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Maison des Veilleurs Runaires',        (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Citadelle des Sables Liants',          (SELECT id_royaume FROM Royaume WHERE nom='Patateland')),
('Cercle des Étincelles Nocturnes',      (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Ordre de la Source Claire',            (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Académie des Parenthèses Magiques',    (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('EIDM — École d’Illusions Discrètement Maladroites', (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Institut des Portes qui Grincent',     (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Collège des Invisibles Très Visibles', (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Université de la Chance Incontrôlable',(SELECT id_royaume FROM Royaume WHERE nom='Beurropolis')),
('Ordre des Sorciers à Retardement',     (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Académie des “Ahem” Dramatiques',      (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('École des Mains Froides mais du Cœur Chaud', (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Cercle des Cartographes du Hasard',    (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Institut des Parapluies Vraiment Magiques', (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Université Populaire de la Sorcelerie Pratique', (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('École du Silence Éloquent',            (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Cénacle des Rattrapages Héroïques',    (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Ordre des “C’est Contrôlé, Promis”',   (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Académie du Coin de l’Œil',            (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Haute-École de Raclette Appliquée',    (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Conservatoire du Sucre Modéré',        (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Ordre des Boucliers Beurrés',          (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Collège des Infusions Sérieuses',      (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'));


INSERT INTO Sort (nom, ecole_id, cout_mana, niveau_requis, est_interdit, est_rituel) VALUES
('Boule de Feu', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 10, 1, 0, 0),
('Rayon Solaire', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 11, 1, 0, 0),
('Lame Astrale', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 12, 2, 0, 0),
('Voile de Brume', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 13, 2, 0, 1),
('Mur d’Aegis', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 14, 3, 0, 0),
('Flèche de Foudre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 15, 3, 0, 0),
('Chant de l’Aube', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 16, 4, 0, 0),
('Étreinte Sylvestre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 17, 4, 0, 1),
('Œil du Zéphyr', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 18, 5, 0, 0),
('Pilier de Terre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 19, 5, 0, 0),
('Marée de Lune', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 20, 6, 0, 0),
('Orage Ligoté', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 21, 6, 0, 1),
('Cantique des Étoiles', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 21, 7, 0, 0),
('Linceul des Ombres', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 22, 7, 0, 0),
('Marche-Temps', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 23, 8, 0, 0),
('Souffle d’Azur', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 24, 8, 0, 1),
('Étreinte de Givre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 25, 9, 0, 0),
('Rune de Garde', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 26, 9, 0, 0),
('Sceau de Contrainte', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 27, 10, 0, 0),
('Clôture d’Anathème', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 28, 10, 0, 1),
('Décret Arcanique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 29, 11, 0, 0),
('Serment d’Airain', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 30, 11, 0, 0),
('Sentence de Lumière', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 31, 12, 0, 0),
('Ordonnance de Protection', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 32, 12, 0, 1),
('Blason de Veille', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 33, 13, 0, 0),
('Fanal des Profondeurs', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 34, 13, 0, 0),
('Balafre d’Obsidienne', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 35, 14, 0, 0),
('Point de Stase', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 36, 14, 0, 1),
('Arc de Tempête', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 37, 15, 0, 0),
('Brèche Planariste', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 38, 15, 0, 0),
('Rappel Astral', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 39, 16, 0, 0),
('Aspersion Lumineuse', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 40, 16, 0, 1),
('Onde d’Impact', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 41, 17, 0, 0),
('Faille Éthérée', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 42, 17, 0, 0),
('Balise d’Orientation', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 42, 18, 0, 0),
('Lacération Spectrale', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 43, 18, 0, 1),
('Marche des Esprits', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 44, 19, 0, 0),
('Entrave du Néant', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 45, 19, 0, 0),
('Épieu de Tonnerre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 46, 20, 0, 0),
('Voix des Anciens', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 47, 20, 0, 1),
('Flamme des Anciens', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 48, 21, 0, 0),
('Éclat Obsidien', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 49, 21, 0, 0),
('Main du Crépuscule', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 50, 22, 0, 0),
('Anneau de Contention', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 51, 22, 0, 1),
('Aiguillon d’Orage', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 52, 23, 0, 0),
('Rappel à la Vie', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 53, 23, 0, 0),
('Roue des Âges', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 54, 24, 0, 0),
('Surplomb Céleste', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 55, 24, 0, 1),
('Regard de Méduse', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 56, 25, 0, 0),
('Choc Tellurique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 57, 25, 0, 0),
('Brume Mémoire', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 58, 26, 0, 0),
('Silence Éloquent', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 59, 26, 0, 1),
('Hasard Contrarié', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 60, 27, 0, 0),
('Parapluie Vraiment Magique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 61, 27, 0, 0),
('Quiproquo Spectral', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 62, 28, 0, 0),
('Parenthèse Dramatique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 63, 28, 0, 1),
('Grincement Contrôlé', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 63, 29, 0, 0),
('Étendard Radieux', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 64, 29, 0, 0),
('Dérobade Sereine', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 65, 30, 0, 0),
('Épine de Cristal', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 66, 30, 0, 1),
('Tablette Runique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 67, 31, 0, 0),
('Plume d’Arcane', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 68, 31, 0, 0),
('Verrou du Sphinx', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 69, 32, 0, 0),
('Marque des Titans', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 70, 32, 0, 1),
('Étiage des Marées', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 71, 33, 0, 0),
('Lanterne des Abysses', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 72, 33, 0, 0),
('Grappin Fantôme', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 73, 34, 0, 0),
('Élan de Lumière', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 74, 34, 0, 1),
('Tourbillon d’Air', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 75, 35, 0, 0),
('Infusion d’Ombre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 76, 35, 0, 0),
('Helix de Givre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 77, 36, 0, 0),
('Racine Entravante', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 78, 36, 0, 1),
('Torrent d’Aigue', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 79, 37, 0, 0),
('Écu Stellaris', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 80, 37, 0, 0),
('Couronne de Braises', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 81, 38, 0, 0),
('Panache d’Éclairs', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 82, 38, 0, 1),
('Astre Captif', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 83, 39, 0, 0),
('Flèche de Lune', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 84, 39, 0, 0),
('Ailes de Brume', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 84, 40, 0, 0),
('Vigilance de l’Aurore', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 85, 40, 0, 1),
('Ancre de Gravité', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 86, 41, 0, 0),
('Chœur des Voiles', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 87, 41, 0, 0),
('Quintessence', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 88, 42, 0, 0),
('Serpentine', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 89, 42, 0, 1),
('Résolution', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 90, 43, 0, 0),
('Vérité Scellée', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 91, 43, 0, 0),
('Pont des Mondes', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 92, 44, 0, 0),
('Renvoi d’Anathème', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 93, 44, 0, 1),
('Altération', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 94, 45, 0, 0),
('Permutation', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 95, 45, 0, 0),
('Magnétisme', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 96, 46, 0, 0),
('Transfert de Vie', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 97, 46, 0, 1),
('Symphonie d’Orage', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 98, 47, 0, 0),
('Cascade de Verre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 99, 47, 0, 0),
('Épiderme de Pierre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 100, 48, 0, 0),
('Fulgurance', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 101, 48, 0, 1),
('Écho d’Étoile', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 102, 49, 0, 0),
('Crible Arcanique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 103, 49, 0, 0),
('Éruption', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 104, 50, 0, 0),
('Résilience', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 105, 50, 0, 1),
('Rémanence', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 105, 51, 0, 0),
('Déflagration', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 106, 51, 0, 0),
('Fronde de Vent', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 107, 52, 0, 0),
('Arpège Runique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 108, 52, 0, 1),
('Écheveau du Sort', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 109, 53, 0, 0),
('Incandescence', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 110, 53, 0, 0),
('Écluse Maritime', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 111, 54, 0, 0),
('Transe de Bataille', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 112, 54, 0, 1),
('Vortex', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 113, 55, 0, 0),
('Arcane de Mémoire', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 114, 55, 0, 0),
('Prisme', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 115, 56, 0, 0),
('Lumigrave', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 116, 56, 0, 1),
('Ombroclaste', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 117, 57, 0, 0),
('Auralithe', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 118, 57, 0, 0),
('Chrysalis', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 119, 58, 0, 0),
('Fractal', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 120, 58, 0, 1),
('Halte du Temps', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 121, 59, 0, 0),
('Agrafe Astrale', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 122, 59, 0, 0),
('Spirale du Vide', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 123, 60, 0, 0),
('Chant des Fosses', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 124, 60, 0, 1),
('Allégeance', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 125, 61, 0, 0),
('Écaille Boréale', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 126, 61, 0, 0),
('Brûlure de Givre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 126, 62, 0, 0),
('Orichalque', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 127, 62, 0, 1),
('Vœu de Silence', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 128, 63, 0, 0),
('Chute d’Astres', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 129, 63, 0, 0),
('Étincelle Primordiale', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 130, 64, 0, 0),
('Étreinte Boréale', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 131, 64, 0, 1),
('Parangon', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 132, 65, 0, 0),
('Équilibre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 133, 65, 0, 0),
('Révocation', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 134, 66, 0, 0),
('Sursis', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 135, 66, 0, 1),
('Bouclier Harmonique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 136, 67, 0, 0),
('Rite de Passage', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 137, 67, 0, 0),
('Serment de Roche', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 138, 68, 0, 0),
('Liturgie des Flots', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 139, 68, 0, 1),
('Épreuve du Zénith', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 140, 69, 0, 0),
('Marquage Souterrain', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 141, 69, 0, 0),
('Courant Transversal', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 142, 70, 0, 0),
('Aiguillage Spirituel', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 143, 70, 0, 1),
('Appel du Large', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 144, 71, 0, 0),
('Lac Critallin', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 145, 71, 0, 0),
('Bénédiction de l’Aube', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 146, 72, 0, 0),
('Déni d’Ombre', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 147, 72, 0, 1),
('Ouverture des Voiles', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 147, 73, 0, 0),
('Clameur des Cieux', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 148, 73, 0, 0),
('Trident de Foudre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 149, 74, 0, 0),
('Rugissement', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 150, 74, 0, 1),
('Souffle de Cendre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 151, 75, 0, 0),
('Lueur Frigide', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 152, 75, 0, 0),
('Flamboiement', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 153, 76, 0, 0),
('Clairvoyance Mineure', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 154, 76, 0, 1),
('Clairvoyance Majeure', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 155, 77, 0, 0),
('Langue des Esprits', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 156, 77, 0, 0),
('Rappel des Héros', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 157, 78, 0, 0),
('Reflet Inversé', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 158, 78, 0, 1),
('Double Astral', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 159, 79, 0, 0),
('Voile Insondable', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 160, 79, 0, 0),
('Nappe de Brume', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 161, 80, 0, 0),
('Cuirasse Éthérée', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 162, 80, 0, 1),
('Charte Runique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 163, 81, 0, 0),
('Reliquat', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 164, 81, 0, 0),
('Balayage', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 165, 82, 0, 0),
('Règne du Crépuscule', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 166, 82, 0, 1),
('Cascade d’Éclats', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 167, 83, 0, 0),
('Entaille Solaire', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 168, 83, 0, 0),
('Faille Nocturne', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 168, 84, 0, 0),
('Rite de Lune', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 169, 84, 0, 1),
('Cycle d’Aurore', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 170, 85, 0, 0),
('Étendard des Vents', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 171, 85, 0, 0),
('Lance des Marées', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 172, 86, 0, 0),
('Épine Tellurique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 173, 86, 0, 1),
('Corde de Tonnerre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 174, 87, 0, 0),
('Masque Miroir', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 175, 87, 0, 0),
('Chrysalide de Verre', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 176, 88, 0, 0),
('Monolithe', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 177, 88, 0, 1),
('Diapason', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 178, 89, 0, 0),
('Sépulcre Lumineux', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 179, 89, 0, 0),
('Épée d’Azote', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 180, 90, 0, 0),
('Lâtre de Braise', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 181, 90, 0, 1),
('Panoplie Arcanique', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 182, 91, 1, 0),
('Pilier d’Orage', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 183, 91, 1, 0),
('Couronne d’Obsidienne', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 184, 92, 1, 0),
('Main des Abysses', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 185, 92, 1, 1),
('Regard du Soleil', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 186, 93, 1, 0),
('Appel d’Éther', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 187, 93, 1, 0),
('Idole Runique', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 188, 94, 1, 0),
('Faille de Quartz', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 189, 94, 1, 1),
('Clé des Portes', (SELECT id_ecole FROM EcoleMagie WHERE nom='Bibliothèque du Crépuscule'), 189, 95, 1, 0),
('Grimoire Vivant', (SELECT id_ecole FROM EcoleMagie WHERE nom='Conservatoire de l’Art Runique'), 190, 95, 1, 0),
('Anathème', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cénacle de Théurgie et Liturgie'), 191, 96, 1, 0),
('Dogme', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Navale d’Hydromancie'), 192, 96, 1, 1),
('Labyrinthe', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 193, 97, 1, 0),
('Éperon de Foudre', (SELECT id_ecole FROM EcoleMagie WHERE nom='Tour de l’Obsidienne'), 194, 97, 1, 0),
('Queue de Comète', (SELECT id_ecole FROM EcoleMagie WHERE nom='Cercle des Quatre Vents'), 195, 98, 1, 0),
('Rivage d’Écume', (SELECT id_ecole FROM EcoleMagie WHERE nom='Collège des Études Astrales'), 196, 98, 1, 1),
('Tressaillement', (SELECT id_ecole FROM EcoleMagie WHERE nom='Institut de Géomancie du Nord'), 197, 99, 1, 0),
('Berceuse Astrale', (SELECT id_ecole FROM EcoleMagie WHERE nom='Ordre des Veilleurs de l’Aube'), 198, 99, 1, 0),
('Tombeau d’Étoiles', (SELECT id_ecole FROM EcoleMagie WHERE nom='École Militaire d’Arcanomécanique'), 199, 100, 1, 0),
('Bénédiction du Levant', (SELECT id_ecole FROM EcoleMagie WHERE nom='Sanctuaire des Voiles Blanches'), 200, 100, 1, 1),
('Domaine des Astres', (SELECT id_ecole FROM EcoleMagie WHERE nom='Académie Royale des Arcanes'), 500, 100, 0, 1);


INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('feu')
WHERE (s.nom REGEXP 'Feu|Flamm|Braise|Brasier|Incandesc|Braise|Éruption|Lâtre|Braise|Flamboi')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='lave'
WHERE (s.nom REGEXP 'Lave|Braise|Brasier|Éruption|Braise')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('glace','givre','froid')
WHERE (s.nom REGEXP 'Glace|Givr|Frigid|Froid|Neige|Boréal|Boréale')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('foudre','électricité','orage')
WHERE (s.nom REGEXP 'Foudre|Éclair|Orage|Tonnerre|Tempête|Aiguillon d’Orage|Pilier d’Orage|Trident de Foudre|Quille de Foudre|Éperon de Foudre')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='vent'
WHERE (s.nom REGEXP 'Orage|Tempête|Éclair|Foudre|Tonnerre|Cyclone|Tourbillon|Vortex')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='pluie'
WHERE (s.nom REGEXP 'Orage|Tempête|Averse|Pluie')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='terre'
WHERE (s.nom REGEXP 'Terre|Tellur|Roche|Pierre|Monolithe|Obsidien|Obsidienne|Quartz|Souterrain|Tellurique|Épine Tellurique')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('sable','boue','cristal')
WHERE (s.nom REGEXP 'Sable|Dune|Boue|Cristal|Quartz|Épine de Cristal|Prisme|Verre|Chrysalide de Verre|Chrysalis|Cascade de Verre')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='eau'
WHERE (s.nom REGEXP 'Eau|Marée|Marais|Abyss|Abysse|Écume|Flots|Naval|Hydro|Lance des Marées|Écluse Maritime|Appel du Large')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('brume')
WHERE (s.nom REGEXP 'Brume|Voile|Voiles|Nappe|Voile Insondable|Voile de|Ailes de Brume|Bibliothèque du Crépuscule')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('air','vent')
WHERE (s.nom REGEXP 'Air|Vent|Zéphyr|Tourbillon|Vortex|Étendard des Vents|Souffle d’Azur|Fronde de Vent|Épervier du Temps')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('lumière','soleil')
WHERE (s.nom REGEXP 'Lumi|Solaire|Soleil|Rayon|Aube|Zénith|Éclat|Radieux|Entaille Solaire|Regard du Soleil|Bénédiction du Levant|Chant de l’Aube|Étendard Radieux')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('ténèbres','ombre')
WHERE (s.nom REGEXP 'Ombre|Nocturn|Nuit|Crépuscule|Néant|Sépulcre|Tombeau|Thanato|Déni d’Ombre|Règne du Crépuscule|Faille Nocturne|Chape de Nuit')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('astre','lune')
WHERE (s.nom REGEXP 'Astral|Astre|Étoile|Comète|Céleste|Cosm|Éons|Aurore|Astra|Sidéral|Boréal|Domaine des Astres|Berceuse Astrale|Tombeau d’Étoiles|Chute d’Astres|Étoile')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='temps'
WHERE (s.nom REGEXP 'Temps|Chrono|Âge|Âges|Éons|Passage|Halte du Temps|Roue des Âges|Marche-Temps|Épervier du Temps|Étalon Cosmique')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='esprit'
WHERE (s.nom REGEXP 'Esprit|Âme|Spectr|Fantôm|Héros|Langue des Esprits|Marche des Esprits|Grappin Fantôme|Voix des Anciens')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='arcane'
WHERE (s.nom REGEXP 'Arcane|Run|Sceau|Sceaux|Scell|Verrou|Mandat|Ordonnance|Charte|Tablette Runique|Idole Runique|Grimoire|Blason|Clé des Portes|Serment')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom IN ('bois','herbe')
WHERE (s.nom REGEXP 'Racine|Ronce|Sylvestre|Arb|Forêt')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s
JOIN ElementMagique e ON e.nom='métal'
WHERE (s.nom REGEXP 'Métal|Acier|Aimant|Magnétisme|Orichalque|Airain|Auralithe|Épée|Lame|Serment d’Airain')
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s JOIN ElementMagique e ON e.nom='froid'
WHERE s.nom = 'Lueur Frigide'
  AND (SELECT COUNT(*) FROM SortElement se WHERE se.sort_id=s.id_sort) < 6;

-- Quelques réglages ciblés pour des sorts emblématiques -------------------
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s JOIN ElementMagique e ON e.nom='feu'
WHERE s.nom='Boule de Feu';

INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element
FROM Sort s JOIN ElementMagique e ON e.nom='chaleur'
WHERE s.nom='Boule de Feu'
  AND EXISTS (SELECT 1 FROM ElementMagique WHERE nom='chaleur');

-- Domaine des Astres : astre + soleil + lune + lumière + arcane + temps (6/6)
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='astre'
WHERE s.nom='Domaine des Astres';
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='soleil'
WHERE s.nom='Domaine des Astres';
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='lune'
WHERE s.nom='Domaine des Astres';
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='lumière'
WHERE s.nom='Domaine des Astres';
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='arcane'
WHERE s.nom='Domaine des Astres';
INSERT IGNORE INTO SortElement (sort_id, element_id)
SELECT s.id_sort, e.id_element FROM Sort s JOIN ElementMagique e ON e.nom='temps'
WHERE s.nom='Domaine des Astres';


INSERT INTO Guilde (nom, type_guilde, specialite, reputation) VALUES
('Les Veilleurs de l’Aube',              'aventuriers', 'éclairement, missions d’aube', 'A'),
('Compagnie du Roc Obsidien',            'guerriers',   'ligne de front, boucliers lourds', 'A'),
('Conclave des Sept Sceaux',             'mages',       'rituels défensifs et anathèmes', 'S'),
('Ordre des Lames Grises',               'guerriers',   'escortes royales', 'A'),
('Cercle des Cartographes Libres',       'scribes',     'cartographie et relevés magiques', 'B'),
('Guilde des Émissaires',                'marchande',   'négociation et traités', 'A'),
('Fraternité des Flèches Vives',         'archers',     'tir longue portée', 'B'),
('Ordre des Clercs du Zénith',           'clercs',      'soins et liturgie solaire', 'A'),
('Loge des Artificiers Discrets',        'artisanale',  'dispositifs arcanotech', 'A'),
('Marins des Voiles Blanches',           'marins',      'navigation hauturière', 'B'),
('Compagnie des Pèlerins Gris',          'aventuriers', 'routes lointaines, caravanes', 'B'),
('Chambre des Courtiers d’Arcanes',      'marchande',   'échanges de grimoires', 'S'),
('Guilde des Archivistes Impériaux',     'scribes',     'archives et sceaux officiels', 'A'),
('Brigade des Sentinelles Boréales',     'guerriers',   'garde des cols', 'B'),
('Lanciers de l’Éperon',                 'guerriers',   'cavalerie lourde', 'A'),
('Compagnie des Ombres Liées',           'aventuriers', 'infiltration contrôlée', 'B'),
('Chœur des Harmonistes',                'mages',       'magies sonores', 'B'),
('Cercle de la Source Claire',           'clercs',      'eau bénite, rituels', 'A'),
('Ateliers du Silex',                    'artisanale',  'armurerie minérale', 'B'),
('Messagers de la Couronne',             'scribes',     'plumes rapides & sceaux', 'A'),
('L’Arc de l’Aurore',                    'archers',     'escarmouches matinales', 'B'),
('Les Rôdeurs des Ruines',               'aventuriers', 'exploration et désamorçage', 'B'),
('Tour des Éclats d’Orage',              'mages',       'foudre & météo', 'S'),
('La Confrérie du Zéphyr',               'archers',     'tir en mouvement', 'A'),
('La Lance des Marées',                  'marins',      'abordages, harpons', 'B'),
('Gardes du Nexus',                      'mages',       'portails & stabilité', 'A'),
('Compagnie du Voile Serein',            'aventuriers', 'désert et discrétion', 'B'),
('Les Gantelets d’Airain',               'guerriers',   'choc & intimidation', 'B'),
('Temple de la Clarté',                  'clercs',      'exorcismes, bénédictions', 'A'),
('Forges de l’Aegis',                    'artisanale',  'boucliers et armures', 'A'),
('Guetteurs du Crépuscule',              'aventuriers', 'chasse aux abominations', 'A'),
('Hérauts des Cieux',                    'archers',     'fauconnerie, signaux', 'B'),
('Arcanistes du Prisme',                 'mages',       'lumière, illusions', 'A'),
('Tisseurs de Runes',                    'scribes',     'sceaux, glyphes', 'A'),
('Ordre de la Marche-Temps',             'mages',       'chronomancie responsable', 'S'),
('Chasseurs des Sables Liants',          'aventuriers', 'désert & mirages', 'B'),
('Gardes-Rivage',                        'marins',      'patrouille côtière', 'B'),
('Les Marteaux Solaires',                'guerriers',   'armes contres ombres', 'A'),
('Chevaliers de l’Obsidienne',           'guerriers',   'garde noire honorable', 'A'),
('Cercle des Feuilles Vives',            'clercs',      'druidisme & soins', 'A'),
('Syndicat des Courants',                'marchande',   'routes maritimes', 'B'),
('Compagnie des Hauts-Cols',             'aventuriers', 'alpinisme & relais', 'B'),
('Les Douze Clefs',                      'scribes',     'cryptomancie, coffres', 'A'),
('Alchimistes du Zénith',                'artisanale',  'essences rares', 'A'),
('Éclaireurs d’Obscurécume',             'marins',      'bancs de brume & récifs', 'B'),
('Veilleurs de l’Étoile Fixe',           'mages',       'astromancie pratique', 'A'),
('Chariots de Fer',                      'marchande',   'convois blindés', 'B'),
('Gardes des Dalles',                    'guerriers',   'combat urbain', 'B'),
('Chevalerie de l’Astre',                'guerriers',   'ordre mixte héliolunaire', 'A'),
('Cavaliers du Vent',                    'archers',     'tir monté', 'A'),
('Main du Sépulcre',                     'clercs',      'veilleurs des tombes', 'B'),
('Compagnie des Trois Voiles',           'marins',      'grands trajets', 'B'),
('Ordre de l’Œil Silencieux',            'aventuriers', 'renseignement, filature', 'A'),
('Cabale des Aiguilles',                 'mages',       'géomancie fine', 'A'),
('Ateliers de Quartz',                   'artisanale',  'lithoglyphie & verre', 'B'),
('Courtiers du Crépuscule',              'marchande',   'achats discrets', 'B'),
('Légion des Épieux',                    'guerriers',   'pieux & hallebardes', 'B'),
('Les Étendards Radieux',                'aventuriers', 'contre-incursions', 'A'),
('Rôdeurs Boréaux',                      'archers',     'neige, traque', 'B'),
('Guilde de la Voûte',                   'scribes',     'archives planaires', 'A'),
('Les Parapluies Vraiment Magiques',     'mages',       'pluie ciblée & parade sociale', 'B'),
('La Guilde du Silence Éloquent',        'aventuriers', 'infiltration théâtrale', 'A'),
('Les Cartographes du Hasard',           'scribes',     'routes improbables', 'B'),
('Collants Invisi… presque',             'archers',     'camouflage pas parfait', 'C'),
('L’Ordre des “C’est Contrôlé, Promis”', 'mages',       'expériences encadrées (théoriquement)', 'B'),
('Les Héros des Blagues Ratées',         'aventuriers', 'gestion de malaise épique', 'C'),
('Les Casse-Serments',                   'guerriers',   'contre-oaths & médiations musclées', 'B'),
('La Brigade du Canapé Éternel',         'clercs',      'repos sacré & siestes rituelles', 'C'),
('Les Trouve-Tout-Sauf-Ça',              'aventuriers', 'recherches… à côté', 'C'),
('Le Chœur des “Ahem” Dramatiques',      'scribes',     'ponctuation vivante', 'B'),
('Les Portes qui Grincent',              'artisanale',  'charnières enchantées', 'C'),
('Les Alibis Variables',                 'marchande',   'papier officiel, sortie non garantie', 'C'),
('Compagnie des Fins de Mois',           'marchande',   'rabais et miracles comptables', 'B'),
('Les Sans-Boussoles Unis',              'marins',      'dérive maîtrisée', 'C'),
('Ordre de la Parenthèse',               'mages',       'incises temporelles', 'B'),
('Les Avertisseurs Tardifs',             'scribes',     'courriers importants (après coup)', 'C'),
('Compagnie “Ça Passe”',                 'aventuriers', 'plans borderline mais fun', 'B'),
('Ligue des Élastiques',                 'guerriers',   'repli tactique express', 'C'),
('Cercle des Chuchoteurs Forts',         'clercs',      'confession bruyante', 'C'),
('Les Détourneurs de Catastrophes',      'mages',       'redirection élégante des ennuis', 'A'),
('Boucliers Beurrés Modérés',            'guerriers',   'défense glissante', 'B'),
('Confrérie du Thé Très Sérieux',        'clercs',      'méditation & infusion', 'A'),
('Guilde des Cuillères Mesurées',        'artisanale',  'ustensiles de précision', 'B'),
('Brasseurs des Orages',                 'marchande',   'festivités météorologiques', 'B'),
('École de la Brioche Stoïque',          'mages',       'résilience douce', 'B'),
('Gardiens du Sel Cosmique',             'clercs',      'protection & gravité', 'A'),
('Compagnie du Pain Sec',                'aventuriers', 'survie minimaliste', 'C'),
('Tisserands de Nappes Stellaires',      'artisanale',  'textiles astraux', 'B'),
('Ordre du Poivre Diplomatique',         'scribes',     'pimenter sans fâcher', 'B'),
('Marins de la Soupe Claire',            'marins',      'mer calme & discipline', 'B');


-- Manque des ressources dans la table ressources -> null en base
INSERT INTO Village (nom, localisation, population, ressource_principale_id, royaume_id) VALUES
('Fromagiville-les-Bains', 'Côte Brumeuse', 4200, (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Patate-sur-Mer', 'Estuaire des Marées', 3100, (SELECT id_ressource FROM Ressource WHERE nom='Pomdeterreux'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland')),
('Carotte-sur-Mer', 'Falaises Orangées', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Carottien'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Choux-Fleur-les-Bains', 'Baie du Vapeur', 2900, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie')),
('Navet-les-Oies', 'Marais Chantants', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Navetien'), (SELECT id_royaume FROM Royaume WHERE nom='Navet-les-Oies')),
('Croûteville', 'Monts Croûtants', 3400, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Beurresac', 'Plaine Onctueuse', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Banarny', 'Archipel Glissant', 2700, (SELECT id_ressource FROM Ressource WHERE nom='Sel de Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Quichebourg-aux-Trois-Ponts', 'Vallée de l’Œuf', 5300, (SELECT id_ressource FROM Ressource WHERE nom='Lait'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Dragonflette-Haute', 'Col des Braises', 3900, (SELECT id_ressource FROM Ressource WHERE nom='Cendre draconique'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Éclair-sur-Rivage', 'Delta des Étoiles', 3200, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Soupefroide-Vieux-Port', 'Fjord des Brumes', 2800, (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Rizotto-Bas', 'Terrasses Dorées', 4100, (SELECT id_ressource FROM Ressource WHERE nom='Sable doré'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Sucralune-Vigie', 'Cap des Lueurs', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Miel lunaire'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Meringuia-Plateau', 'Hauteurs Neigeuses', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Meringuia')),
('Citronésie-Citadelle', 'Citadelle Saline', 3600, (SELECT id_ressource FROM Ressource WHERE nom='Feuille de basilic sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Vanillia-Rive', 'Lagune Claire', 3300, (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Anethol-Fontaine', 'Sources Parfumées', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Anethor'), (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('Comtédrale-Bas-Cloître', 'Bocage des Cloches', 3700, (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Biscuitbourg-Port', 'Rade Croquante', 2500, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Poissarie-Hameaux', 'Récifs aux Voiles', 2900, (SELECT id_ressource FROM Ressource WHERE nom='Poisson fumé'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Sorbeterre-Glacier', 'Roche Blanche', 3100, (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre')),
('Croissantinopie-Est', 'Plaines Feuilletées', 4500, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Saucissonie-Forges', 'Chaîne d’Airain', 3900, (SELECT id_ressource FROM Ressource WHERE nom='Fer'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Boulangea-Terres-Hautes', 'Coteaux Levants', 3700, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Croûtonie-Centre', 'Carrefour des Routes', 5200, (SELECT id_ressource FROM Ressource WHERE nom='Corde'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Herbularia-Forêt', 'Forêts Murmurantes', 3000, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Beurropolis-Nord', 'Grandes Dunes', 3900, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis')),
('Fromagiville-Citadelle', 'Éperon Roquefort', 2800, (SELECT id_ressource FROM Ressource WHERE nom='Essence de fromage ancien'), (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Marmitonnie-Bocage', 'Bocage des Marmites', 2750, (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Tartiflette Prime-Bourg', 'Contreforts Dorés', 3600, (SELECT id_ressource FROM Ressource WHERE nom='Poussière de croissant'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Éclairoisie-Phare', 'Cap Lumineux', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Plume d’archange'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Sucralune-Minier', 'Crêtes Étincelantes', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Quichebourg-Sud', 'Vallée du Levain', 3300, (SELECT id_ressource FROM Ressource WHERE nom='Lait'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Dragonflette-Forgebas', 'Chaînes Ardentes', 3100, (SELECT id_ressource FROM Ressource WHERE nom='Acier'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Banarnia-Hautes-Terres', 'Plateaux Dorés', 4100, (SELECT id_ressource FROM Ressource WHERE nom='Sel de Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Raclettea-Vieille-Ville', 'Écusson Fumé', 3800, (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Rizotto-Delta', 'Rizières Marécageuses', 3000, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Soupefroide-Est', 'Fjords Sifflants', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Choux-Fleurie-Les-Thermes', 'Thermes Floraux', 2200, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie')),
('Poissarie-Les-Filets', 'Chaussée aux Harengs', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Poisson fumé'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Citronésie-Canisses', 'Lagune Aux Citrons', 2000, (SELECT id_ressource FROM Ressource WHERE nom='Feuille de basilic sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Vanillia-Ravin', 'Ravin Parfumé', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Cacao'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Anethol-Moulins', 'Vents Anisés', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Anethor'), (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('Comtédrale-Clos', 'Vignes Sacrées', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Vin'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Biscuitbourg-Remparts', 'Remparts Croquants', 2300, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Beurrasie-Les-Prés', 'Prés Argentés', 2500, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Croissantinopie-Ouest', 'Plaines Levées', 3300, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Saucissonie-Guet', 'Gorges de Sel', 2800, (SELECT id_ressource FROM Ressource WHERE nom='Sel'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Boulangea-Coteau', 'Coteau Levant', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Croûtonie-Gare', 'Carrefour des Graines', 3500, (SELECT id_ressource FROM Ressource WHERE nom='Graines de sésame'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Herbularia-Clairière', 'Clairière Sage', 2000, (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Beurropolis-Digue', 'Digue Onctueuse', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis')),
('Fromagiville-Les-Caves', 'Sous-Bois Affinés', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Essence de fromage ancien'), (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Marmitonnie-Ferme', 'Bocage des Pots', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Tartiflette Prime-Cols', 'Cols Dorés', 2200, (SELECT id_ressource FROM Ressource WHERE nom='Poussière de croissant'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Éclairoisie-Lanterne', 'Cap Éclairé', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Plume d’archange'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Sorbeterre-Aiguilles', 'Aiguilles Blanches', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre')),
('Poissarie-Quais', 'Quais des Voiles', 3100, (SELECT id_ressource FROM Ressource WHERE nom='Poisson fumé'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Rizotto-Grand-Canal', 'Grand Canal', 3400, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Raclettea-Plain-Chaud', 'Plateau Fumé', 3600, (SELECT id_ressource FROM Ressource WHERE nom='Souffle de raclette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea')),
('Dragonflette-Roches', 'Roches Incandescentes', 2500, (SELECT id_ressource FROM Ressource WHERE nom='Roche fondue'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Banarnia-Lagon', 'Lagons Dorés', 2300, (SELECT id_ressource FROM Ressource WHERE nom='Sel de Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Quichebourg-Moulin', 'Moulins Vif-vent', 2900, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Choux-Fleurie-Orée', 'Orée Parfumée', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie')),
('Croûtonie-Marais', 'Bas-Fonds Croûtés', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Boue runique'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Herbularia-Ruisseau', 'Ruisseau Murmurant', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Beurrasie-Remous', 'Remous Onctueux', 2000, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Fromagiville-Ravin', 'Ravin Affiné', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Marmitonnie-Forge', 'Forge des Louches', 2200, (SELECT id_ressource FROM Ressource WHERE nom='Corde'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Tartiflette Prime-Vallon', 'Vallon Doré', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Éclairoisie-Terrasse', 'Terrasse Lumineuse', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Soupefroide-Source', 'Source Des Brumes', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Rizotto-Rizières-Hautes', 'Rizières Supérieures', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Sucralune-Crêtes', 'Crêtes Sucrées', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Miel lunaire'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Meringuia-Corniche', 'Corniche de Neige', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Meringuia')),
('Citronésie-Îlot', 'Îlots Clairs', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Feuille de basilic sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Vanillia-Savane', 'Savane Parfumée', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Cacao'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Anethol-Coteaux', 'Coteaux Anisés', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Anethor'), (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('Comtédrale-Les-Vignes', 'Coteaux Sacrés', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Vin'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Biscuitbourg-Les-Moulins', 'Moulins Croquants', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Beurropolis-Quais', 'Quais Onctueux', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis')),
('Fromagiville-Faubourg', 'Faubourg Affiné', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Essence de fromage ancien'), (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Marmitonnie-Granges', 'Granges des Pots', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Tartiflette Prime-Les-Ponts', 'Ponts Dorés', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Poussière de croissant'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Éclairoisie-Sentinelle', 'Hauteurs Lumineuses', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Plume d’archange'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Soupefroide-Lac', 'Grand Lac Froid', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Rizotto-Écluses', 'Écluses Royales', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Sucralune-Aiguilles', 'Aiguilles Douces', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Meringuia-Brises', 'Brises Neigeuses', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Neige en conserve'), (SELECT id_royaume FROM Royaume WHERE nom='Meringuia')),
('Citronésie-Falaise', 'Falaise Claire', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Feuille de basilic sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Vanillia-Chenal', 'Chenal Parfumé', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Cacao'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Anethol-Berges', 'Berges Anisées', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Anethor'), (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('Comtédrale-Prés', 'Prés Sacrés', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Lait'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Biscuitbourg-Lavandes', 'Lavandes Croquantes', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Beurrasie-Fontaines', 'Fontaines Onctueuses', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Croissantinopie-Charnières', 'Charnières Levées', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Saucissonie-Carrière', 'Carrière Rouge', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Fer'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Boulangea-Bastille', 'Bastille Levantine', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Croûtonie-Guinguette', 'Guinguette des Graines', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Graines de sésame'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Herbularia-Orée', 'Orée Vivace', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Beurropolis-Citadine', 'Citadelle Onctueuse', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis')),
('Fromagiville-Passerelle', 'Passerelle Affinée', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Essence de fromage ancien'), (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville')),
('Marmitonnie-Grand-Chaudron', 'Grand Chaudron', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie')),
('Tartiflette Prime-Serre', 'Serres Dorées', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Poussière de croissant'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime')),
('Éclairoisie-Belvédère', 'Belvédère Lumineux', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Soupefroide-Anse', 'Anse Gelée', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Rizotto-Digue', 'Digue Royale', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Sucralune-Pic', 'Pic Sucré', 1100, (SELECT id_ressource FROM Ressource WHERE nom='Miel lunaire'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Meringuia-Cascade', 'Cascade Blanche', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Meringuia')),
('Citronésie-Palétuviers', 'Palétuviers Clairs', 1100, (SELECT id_ressource FROM Ressource WHERE nom='Feuille de basilic sacré'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Vanillia-Lande', 'Lande Parfumée', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Cacao'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Anethol-Vigne', 'Vignes Anisées', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Anethor'), (SELECT id_royaume FROM Royaume WHERE nom='Anethol')),
('Comtédrale-Retables', 'Retables Sacrés', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Lait'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Biscuitbourg-Fossé', 'Fossé Croquant', 1100, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Beurrasie-Étang', 'Étang Onctueux', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Croissantinopie-Fontaine', 'Fontaine Levée', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Saucissonie-Forgeon', 'Forge des Monts', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Fer'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Boulangea-Quatre-Vents', 'Plateau Levant', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Farine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea')),
('Croûtonie-Chaud-Four', 'Chaud-Four des Graines', 1100, (SELECT id_ressource FROM Ressource WHERE nom='Graines de sésame'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Lac-Serein', 'Berge du Lac Bleu', 2500, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Rochebrune', 'Contreforts Gris', 2700, (SELECT id_ressource FROM Ressource WHERE nom='Pierre'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Haute-Clairière', 'Lisière Verte', 2200, (SELECT id_ressource FROM Ressource WHERE nom='Bois'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Pont-Neuf-des-Marées', 'Estuaire Large', 3000, (SELECT id_ressource FROM Ressource WHERE nom='Sel'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Granit-aux-Songes', 'Carrière des Échos', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Granit chantant'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Aubeclaire', 'Plateau Lumineux', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Val-d’Argile', 'Bassin Ocre', 2300, (SELECT id_ressource FROM Ressource WHERE nom='Argile'), (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie')),
('Mersal', 'Salines du Sud', 2800, (SELECT id_ressource FROM Ressource WHERE nom='Perles de sel'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Clairval', 'Vallée Claire', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Verre clair'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Boisjoli', 'Forêt Douce', 2200, (SELECT id_ressource FROM Ressource WHERE nom='Bois'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Rivage-Noir', 'Côtes de Basalte', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Roche fondue'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Briselune', 'Pointe des Deux-Lunes', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Éclat de lune'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Clairmont', 'Hauteurs Claires', 2300, (SELECT id_ressource FROM Ressource WHERE nom='Plumes'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Vallonfroid', 'Cirque Glacé', 2000, (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre')),
('Rocquartz', 'Éperons Cristallins', 2400, (SELECT id_ressource FROM Ressource WHERE nom='Nacre'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Bois-aux-Griffes', 'Massif Griffu', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Peaux de troll'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Selmer', 'Dunes Salines', 2000, (SELECT id_ressource FROM Ressource WHERE nom='Sel'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Merclaire', 'Côte Claire', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Verre clair'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Fer-aux-Cols', 'Cols d’Acier', 2300, (SELECT id_ressource FROM Ressource WHERE nom='Fer'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Haute-Rivière', 'Hauteurs du Grand Courant', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto')),
('Riremont', 'Colline des Échos', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’oubli'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Coin-Perdu', 'Broussailles Orientées', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Brindilles de sagesse'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Pas-de-Bruit', 'Plaine Sans Vent', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Souffle du vent'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide')),
('Presque-Visible', 'Brouillard Têtu', 1400, (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Grand-Hasard', 'Carrefour Probable', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Trop-Loin', 'Très Loin', 1200, (SELECT id_ressource FROM Ressource WHERE nom='Corde'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland')),
('Assez-Haut', 'Plateau Raisonnable', 1300, (SELECT id_ressource FROM Ressource WHERE nom='Pierre'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Pied-de-Page', 'Bas de la Falaise', 1250, (SELECT id_ressource FROM Ressource WHERE nom='Papier runique'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Chut!Ville', 'Forêt du Silence', 1150, (SELECT id_ressource FROM Ressource WHERE nom='Gemme du sommeil'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Étoile-Filante', 'Corniche des Vœux', 1350, (SELECT id_ressource FROM Ressource WHERE nom='Poudre d’étoile'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Mineraud', 'Galeries du Levant', 2600, (SELECT id_ressource FROM Ressource WHERE nom='Cuivre'), (SELECT id_royaume FROM Royaume WHERE nom='Saucissonie')),
('Charbonval', 'Bassin Fumant', 2800, (SELECT id_ressource FROM Ressource WHERE nom='Charbon'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Orvalon', 'Crêtes Dorées', 2100, (SELECT id_ressource FROM Ressource WHERE nom='Or'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Argentel', 'Vallée d’Argent', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Argent'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg')),
('Cuiron', 'Tanneries du Marais', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Cuir'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie')),
('Linval', 'Champs Faible-Vent', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Lin'), (SELECT id_royaume FROM Royaume WHERE nom='Croissantinopie')),
('Laineclaire', 'Bergeries Hautes', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Laine'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Épiceraie', 'Col des Parfums', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Épices'), (SELECT id_royaume FROM Royaume WHERE nom='Citronésie')),
('Café-Haut', 'Terrasse Ombreuse', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Café'), (SELECT id_royaume FROM Royaume WHERE nom='Vanillia')),
('Théval', 'Collines en Terrasse', 1650, (SELECT id_ressource FROM Ressource WHERE nom='Thé'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia')),
('Hydromelay', 'Rucher des Brises', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Hydromel'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia')),
('Vignerac', 'Coteaux Orientés', 1800, (SELECT id_ressource FROM Ressource WHERE nom='Vin'), (SELECT id_royaume FROM Royaume WHERE nom='Comtédrale')),
('Bièrelune', 'Brasseries Fraîches', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Bière'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Sucrerie-Basse', 'Sucreries du Delta', 1900, (SELECT id_ressource FROM Ressource WHERE nom='Sucre'), (SELECT id_royaume FROM Royaume WHERE nom='Sucralune')),
('Pâtur-Long', 'Grands Pâturages', 1750, (SELECT id_ressource FROM Ressource WHERE nom='Lait'), (SELECT id_royaume FROM Royaume WHERE nom='Beurrasie')),
('Pêche-Lointaine', 'Baie des Pêches', 1650, (SELECT id_ressource FROM Ressource WHERE nom='Noyau de pêche astrale'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie')),
('Basalte-Noir', 'Dalles Noires', 1850, (SELECT id_ressource FROM Ressource WHERE nom='Roche fondue'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette')),
('Runefond', 'Fosses Aux Glyphes', 1600, (SELECT id_ressource FROM Ressource WHERE nom='Papier runique'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg')),
('Cristal-Long', 'Aiguilles Claires', 1700, (SELECT id_ressource FROM Ressource WHERE nom='Cristal de mana'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie')),
('Saugeblanche', 'Sentes Argentées', 1500, (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'));


INSERT INTO Equipement (nom, type_equipement, rarete, enchantements, element_affinite_id, description) VALUES
('Épée du Levain','arme','rare','tranchant+25', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Forgée dans les flammes d’un four sacré, elle gonfle d’orgueil après chaque victoire.'),
('Hallebarde de l’Aube','arme','epique','lumiere+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Lame dorée capturant les premiers rayons du jour.'),
('Marteau du Crépuscule','arme','epique','ombre+80', (SELECT id_element FROM ElementMagique WHERE nom='ténèbres'), 'Résonne au dernier souffle de la lumière.'),
('Arc des Vents Boréaux','arme','rare','precision+25', (SELECT id_element FROM ElementMagique WHERE nom='vent'), 'Un arc si léger qu’il siffle à chaque tir.'),
('Dague de Brume','arme','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Arme discrète souvent oubliée après usage.'),
('Masse d’Airain','arme','rare','brisearmure+25', (SELECT id_element FROM ElementMagique WHERE nom='métal'), 'Brise armures et ego avec la même efficacité.'),
('Lance des Marées','arme','epique','hydraulique+80', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Frappe comme la vague, recule comme la marée.'),
('Bâton d’Obsidienne','arme','rare','pyro+25', (SELECT id_element FROM ElementMagique WHERE nom='lave'), 'Canalise le feu intérieur des montagnes.'),
('Couteau des Sables','arme','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='sable'), 'Lame simple mais tranchante, forgée dans le désert.'),
('Épée Solaire','arme','legendaire','lumiere+200', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Brûle d’une flamme qui ne s’éteint jamais.'),
('Épée Nocturne','arme','legendaire','ombre+200', (SELECT id_element FROM ElementMagique WHERE nom='ténèbres'), 'Une lame d’ombre qui boit la lumière.'),
('Arc Astral','arme','epique','astral+80', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Sa flèche traverse le firmament et parfois le bon sens.'),
('Faux du Néant','arme','mythique','neant+300', (SELECT id_element FROM ElementMagique WHERE nom='ténèbres'), 'Outil de fin de cycle, manie le vide avec poésie.'),
('Pique du Zéphyr','arme','rare','vitesse+25', (SELECT id_element FROM ElementMagique WHERE nom='air'), 'Pénétrante comme une brise contrariée.'),
('Marteau des Forges Hurlantes','arme','epique','choc+80', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Fait trembler le métal avant même de le frapper.'),
('Hache de Givre','arme','rare','gel+25', (SELECT id_element FROM ElementMagique WHERE nom='glace'), 'Sa morsure laisse une trace de cristal gelé.'),
('Épée Runique','arme','epique','arcane+80', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Les runes gravées s’illuminent à chaque serment tenu.'),
('Arc de l’Orage','arme','epique','foudre+80', (SELECT id_element FROM ElementMagique WHERE nom='foudre'), 'Tire des flèches chargées d’électricité statique.'),
('Bâton de l’Astrolithe','arme','legendaire','cosmos+200', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Un pilier d’étoiles solidifiées.'),
('Dague de l’Ombre','arme','rare','furtivite+25', (SELECT id_element FROM ElementMagique WHERE nom='ombre'), 'Invisible à l’œil, visible au dos.'),
('Épée des Ancêtres','arme','rare','esprit+25', (SELECT id_element FROM ElementMagique WHERE nom='esprit'), 'Transmet les coups et les conseils.'),
('Sabre Chantant','arme','epique','son+80', (SELECT id_element FROM ElementMagique WHERE nom='chant'), 'Fredonne l’hymne de Solarys à chaque mouvement.'),
('Masse Sismique','arme','rare','tellurique+25', (SELECT id_element FROM ElementMagique WHERE nom='terre'), 'Un coup déclenche un petit tremblement de terre (et un gros mal de tête).'),
('Lance de l’Aurore','arme','epique','lumiere+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Illumine la victoire d’une douce lumière rosée.'),
('Bâton du Temps Figé','arme','legendaire','chronos+200', (SELECT id_element FROM ElementMagique WHERE nom='temps'), 'Fige tout sauf les regrets.'),
('Hache des Abîmes','arme','epique','abysse+80', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Forgée au fond des abysses, elle résonne sous l’eau.'),
('Arc Lunaire','arme','rare','nocturne+25', (SELECT id_element FROM ElementMagique WHERE nom='lune'), 'Favori des archers nocturnes et des poètes insomnieques.'),
('Épée de Sel','arme','commun','tranchant+1', (SELECT id_element FROM ElementMagique WHERE nom='sel'), 'Éblouissante, mais fond sous la pluie.'),
('Bâton de Cendre','arme','rare','cendre+25', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Se consume lentement, même en plein hiver.'),
('Fronde du Chaos','arme','epique','entropie+80', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Ses projectiles ignorent la physique et la logique.'),
('Hallebarde de l’Empire','arme','rare','discipline+25', (SELECT id_element FROM ElementMagique WHERE nom='métal'), 'Standard des gardes royaux les moins imaginatifs.'),
('Lame d’Azur','arme','rare','aerien+25', (SELECT id_element FROM ElementMagique WHERE nom='air'), 'Fait chanter l’air et pleurer les moustiques.'),
('Fléau d’Or','arme','epique','eclat+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Brille à chaque péché capital.'),
('Épée des Échos','arme','legendaire','echo+200', (SELECT id_element FROM ElementMagique WHERE nom='chant'), 'Chaque coup résonne dans l’âme de l’adversaire.'),
('Gantelet Runique','arme','rare','impact+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Insuffle la puissance des anciens glyphes.'),
('Lance des Âmes','arme','epique','spirituel+80', (SELECT id_element FROM ElementMagique WHERE nom='esprit'), 'Chaque blessure délivre une prière.'),
('Marteau de l’Éclipse','arme','legendaire','astre+200', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Se manifeste à la lumière d’une double lune.'),
('Bâton de Feu Céleste','arme','epique','pyro+80', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Canalise les flammes du firmament.'),
('Arc du Mirage','arme','rare','illusion+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Crée dix fausses flèches pour chaque vraie.'),
('Lame des Saisons','arme','mythique','elementium+300', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Change d’élément selon la saison.'),
('Faux de Minuit','arme','epique','silence+80', (SELECT id_element FROM ElementMagique WHERE nom='ombre'), 'Fauche plus de réputations que de vies.'),
('Sabre du Rire','arme','rare','euphorie+25', (SELECT id_element FROM ElementMagique WHERE nom='rire'), 'Chaque coup déclenche un fou rire incontrôlable.'),
('Épée du Beurre Tranchant','arme','commun','tranchant+1', (SELECT id_element FROM ElementMagique WHERE nom='gras'), 'Redoutée des croissants et des diètes.'),
('Masse à Poivre','arme','commun','perturbation+1', (SELECT id_element FROM ElementMagique WHERE nom='poivre'), 'Assaisonne la douleur.'),
('Fléau des Miettes','arme','rare','proprete+25', (SELECT id_element FROM ElementMagique WHERE nom='farine'), 'Empêche les rongeurs de s’approcher du porteur.'),
('Épée du Silence','arme','epique','silence+80', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Absorbe le son de la victoire.'),
('Lame de la Raclette','arme','epique','fusion+80', (SELECT id_element FROM ElementMagique WHERE nom='raclette'), 'Fond tout ce qu’elle touche… y compris la neige.'),
('Trident de la Mer Claire','arme','legendaire','maree+200', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Symbole des marins de Poissarie.'),
('Bâton du Souffle d’Azur','arme','epique','bourrasque+80', (SELECT id_element FROM ElementMagique WHERE nom='air'), 'Lance des bourrasques parfumées.'),
('Lance du Zénith','arme','legendaire','soleil+200', (SELECT id_element FROM ElementMagique WHERE nom='soleil'), 'Condense la lumière en un faisceau mortel.'),
('Armure du Levant','armure','rare','defense+25', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Protège mieux le matin.'),
('Cuirasse du Zénith','armure','epique','reflexion+80', (SELECT id_element FROM ElementMagique WHERE nom='soleil'), 'Réfléchit les rayons du soleil et les critiques.'),
('Bouclier des Brumes','armure','rare','dissipation+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Dissipe les flèches comme la rosée.'),
('Casque des Profondeurs','armure','rare','pression+25', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Empêche de réfléchir trop longtemps.'),
('Plastron de l’Aube','armure','epique','vitalite+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Réchauffe le cœur et le torse.'),
('Gants du Vent Libre','armure','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='vent'), 'Parfaits pour applaudir le vent.'),
('Heaume du Silence','armure','epique','silence+80', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Étouffe les bruits et les remords.'),
('Bottes des Neiges Bleues','armure','rare','marchegivre+25', (SELECT id_element FROM ElementMagique WHERE nom='givre'), 'Ne laissent pas de trace sauf dans la poésie.'),
('Bouclier du Roc','armure','rare','solidite+25', (SELECT id_element FROM ElementMagique WHERE nom='terre'), 'Solide comme les excuses d’un politicien.'),
('Tunique des Feuilles Vives','armure','rare','nature+25', (SELECT id_element FROM ElementMagique WHERE nom='herbe'), 'Fait respirer la nature autour du porteur.'),
('Casque du Tonnerre','armure','epique','tonnerre+80', (SELECT id_element FROM ElementMagique WHERE nom='foudre'), 'Résonne avant la tempête.'),
('Armure de la Lumière Pure','armure','mythique','lumiere+300', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Brille d’une intensité à aveugler la mauvaise foi.'),
('Armure d’Obsidienne','armure','legendaire','antifeu+200', (SELECT id_element FROM ElementMagique WHERE nom='lave'), 'A résisté à la Guerre des Forges.'),
('Cotte de Brume','armure','rare','esquive+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Souple comme un nuage.'),
('Manteau du Froid Éternel','armure','epique','froid+80', (SELECT id_element FROM ElementMagique WHERE nom='glace'), 'Empêche le froid d’entrer mais pas les ragots.'),
('Casque du Sablier','armure','epique','temps+80', (SELECT id_element FROM ElementMagique WHERE nom='temps'), 'Rappelle que tout finit par se vider.'),
('Gants de l’Astral','armure','rare','poussiereetoile+25', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Récoltent la poussière d’étoiles.'),
('Bottes de l’Aurore','armure','rare','acceleration+25', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'S’illuminent au premier pas du matin.'),
('Cape de l’Ombre Déliée','armure','epique','transparence+80', (SELECT id_element FROM ElementMagique WHERE nom='ombre'), 'Permet de marcher entre deux rayons de lumière.'),
('Casque du Beurre Ferme','armure','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='gras'), 'Ne protège que le moral.'),
('Bottes à Raclette','armure','commun','adherence+1', (SELECT id_element FROM ElementMagique WHERE nom='raclette'), 'Adhérence redoutable sur sol fondu.'),
('Tunique du Thé Froid','armure','rare','temperance+25', (SELECT id_element FROM ElementMagique WHERE nom='caféine'), 'Maintient une température diplomatique.'),
('Bouclier de Chantilly','armure','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='sucre'), 'Protège des critiques légères.'),
('Casque du Croissant Doré','armure','rare','feuillete+25', (SELECT id_element FROM ElementMagique WHERE nom='beurre'), 'Offert aux meilleurs boulangers d’élite.'),
('Plastron des Abysses','armure','epique','respiration+80', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Respire sous l’eau (le porteur non).'),
('Cape de Givre','armure','rare','givre+25', (SELECT id_element FROM ElementMagique WHERE nom='givre'), 'Craque joliment quand on la plie.'),
('Bouclier Runique','armure','epique','contre+80', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'S’adapte à chaque frappe comme un vieux mage grincheux.'),
('Cuirasse du Temps','armure','legendaire','temps+200', (SELECT id_element FROM ElementMagique WHERE nom='temps'), 'Vieillit le porteur au ralenti.'),
('Heaume des Orages','armure','epique','orage+80', (SELECT id_element FROM ElementMagique WHERE nom='orage'), 'Capte la foudre comme un paratonnerre enthousiaste.'),
('Plastron d’Argile','armure','commun','defense+1', (SELECT id_element FROM ElementMagique WHERE nom='terre'), 'Protège jusqu’à la première pluie.'),
('Gants du Sable','armure','rare','tellurique+25', (SELECT id_element FROM ElementMagique WHERE nom='sable'), 'Filtrent la magie tellurique.'),
('Bouclier de l’Aube','armure','epique','barriere+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Protège les rêves et les matinées.'),
('Casque du Rire','armure','rare','joie+25', (SELECT id_element FROM ElementMagique WHERE nom='rire'), 'Résonne quand on se moque.'),
('Cape du Vent','armure','rare','levitation+25', (SELECT id_element FROM ElementMagique WHERE nom='vent'), 'Ne pèse rien mais coûte cher.'),
('Manteau de Brume','armure','rare','discretion+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Favori des espions parfumés.'),
('Bouclier des Astres','armure','legendaire','reflexion+200', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Réfléchit les constellations et les sorts.'),
('Tunique des Échos','armure','epique','resonance+80', (SELECT id_element FROM ElementMagique WHERE nom='chant'), 'Répète les compliments à l’infini.'),
('Armure des Titans','armure','mythique','titan+300', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Créée à partir d’un fragment d’étoile.'),
('Amulette du Zénith','accessoire','epique','zenith+80', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Renforce le porteur à midi pile.'),
('Bague de l’Ombre','accessoire','rare','furtivite+25', (SELECT id_element FROM ElementMagique WHERE nom='ombre'), 'Devient invisible en plein jour.'),
('Anneau du Temps','accessoire','legendaire','chrono+200', (SELECT id_element FROM ElementMagique WHERE nom='temps'), 'Décale les rendez-vous d’un quart d’heure.'),
('Broche de l’Aube','accessoire','rare','halo+25', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Brille aux compliments sincères.'),
('Bracelet Runique','accessoire','rare','lecture+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Inscrit les émotions du porteur.'),
('Couronne des Saisons','accessoire','epique','saison+80', (SELECT id_element FROM ElementMagique WHERE nom='herbe'), 'Change de fleurs selon la lune.'),
('Ceinture du Golem','accessoire','epique','stabilite+80', (SELECT id_element FROM ElementMagique WHERE nom='terre'), 'Augmente la stabilité émotionnelle.'),
('Cape du Crépuscule','accessoire','legendaire','ombre+200', (SELECT id_element FROM ElementMagique WHERE nom='ténèbres'), 'Camoufle dans la pénombre et dans les soirées mondaines.'),
('Talisman du Rire','accessoire','rare','bonnehumeur+25', (SELECT id_element FROM ElementMagique WHERE nom='rire'), 'Désamorce les disputes par éclats incontrôlés.'),
('Pendentif d’Obsidienne','accessoire','rare','loyaute+25', (SELECT id_element FROM ElementMagique WHERE nom='lave'), 'Symbole de loyauté et de migraine.'),
('Collier du Beurre Divin','accessoire','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='gras'), 'Améliore la digestion mystique.'),
('Bague du Vent','accessoire','rare','suspension+25', (SELECT id_element FROM ElementMagique WHERE nom='vent'), 'Fait flotter les manches trop longues.'),
('Broche du Feu','accessoire','epique','flamme+80', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'S’embrase pour exprimer le désaccord.'),
('Anneau du Sel','accessoire','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='sel'), 'Protège du mauvais goût.'),
('Talisman du Thé','accessoire','rare','apaisement+25', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Diffuse une odeur apaisante.'),
('Pendentif des Brumes','accessoire','rare','voile+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Cache les émotions derrière un voile.'),
('Couronne de Raclette','accessoire','epique','festin+80', (SELECT id_element FROM ElementMagique WHERE nom='raclette'), 'Chef-d’œuvre de la mode fondue.'),
('Bague du Courage','accessoire','rare','bravoure+25', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Ne fuit que les responsabilités.'),
('Bracelet des Étoiles','accessoire','legendaire','etoiles+200', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Gravé d’un ciel miniature.'),
('Amulette du Souvenir','accessoire','epique','souvenir+80', (SELECT id_element FROM ElementMagique WHERE nom='esprit'), 'Contient une image figée du passé.'),
('Médaillon du Silence','accessoire','epique','silence+80', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Empêche de dire des bêtises (parfois).'),
('Pioche de Fer','outil','commun','efficacite+1', (SELECT id_element FROM ElementMagique WHERE nom='métal'), 'Pour creuser plus vite que ses regrets.'),
('Marteau de Forgeron','outil','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='métal'), 'Indispensable, lourd, fidèle.'),
('Trousse de Soin','consommable','rare','soin+25', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Contient plus de pansements que d’espoir.'),
('Potion de Mana','consommable','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Goût myrtille, effet temporaire.'),
('Potion de Vie','consommable','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Remonte le moral et les points de vie.'),
('Élixir de Lune','consommable','rare','vision+25', (SELECT id_element FROM ElementMagique WHERE nom='lune'), 'Illumine les pensées nocturnes.'),
('Kit de Croissant','outil','commun','cuisine+1', (SELECT id_element FROM ElementMagique WHERE nom='beurre'), 'Pour les artisans du petit-déjeuner.'),
('Loupe du Savoir','outil','rare','analyse+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Révèle les erreurs de grammaire magique.'),
('Boussole Runique','outil','rare','guidage+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Indique la direction la plus dramatique.'),
('Sac de Brume','outil','rare','evasif+25', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Permet de s’évaporer en cas de malaise.'),
('Encens du Calme','consommable','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Éteint la colère (et les bougies).'),
('Huile de Griffon','consommable','rare','charisme+25', (SELECT id_element FROM ElementMagique WHERE nom='air'), 'Rend les cheveux soyeux et les griffons jaloux.'),
('Flasque du Courage Liquide','consommable','rare','courage+25', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Aide avant les discours.'),
('Larme de Dragon','consommable','epique','ignition+80', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Un ingrédient rare pour des potions puissantes.'),
('Larme de Sirène','consommable','epique','charme+80', (SELECT id_element FROM ElementMagique WHERE nom='eau'), 'Utilisée dans les élixirs de charme.'),
('Parchemin améliorant Enchanté','outil','epique','craft+80', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Utilisé pour augmenter la rareté des objets à leur création.'),
('Plume de Phénix','outil','legendaire','renaissance+200', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Indispensable pour les mages écrivains.'),
('Chaudron de Voyage','outil','commun',NULL, (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Toujours chaud, jamais propre.'),
('Torche Infinie','outil','rare','flamme+25', (SELECT id_element FROM ElementMagique WHERE nom='feu'), 'Ne s’éteint qu’en cas de bâillement collectif.'),
('Pierre de Téléportation','outil','epique','teleportation+80', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Fonctionne, mais rarement vers la bonne destination.'),
('Livre de Cuisine Runique','outil','rare','recette+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Les recettes changent à chaque pleine lune.'),
('Tente de l’Oubli','outil','epique','sommeil+80', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Fait dormir quiconque y entre (même debout).'),
('Corde du Destin','outil','rare','destin+25', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Se noue selon les choix du porteur.'),
('Poche Dimensionnelle','outil','legendaire','espace+200', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Contient tout sauf ce qu’on cherche.'),
('Sceptre des Arcanes','magique','legendaire','maitrise+200', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Canalise tous les éléments connus et inconnus.'),
('Orbe des Étoiles','magique','mythique','cosmique+300', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Renferme un fragment de cosmos.'),
('Grimoire Vivant','magique','legendaire','autolecture+200', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Écrit seul, corrige parfois le lecteur.'),
('Anneau des Six Éléments','magique','mythique','fusion+300', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Fusionne feu, eau, air, terre, lumière et ténèbres.'),
('Couronne des Dieux Muets','magique','mythique','autorite+300', (SELECT id_element FROM ElementMagique WHERE nom='sérénité'), 'Silencieusement toute-puissante.'),
('Diadème du Zénith','magique','legendaire','solaire+200', (SELECT id_element FROM ElementMagique WHERE nom='soleil'), 'Diffuse une aura solaire.'),
('Cape de Lune','magique','legendaire','lunaire+200', (SELECT id_element FROM ElementMagique WHERE nom='lune'), 'Change de couleur selon les phases.'),
('Talisman du Néant','magique','epique','antimagie+80', (SELECT id_element FROM ElementMagique WHERE nom='ténèbres'), 'N’existe que quand on le regarde.'),
('Orbe de Brume','magique','epique','brouillard+80', (SELECT id_element FROM ElementMagique WHERE nom='brume'), 'Libère un voile protecteur.'),
('Cristal d’Âme','magique','legendaire','memoire+200', (SELECT id_element FROM ElementMagique WHERE nom='esprit'), 'Contient la mémoire d’un ancien héros.'),
('Pierre de Zéphyr','magique','rare','zephyr+25', (SELECT id_element FROM ElementMagique WHERE nom='air'), 'Souffle un vent d’apaisement.'),
('Cœur de Raclette','magique','epique','fondant+80', (SELECT id_element FROM ElementMagique WHERE nom='raclette'), 'Chaud, fondant et dangereux.'),
('Sphère du Temps','magique','legendaire','suspension+200', (SELECT id_element FROM ElementMagique WHERE nom='temps'), 'Permet de suspendre l’instant parfait.'),
('Lanterne Astrale','magique','epique','guidage+80', (SELECT id_element FROM ElementMagique WHERE nom='astre'), 'Guide les voyageurs du firmament.'),
('Relique du Premier Mage','magique','mythique','autorite+300', (SELECT id_element FROM ElementMagique WHERE nom='arcane'), 'Son nom seul déclenche la révérence.'),
('Griffon Mécanique','magique','epique','monture+80', (SELECT id_element FROM ElementMagique WHERE nom='métal'), 'Monture d’acier et d’orgueil.'),
('Livre des Ombres','magique','epique','secrets+80', (SELECT id_element FROM ElementMagique WHERE nom='ombre'), 'Recueille les secrets chuchotés.'),
('Miroir de Vérité','magique','legendaire','revelation+200', (SELECT id_element FROM ElementMagique WHERE nom='lumière'), 'Révèle tout, même les mauvaises coupes de cheveux.'),
('Harpe Céleste','magique','legendaire','melodie+200', (SELECT id_element FROM ElementMagique WHERE nom='chant'), 'Ses notes guérissent les cœurs brisés.'),
('Ancre du Monde','magique','mythique','stabilite+300', (SELECT id_element FROM ElementMagique WHERE nom='terre'), 'Stabilise et réécrit à souhait la réalité autour d’elle.');


INSERT INTO EquipementRessource (equipement_id, ressource_id) VALUES
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Levain'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Levain'),            (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Hallebarde de l’Aube'),      (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Hallebarde de l’Aube'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau du Crépuscule'),     (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau du Crépuscule'),     (SELECT id_ressource FROM Ressource WHERE nom='Obsidienne brute')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc des Vents Boréaux'),     (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc des Vents Boréaux'),     (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Dague de Brume'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Dague de Brume'),            (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse d’Airain'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse d’Airain'),            (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance des Marées'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance des Marées'),          (SELECT id_ressource FROM Ressource WHERE nom='Perle d’eau pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton d’Obsidienne'),        (SELECT id_ressource FROM Ressource WHERE nom='Obsidienne brute')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton d’Obsidienne'),        (SELECT id_ressource FROM Ressource WHERE nom='Cristal de mana')),
((SELECT id_equipement FROM Equipement WHERE nom='Couteau des Sables'),        (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Couteau des Sables'),        (SELECT id_ressource FROM Ressource WHERE nom='Sable du désert')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée Solaire'),              (SELECT id_ressource FROM Ressource WHERE nom='Épée Solaire')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée Nocturne'),             (SELECT id_ressource FROM Ressource WHERE nom='Épée Nocturne')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc Astral'),                (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc Astral'),                (SELECT id_ressource FROM Ressource WHERE nom='Poussière d’étoile')),
((SELECT id_equipement FROM Equipement WHERE nom='Faux du Néant'),             (SELECT id_ressource FROM Ressource WHERE nom='Faux du Néant')),
((SELECT id_equipement FROM Equipement WHERE nom='Pique du Zéphyr'),           (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Pique du Zéphyr'),           (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau des Forges Hurlantes'),(SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau des Forges Hurlantes'),(SELECT id_ressource FROM Ressource WHERE nom='Braise éternelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Hache de Givre'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Hache de Givre'),            (SELECT id_ressource FROM Ressource WHERE nom='Givre pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée Runique'),              (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée Runique'),              (SELECT id_ressource FROM Ressource WHERE nom='Cristal de mana')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc de l’Orage'),            (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc de l’Orage'),            (SELECT id_ressource FROM Ressource WHERE nom='Cœur d’orage')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton de l’Astrolithe'),     (SELECT id_ressource FROM Ressource WHERE nom='Bâton de l’Astrolithe')),
((SELECT id_equipement FROM Equipement WHERE nom='Dague de l’Ombre'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Dague de l’Ombre'),          (SELECT id_ressource FROM Ressource WHERE nom='Essence d’ombre')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée des Ancêtres'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée des Ancêtres'),         (SELECT id_ressource FROM Ressource WHERE nom='Encens ancestral')),
((SELECT id_equipement FROM Equipement WHERE nom='Sabre Chantant'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Sabre Chantant'),            (SELECT id_ressource FROM Ressource WHERE nom='Chant cristallin')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse Sismique'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse Sismique'),            (SELECT id_ressource FROM Ressource WHERE nom='Pierre tellurique')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance de l’Aurore'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance de l’Aurore'),         (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton du Temps Figé'),       (SELECT id_ressource FROM Ressource WHERE nom='Bâton du Temps Figé')),
((SELECT id_equipement FROM Equipement WHERE nom='Hache des Abîmes'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier trempé')),
((SELECT id_equipement FROM Equipement WHERE nom='Hache des Abîmes'),          (SELECT id_ressource FROM Ressource WHERE nom='Corail noir')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc Lunaire'),               (SELECT id_ressource FROM Ressource WHERE nom='Bois lunaire')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc Lunaire'),               (SELECT id_ressource FROM Ressource WHERE nom='Poudre sélène')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée de Sel'),               (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée de Sel'),               (SELECT id_ressource FROM Ressource WHERE nom='Sel marin')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton de Cendre'),           (SELECT id_ressource FROM Ressource WHERE nom='Bois calciné')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton de Cendre'),           (SELECT id_ressource FROM Ressource WHERE nom='Cendre ardente')),
((SELECT id_equipement FROM Equipement WHERE nom='Fronde du Chaos'),           (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Fronde du Chaos'),           (SELECT id_ressource FROM Ressource WHERE nom='Cristal chaotique')),
((SELECT id_equipement FROM Equipement WHERE nom='Hallebarde de l’Empire'),    (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Hallebarde de l’Empire'),    (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Lame d’Azur'),               (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Lame d’Azur'),               (SELECT id_ressource FROM Ressource WHERE nom='Plume d’azur')),
((SELECT id_equipement FROM Equipement WHERE nom='Fléau d’Or'),                (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Fléau d’Or'),                (SELECT id_ressource FROM Ressource WHERE nom='Lingot d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée des Échos'),            (SELECT id_ressource FROM Ressource WHERE nom='Épée des Échos')),
((SELECT id_equipement FROM Equipement WHERE nom='Gantelet Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Gantelet Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Rune gravée')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance des Âmes'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance des Âmes'),            (SELECT id_ressource FROM Ressource WHERE nom='Encens ancestral')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau de l’Éclipse'),      (SELECT id_ressource FROM Ressource WHERE nom='Marteau de l’Éclipse')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton de Feu Céleste'),      (SELECT id_ressource FROM Ressource WHERE nom='Bois sacré')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton de Feu Céleste'),      (SELECT id_ressource FROM Ressource WHERE nom='Braise éternelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc du Mirage'),             (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Arc du Mirage'),             (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Lame des Saisons'),          (SELECT id_ressource FROM Ressource WHERE nom='Lame des Saisons')),
((SELECT id_equipement FROM Equipement WHERE nom='Faux de Minuit'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Faux de Minuit'),            (SELECT id_ressource FROM Ressource WHERE nom='Essence d’ombre')),
((SELECT id_equipement FROM Equipement WHERE nom='Sabre du Rire'),             (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Sabre du Rire'),             (SELECT id_ressource FROM Ressource WHERE nom='Clochette joyeuse')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Beurre Tranchant'),  (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Beurre Tranchant'),  (SELECT id_ressource FROM Ressource WHERE nom='Beurre fin')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse à Poivre'),            (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Masse à Poivre'),            (SELECT id_ressource FROM Ressource WHERE nom='Poivre noir')),
((SELECT id_equipement FROM Equipement WHERE nom='Fléau des Miettes'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Fléau des Miettes'),         (SELECT id_ressource FROM Ressource WHERE nom='Farine blanche')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Silence'),           (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Épée du Silence'),           (SELECT id_ressource FROM Ressource WHERE nom='Voile de sérénité')),
((SELECT id_equipement FROM Equipement WHERE nom='Lame de la Raclette'),       (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Lame de la Raclette'),       (SELECT id_ressource FROM Ressource WHERE nom='Raclette affinée')),
((SELECT id_equipement FROM Equipement WHERE nom='Trident de la Mer Claire'),  (SELECT id_ressource FROM Ressource WHERE nom='Trident de la Mer Claire')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton du Souffle d’Azur'),   (SELECT id_ressource FROM Ressource WHERE nom='Bois sacré')),
((SELECT id_equipement FROM Equipement WHERE nom='Bâton du Souffle d’Azur'),   (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Lance du Zénith'),           (SELECT id_ressource FROM Ressource WHERE nom='Lance du Zénith')),
((SELECT id_equipement FROM Equipement WHERE nom='Armure du Levant'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Armure du Levant'),          (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Cuirasse du Zénith'),        (SELECT id_ressource FROM Ressource WHERE nom='Acier trempé')),
((SELECT id_equipement FROM Equipement WHERE nom='Cuirasse du Zénith'),        (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier des Brumes'),       (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier des Brumes'),       (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque des Profondeurs'),    (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque des Profondeurs'),    (SELECT id_ressource FROM Ressource WHERE nom='Corail noir')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron de l’Aube'),        (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron de l’Aube'),        (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants du Vent Libre'),       (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants du Vent Libre'),       (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Heaume du Silence'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Heaume du Silence'),         (SELECT id_ressource FROM Ressource WHERE nom='Voile de sérénité')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes des Neiges Bleues'),  (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes des Neiges Bleues'),  (SELECT id_ressource FROM Ressource WHERE nom='Givre pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier du Roc'),           (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier du Roc'),           (SELECT id_ressource FROM Ressource WHERE nom='Pierre brute')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique des Feuilles Vives'),(SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique des Feuilles Vives'),(SELECT id_ressource FROM Ressource WHERE nom='Herbes vives')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Tonnerre'),        (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Tonnerre'),        (SELECT id_ressource FROM Ressource WHERE nom='Cœur d’orage')),
((SELECT id_equipement FROM Equipement WHERE nom='Armure de la Lumière Pure'), (SELECT id_ressource FROM Ressource WHERE nom='Armure de la Lumière Pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Armure d’Obsidienne'),       (SELECT id_ressource FROM Ressource WHERE nom='Armure d’Obsidienne')),
((SELECT id_equipement FROM Equipement WHERE nom='Cotte de Brume'),            (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Cotte de Brume'),            (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Manteau du Froid Éternel'),  (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Manteau du Froid Éternel'),  (SELECT id_ressource FROM Ressource WHERE nom='Givre pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Sablier'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Sablier'),         (SELECT id_ressource FROM Ressource WHERE nom='Sable du temps')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants de l’Astral'),         (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants de l’Astral'),         (SELECT id_ressource FROM Ressource WHERE nom='Poussière d’étoile')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes de l’Aurore'),        (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes de l’Aurore'),        (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape de l’Ombre Déliée'),    (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape de l’Ombre Déliée'),    (SELECT id_ressource FROM Ressource WHERE nom='Essence d’ombre')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Beurre Ferme'),    (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Beurre Ferme'),    (SELECT id_ressource FROM Ressource WHERE nom='Beurre fin')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes à Raclette'),         (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Bottes à Raclette'),         (SELECT id_ressource FROM Ressource WHERE nom='Raclette affinée')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique du Thé Froid'),      (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique du Thé Froid'),      (SELECT id_ressource FROM Ressource WHERE nom='Feuille de thé')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier de Chantilly'),     (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier de Chantilly'),     (SELECT id_ressource FROM Ressource WHERE nom='Chantilly ferme')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Croissant Doré'),  (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Croissant Doré'),  (SELECT id_ressource FROM Ressource WHERE nom='Beurre fin')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron des Abysses'),      (SELECT id_ressource FROM Ressource WHERE nom='Acier trempé')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron des Abysses'),      (SELECT id_ressource FROM Ressource WHERE nom='Perle d’eau pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape de Givre'),             (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape de Givre'),             (SELECT id_ressource FROM Ressource WHERE nom='Givre pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Rune gravée')),
((SELECT id_equipement FROM Equipement WHERE nom='Cuirasse du Temps'),         (SELECT id_ressource FROM Ressource WHERE nom='Cuirasse du Temps')),
((SELECT id_equipement FROM Equipement WHERE nom='Heaume des Orages'),         (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Heaume des Orages'),         (SELECT id_ressource FROM Ressource WHERE nom='Cœur d’orage')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron d’Argile'),         (SELECT id_ressource FROM Ressource WHERE nom='Argile rouge')),
((SELECT id_equipement FROM Equipement WHERE nom='Plastron d’Argile'),         (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants du Sable'),            (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Gants du Sable'),            (SELECT id_ressource FROM Ressource WHERE nom='Sable du désert')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier de l’Aube'),        (SELECT id_ressource FROM Ressource WHERE nom='Acier sacré')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier de l’Aube'),        (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Rire'),            (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Casque du Rire'),            (SELECT id_ressource FROM Ressource WHERE nom='Clochette joyeuse')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape du Vent'),              (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape du Vent'),              (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Manteau de Brume'),          (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Manteau de Brume'),          (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Bouclier des Astres'),       (SELECT id_ressource FROM Ressource WHERE nom='Bouclier des Astres')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique des Échos'),         (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Tunique des Échos'),         (SELECT id_ressource FROM Ressource WHERE nom='Chant cristallin')),
((SELECT id_equipement FROM Equipement WHERE nom='Armure des Titans'),         (SELECT id_ressource FROM Ressource WHERE nom='Armure des Titans')),
((SELECT id_equipement FROM Equipement WHERE nom='Amulette du Zénith'),        (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Amulette du Zénith'),        (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague de l’Ombre'),          (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague de l’Ombre'),          (SELECT id_ressource FROM Ressource WHERE nom='Essence d’ombre')),
((SELECT id_equipement FROM Equipement WHERE nom='Anneau du Temps'),           (SELECT id_ressource FROM Ressource WHERE nom='Anneau du Temps')),
((SELECT id_equipement FROM Equipement WHERE nom='Broche de l’Aube'),          (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Broche de l’Aube'),          (SELECT id_ressource FROM Ressource WHERE nom='Perle d’aube')),
((SELECT id_equipement FROM Equipement WHERE nom='Bracelet Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bracelet Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Rune gravée')),
((SELECT id_equipement FROM Equipement WHERE nom='Couronne des Saisons'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Couronne des Saisons'),      (SELECT id_ressource FROM Ressource WHERE nom='Herbes vives')),
((SELECT id_equipement FROM Equipement WHERE nom='Ceinture du Golem'),         (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Ceinture du Golem'),         (SELECT id_ressource FROM Ressource WHERE nom='Pierre brute')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape du Crépuscule'),        (SELECT id_ressource FROM Ressource WHERE nom='Cape du Crépuscule')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Rire'),          (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Rire'),          (SELECT id_ressource FROM Ressource WHERE nom='Clochette joyeuse')),
((SELECT id_equipement FROM Equipement WHERE nom='Pendentif d’Obsidienne'),    (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Pendentif d’Obsidienne'),    (SELECT id_ressource FROM Ressource WHERE nom='Obsidienne brute')),
((SELECT id_equipement FROM Equipement WHERE nom='Collier du Beurre Divin'),   (SELECT id_ressource FROM Ressource WHERE nom='Fil de lin')),
((SELECT id_equipement FROM Equipement WHERE nom='Collier du Beurre Divin'),   (SELECT id_ressource FROM Ressource WHERE nom='Beurre fin')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague du Vent'),             (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague du Vent'),             (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Broche du Feu'),             (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Broche du Feu'),             (SELECT id_ressource FROM Ressource WHERE nom='Braise éternelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Anneau du Sel'),             (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Anneau du Sel'),             (SELECT id_ressource FROM Ressource WHERE nom='Sel marin')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Thé'),           (SELECT id_ressource FROM Ressource WHERE nom='Fil de lin')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Thé'),           (SELECT id_ressource FROM Ressource WHERE nom='Feuille de thé')),
((SELECT id_equipement FROM Equipement WHERE nom='Pendentif des Brumes'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Pendentif des Brumes'),      (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Couronne de Raclette'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Couronne de Raclette'),      (SELECT id_ressource FROM Ressource WHERE nom='Raclette affinée')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague du Courage'),          (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Bague du Courage'),          (SELECT id_ressource FROM Ressource WHERE nom='Essence de lumière')),
((SELECT id_equipement FROM Equipement WHERE nom='Bracelet des Étoiles'),      (SELECT id_ressource FROM Ressource WHERE nom='Bracelet des Étoiles')),
((SELECT id_equipement FROM Equipement WHERE nom='Amulette du Souvenir'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’or')),
((SELECT id_equipement FROM Equipement WHERE nom='Amulette du Souvenir'),      (SELECT id_ressource FROM Ressource WHERE nom='Encens ancestral')),
((SELECT id_equipement FROM Equipement WHERE nom='Médaillon du Silence'),      (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Médaillon du Silence'),      (SELECT id_ressource FROM Ressource WHERE nom='Voile de sérénité')),
((SELECT id_equipement FROM Equipement WHERE nom='Pioche de Fer'),             (SELECT id_ressource FROM Ressource WHERE nom='Fer')),
((SELECT id_equipement FROM Equipement WHERE nom='Pioche de Fer'),             (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau de Forgeron'),       (SELECT id_ressource FROM Ressource WHERE nom='Fer')),
((SELECT id_equipement FROM Equipement WHERE nom='Marteau de Forgeron'),       (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Trousse de Soin'),           (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Trousse de Soin'),           (SELECT id_ressource FROM Ressource WHERE nom='Herbes vives')),
((SELECT id_equipement FROM Equipement WHERE nom='Potion de Mana'),            (SELECT id_ressource FROM Ressource WHERE nom='Eau pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Potion de Mana'),            (SELECT id_ressource FROM Ressource WHERE nom='Cristal de mana')),
((SELECT id_equipement FROM Equipement WHERE nom='Potion de Vie'),             (SELECT id_ressource FROM Ressource WHERE nom='Eau pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Potion de Vie'),             (SELECT id_ressource FROM Ressource WHERE nom='Herbes vives')),
((SELECT id_equipement FROM Equipement WHERE nom='Élixir de Lune'),            (SELECT id_ressource FROM Ressource WHERE nom='Eau pure')),
((SELECT id_equipement FROM Equipement WHERE nom='Élixir de Lune'),            (SELECT id_ressource FROM Ressource WHERE nom='Poudre sélène')),
((SELECT id_equipement FROM Equipement WHERE nom='Kit de Croissant'),          (SELECT id_ressource FROM Ressource WHERE nom='Farine blanche')),
((SELECT id_equipement FROM Equipement WHERE nom='Kit de Croissant'),          (SELECT id_ressource FROM Ressource WHERE nom='Beurre fin')),
((SELECT id_equipement FROM Equipement WHERE nom='Loupe du Savoir'),           (SELECT id_ressource FROM Ressource WHERE nom='Verre poli')),
((SELECT id_equipement FROM Equipement WHERE nom='Loupe du Savoir'),           (SELECT id_ressource FROM Ressource WHERE nom='Argent pur')),
((SELECT id_equipement FROM Equipement WHERE nom='Boussole Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Boussole Runique'),          (SELECT id_ressource FROM Ressource WHERE nom='Rune gravée')),
((SELECT id_equipement FROM Equipement WHERE nom='Sac de Brume'),              (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Sac de Brume'),              (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Encens du Calme'),           (SELECT id_ressource FROM Ressource WHERE nom='Résine odorante')),
((SELECT id_equipement FROM Equipement WHERE nom='Encens du Calme'),           (SELECT id_ressource FROM Ressource WHERE nom='Herbes vives')),
((SELECT id_equipement FROM Equipement WHERE nom='Huile de Griffon'),          (SELECT id_ressource FROM Ressource WHERE nom='Huile fine')),
((SELECT id_equipement FROM Equipement WHERE nom='Huile de Griffon'),          (SELECT id_ressource FROM Ressource WHERE nom='Plume de griffon')),
((SELECT id_equipement FROM Equipement WHERE nom='Flasque du Courage Liquide'),(SELECT id_ressource FROM Ressource WHERE nom='Verre poli')),
((SELECT id_equipement FROM Equipement WHERE nom='Flasque du Courage Liquide'),(SELECT id_ressource FROM Ressource WHERE nom='Épices fortes')),
((SELECT id_equipement FROM Equipement WHERE nom='Larme de Dragon'),           (SELECT id_ressource FROM Ressource WHERE nom='Larme de Dragon')),
((SELECT id_equipement FROM Equipement WHERE nom='Larme de Sirène'),           (SELECT id_ressource FROM Ressource WHERE nom='Larme de Sirène')),
((SELECT id_equipement FROM Equipement WHERE nom='Parchemin améliorant Enchanté'),(SELECT id_ressource FROM Ressource WHERE nom='Peau parcheminée')),
((SELECT id_equipement FROM Equipement WHERE nom='Parchemin améliorant Enchanté'),(SELECT id_ressource FROM Ressource WHERE nom='Encre runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Plume de Phénix'),           (SELECT id_ressource FROM Ressource WHERE nom='Plume de Phénix')),
((SELECT id_equipement FROM Equipement WHERE nom='Chaudron de Voyage'),        (SELECT id_ressource FROM Ressource WHERE nom='Fonte')),
((SELECT id_equipement FROM Equipement WHERE nom='Chaudron de Voyage'),        (SELECT id_ressource FROM Ressource WHERE nom='Bois noble')),
((SELECT id_equipement FROM Equipement WHERE nom='Torche Infinie'),            (SELECT id_ressource FROM Ressource WHERE nom='Bois résineux')),
((SELECT id_equipement FROM Equipement WHERE nom='Torche Infinie'),            (SELECT id_ressource FROM Ressource WHERE nom='Braise éternelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Pierre de Téléportation'),   (SELECT id_ressource FROM Ressource WHERE nom='Gemme astrale')),
((SELECT id_equipement FROM Equipement WHERE nom='Pierre de Téléportation'),   (SELECT id_ressource FROM Ressource WHERE nom='Cristal de mana')),
((SELECT id_equipement FROM Equipement WHERE nom='Livre de Cuisine Runique'),  (SELECT id_ressource FROM Ressource WHERE nom='Peau parcheminée')),
((SELECT id_equipement FROM Equipement WHERE nom='Livre de Cuisine Runique'),  (SELECT id_ressource FROM Ressource WHERE nom='Encre runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Tente de l’Oubli'),          (SELECT id_ressource FROM Ressource WHERE nom='Tissu runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Tente de l’Oubli'),          (SELECT id_ressource FROM Ressource WHERE nom='Onguent soporifique')),
((SELECT id_equipement FROM Equipement WHERE nom='Corde du Destin'),           (SELECT id_ressource FROM Ressource WHERE nom='Corde runique')),
((SELECT id_equipement FROM Equipement WHERE nom='Corde du Destin'),           (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Poche Dimensionnelle'),      (SELECT id_ressource FROM Ressource WHERE nom='Poche Dimensionnelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Sceptre des Arcanes'),       (SELECT id_ressource FROM Ressource WHERE nom='Sceptre des Arcanes')),
((SELECT id_equipement FROM Equipement WHERE nom='Orbe des Étoiles'),          (SELECT id_ressource FROM Ressource WHERE nom='Orbe des Étoiles')),
((SELECT id_equipement FROM Equipement WHERE nom='Grimoire Vivant'),           (SELECT id_ressource FROM Ressource WHERE nom='Grimoire Vivant')),
((SELECT id_equipement FROM Equipement WHERE nom='Anneau des Six Éléments'),   (SELECT id_ressource FROM Ressource WHERE nom='Anneau des Six Éléments')),
((SELECT id_equipement FROM Equipement WHERE nom='Couronne des Dieux Muets'),  (SELECT id_ressource FROM Ressource WHERE nom='Couronne des Dieux Muets')),
((SELECT id_equipement FROM Equipement WHERE nom='Diadème du Zénith'),         (SELECT id_ressource FROM Ressource WHERE nom='Diadème du Zénith')),
((SELECT id_equipement FROM Equipement WHERE nom='Cape de Lune'),              (SELECT id_ressource FROM Ressource WHERE nom='Cape de Lune')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Néant'),         (SELECT id_ressource FROM Ressource WHERE nom='Fil d’argent')),
((SELECT id_equipement FROM Equipement WHERE nom='Talisman du Néant'),         (SELECT id_ressource FROM Ressource WHERE nom='Fragment de néant')),
((SELECT id_equipement FROM Equipement WHERE nom='Orbe de Brume'),             (SELECT id_ressource FROM Ressource WHERE nom='Verre poli')),
((SELECT id_equipement FROM Equipement WHERE nom='Orbe de Brume'),             (SELECT id_ressource FROM Ressource WHERE nom='Brume condensée')),
((SELECT id_equipement FROM Equipement WHERE nom='Cristal d’Âme'),             (SELECT id_ressource FROM Ressource WHERE nom='Cristal d’Âme')),
((SELECT id_equipement FROM Equipement WHERE nom='Pierre de Zéphyr'),          (SELECT id_ressource FROM Ressource WHERE nom='Gemme astrale')),
((SELECT id_equipement FROM Equipement WHERE nom='Pierre de Zéphyr'),          (SELECT id_ressource FROM Ressource WHERE nom='Vent capturé')),
((SELECT id_equipement FROM Equipement WHERE nom='Cœur de Raclette'),          (SELECT id_ressource FROM Ressource WHERE nom='Fromage ancien')),
((SELECT id_equipement FROM Equipement WHERE nom='Cœur de Raclette'),          (SELECT id_ressource FROM Ressource WHERE nom='Braise éternelle')),
((SELECT id_equipement FROM Equipement WHERE nom='Sphère du Temps'),           (SELECT id_ressource FROM Ressource WHERE nom='Sphère du Temps')),
((SELECT id_equipement FROM Equipement WHERE nom='Lanterne Astrale'),          (SELECT id_ressource FROM Ressource WHERE nom='Verre poli')),
((SELECT id_equipement FROM Equipement WHERE nom='Lanterne Astrale'),          (SELECT id_ressource FROM Ressource WHERE nom='Poussière d’étoile')),
((SELECT id_equipement FROM Equipement WHERE nom='Relique du Premier Mage'),   (SELECT id_ressource FROM Ressource WHERE nom='Relique du Premier Mage')),
((SELECT id_equipement FROM Equipement WHERE nom='Griffon Mécanique'),         (SELECT id_ressource FROM Ressource WHERE nom='Rouages d’acier')),
((SELECT id_equipement FROM Equipement WHERE nom='Griffon Mécanique'),         (SELECT id_ressource FROM Ressource WHERE nom='Cuir tanné')),
((SELECT id_equipement FROM Equipement WHERE nom='Livre des Ombres'),          (SELECT id_ressource FROM Ressource WHERE nom='Peau parcheminée')),
((SELECT id_equipement FROM Equipement WHERE nom='Livre des Ombres'),          (SELECT id_ressource FROM Ressource WHERE nom='Encre d’ombre')),
((SELECT id_equipement FROM Equipement WHERE nom='Miroir de Vérité'),          (SELECT id_ressource FROM Ressource WHERE nom='Miroir de Vérité')),
((SELECT id_equipement FROM Equipement WHERE nom='Harpe Céleste'),             (SELECT id_ressource FROM Ressource WHERE nom='Harpe Céleste')),
((SELECT id_equipement FROM Equipement WHERE nom='Ancre du Monde'),            (SELECT id_ressource FROM Ressource WHERE nom='Ancre du Monde'));


INSERT INTO Marchand (nom, guilde_id) VALUES
('Bastien Roulecharrette', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Maëlle Pied-Léger', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Gaspard Sans-Frontière', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Ysolda Trois-Comptes', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Hector Long-Chemin', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Silas Vent-Dos', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Agnès du Balluchon', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Timéo Clair-Change', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Véra Troc-en-Main', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Otto Mille-Milles', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Nora Tirelaines', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Éloi Courta-Voie', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Aude Marchande', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Jules Bourlingueur', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Isolde Belle-Bourse', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Nadir Route-Sûre', (SELECT id_guilde FROM Guilde WHERE nom='Guilde des Émissaires')),
('Liv Raisonnable', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Émile Colis', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Dora l’Export', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Patrice Tarif', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Irène Bon-Échange', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Clovis du Convoi', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Séraphin Portefaix', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Faustine de l’Etal', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Amaury d’Échange', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Gwen Largesse', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Robin Desbons', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Hermine Clair-Contrat', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Sacha Main-Franche', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Roxane Trois-Poids', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Malo Sans-Détour', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Théa Compte-Droit', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Gaël Coursier', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Salomé Belle-Route', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Lazare Tire-Sac', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Nina Méli-Marchés', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Hector du Denier', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Oriane Pas-Lents', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Tao de l’Aubade', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Lina Clair-Prix', (SELECT id_guilde FROM Guilde WHERE nom='Chambre des Courtiers d’Arcanes')),
('Ismaël Mille-Offres', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Paula Barème', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Ewen Clair-Sceau', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Myrtil Honesta', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Noam Baroud', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Zélie Long-Parcours', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Ilyas Patience', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Mina Main-Leste', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Cléa Rance', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Marin Tisan', (SELECT id_guilde FROM Guilde WHERE nom='Syndicat des Courants')),
('Rémi Comptère', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Ambre Tiroir', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Nils Le Tarif', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Violette Belle-Voilure', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Ruben Chariot', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Hanae Clair-Cargo', (SELECT id_guilde FROM Guilde WHERE nom='Chariots de Fer')),
('Oscar Détaxe', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Livia Tout-Venant', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Béranger Juste-Poids', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Soline Sans-Rabais', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Thibault Lève-Tôt', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Ariane Tracé-Fin', (SELECT id_guilde FROM Guilde WHERE nom='Courtiers du Crépuscule')),
('Idriss Bon-Scellé', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Capucine des Escales', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Maelenn Sans-Perte', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Cyprien Porte-Roulotte', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Ophélie Doux-Transit', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Lorenzo Franc-Étal', (SELECT id_guilde FROM Guilde WHERE nom='Les Alibis Variables')),
('Maya Clair-Troc', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Yann Hémi-Route', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Daphné Chiffrage', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Elias Joie-de-Foire', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Prune Long-Marché', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Nadir Clair-Dédale', (SELECT id_guilde FROM Guilde WHERE nom='Compagnie des Fins de Mois')),
('Séréna Pèse-Nette', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Titouan des Caravans', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Léonie Bon-Qui-Pro-Quo', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Kilian Sans-Usure', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Olympe Droit-d’Octroi', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Victor Clair-Itinéraire', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages')),
('Tess Sans-Contrefaçon', (SELECT id_guilde FROM Guilde WHERE nom='Brasseurs des Orages'));


INSERT INTO MarchandTrajet (marchand_id, royaume_depart_id, royaume_arrivee_id, date_depart_lore, date_arrivee_lore) VALUES
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 0), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), 'An 421, Lune 1, Jour 3', 'An 421, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 0), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 1, Jour 17', 'An 421, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 0), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), 'An 421, Lune 2, Jour 4', 'An 421, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 0), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 2, Jour 18', 'An 421, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 421, Lune 2, Jour 3', 'An 421, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 2, Jour 17', 'An 421, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 421, Lune 3, Jour 4', 'An 421, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 3, Jour 18', 'An 421, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 421, Lune 4, Jour 5', 'An 421, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 4, Jour 19', 'An 421, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 421, Lune 5, Jour 6', 'An 421, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 5, Jour 20', 'An 421, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 421, Lune 6, Jour 3', 'An 421, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 1), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 17', 'An 421, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 2), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 421, Lune 3, Jour 3', 'An 421, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 2), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 3, Jour 17', 'An 421, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 421, Lune 4, Jour 3', 'An 421, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 4, Jour 17', 'An 421, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 421, Lune 5, Jour 4', 'An 421, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 5, Jour 18', 'An 421, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 421, Lune 6, Jour 5', 'An 421, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 19', 'An 421, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 421, Lune 7, Jour 6', 'An 421, Lune 7, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 7, Jour 20', 'An 421, Lune 7, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 421, Lune 8, Jour 3', 'An 421, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 3), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 8, Jour 17', 'An 421, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 421, Lune 5, Jour 3', 'An 421, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 5, Jour 17', 'An 421, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 421, Lune 6, Jour 4', 'An 421, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 18', 'An 421, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 421, Lune 7, Jour 5', 'An 421, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 7, Jour 19', 'An 421, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 421, Lune 8, Jour 6', 'An 421, Lune 8, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 8, Jour 20', 'An 421, Lune 8, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 421, Lune 1, Jour 3', 'An 421, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 4), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 1, Jour 17', 'An 421, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 421, Lune 6, Jour 3', 'An 421, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 17', 'An 421, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 421, Lune 7, Jour 4', 'An 421, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 7, Jour 18', 'An 421, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 421, Lune 8, Jour 5', 'An 421, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 8, Jour 19', 'An 421, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 421, Lune 1, Jour 6', 'An 421, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 5), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 1, Jour 20', 'An 421, Lune 1, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 6), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 421, Lune 7, Jour 3', 'An 421, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 6), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 7, Jour 17', 'An 421, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 7), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 421, Lune 8, Jour 3', 'An 421, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 7), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 8, Jour 17', 'An 421, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 7), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 421, Lune 1, Jour 4', 'An 421, Lune 1, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 7), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 1, Jour 18', 'An 421, Lune 1, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 8), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 421, Lune 1, Jour 3', 'An 421, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 8), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 1, Jour 17', 'An 421, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 421, Lune 2, Jour 3', 'An 421, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 2, Jour 17', 'An 421, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 421, Lune 3, Jour 4', 'An 421, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 3, Jour 18', 'An 421, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 421, Lune 4, Jour 5', 'An 421, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 4, Jour 19', 'An 421, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 421, Lune 5, Jour 6', 'An 421, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 5, Jour 20', 'An 421, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 421, Lune 6, Jour 3', 'An 421, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 9), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 17', 'An 421, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 10), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 421, Lune 3, Jour 3', 'An 421, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 10), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 3, Jour 17', 'An 421, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 10), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 421, Lune 4, Jour 4', 'An 421, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 10), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 4, Jour 18', 'An 421, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 421, Lune 4, Jour 3', 'An 421, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 4, Jour 17', 'An 421, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 421, Lune 5, Jour 4', 'An 421, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 5, Jour 18', 'An 421, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 421, Lune 6, Jour 5', 'An 421, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 11), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 421, Lune 6, Jour 19', 'An 421, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 422, Lune 5, Jour 3', 'An 422, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 5, Jour 17', 'An 422, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 422, Lune 6, Jour 4', 'An 422, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 6, Jour 18', 'An 422, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 422, Lune 7, Jour 5', 'An 422, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 7, Jour 19', 'An 422, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 422, Lune 8, Jour 6', 'An 422, Lune 8, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 12), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 8, Jour 20', 'An 422, Lune 8, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 13), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 6, Jour 3', 'An 422, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 13), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 6, Jour 17', 'An 422, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 13), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 7, Jour 4', 'An 422, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 13), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 7, Jour 18', 'An 422, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 422, Lune 7, Jour 3', 'An 422, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 7, Jour 17', 'An 422, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 422, Lune 8, Jour 4', 'An 422, Lune 8, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 8, Jour 18', 'An 422, Lune 8, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 422, Lune 1, Jour 5', 'An 422, Lune 1, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 1, Jour 19', 'An 422, Lune 1, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 422, Lune 2, Jour 6', 'An 422, Lune 2, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 2, Jour 20', 'An 422, Lune 2, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 422, Lune 3, Jour 3', 'An 422, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 14), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 3, Jour 17', 'An 422, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 15), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 422, Lune 8, Jour 3', 'An 422, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 15), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 422, Lune 8, Jour 17', 'An 422, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), 'An 422, Lune 1, Jour 3', 'An 422, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 1, Jour 17', 'An 422, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), 'An 422, Lune 2, Jour 4', 'An 422, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 2, Jour 18', 'An 422, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), 'An 422, Lune 3, Jour 5', 'An 422, Lune 3, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 16), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 3, Jour 19', 'An 422, Lune 3, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 422, Lune 2, Jour 3', 'An 422, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 2, Jour 17', 'An 422, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 422, Lune 3, Jour 4', 'An 422, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 3, Jour 18', 'An 422, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 422, Lune 4, Jour 5', 'An 422, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 17), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 4, Jour 19', 'An 422, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 18), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 422, Lune 3, Jour 3', 'An 422, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 18), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 3, Jour 17', 'An 422, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 18), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 422, Lune 4, Jour 4', 'An 422, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 18), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 4, Jour 18', 'An 422, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 19), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 422, Lune 4, Jour 3', 'An 422, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 19), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 4, Jour 17', 'An 422, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 19), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 422, Lune 5, Jour 4', 'An 422, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 19), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 5, Jour 18', 'An 422, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 20), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 422, Lune 5, Jour 3', 'An 422, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 20), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 5, Jour 17', 'An 422, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 20), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 422, Lune 6, Jour 4', 'An 422, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 20), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 6, Jour 18', 'An 422, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 21), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), 'An 422, Lune 6, Jour 3', 'An 422, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 21), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 6, Jour 17', 'An 422, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 422, Lune 7, Jour 3', 'An 422, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 7, Jour 17', 'An 422, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 422, Lune 8, Jour 4', 'An 422, Lune 8, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 8, Jour 18', 'An 422, Lune 8, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 422, Lune 1, Jour 5', 'An 422, Lune 1, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 1, Jour 19', 'An 422, Lune 1, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 422, Lune 2, Jour 6', 'An 422, Lune 2, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 2, Jour 20', 'An 422, Lune 2, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 422, Lune 3, Jour 3', 'An 422, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 22), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 3, Jour 17', 'An 422, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 422, Lune 8, Jour 3', 'An 422, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 8, Jour 17', 'An 422, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 422, Lune 1, Jour 4', 'An 422, Lune 1, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 1, Jour 18', 'An 422, Lune 1, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), 'An 422, Lune 2, Jour 5', 'An 422, Lune 2, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 23), (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 422, Lune 2, Jour 19', 'An 422, Lune 2, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 423, Lune 1, Jour 3', 'An 423, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 1, Jour 17', 'An 423, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 423, Lune 2, Jour 4', 'An 423, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 2, Jour 18', 'An 423, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 423, Lune 3, Jour 5', 'An 423, Lune 3, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 19', 'An 423, Lune 3, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 423, Lune 4, Jour 6', 'An 423, Lune 4, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 20', 'An 423, Lune 4, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), 'An 423, Lune 5, Jour 3', 'An 423, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 24), (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 17', 'An 423, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 423, Lune 2, Jour 3', 'An 423, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 2, Jour 17', 'An 423, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 423, Lune 3, Jour 4', 'An 423, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 18', 'An 423, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 423, Lune 4, Jour 5', 'An 423, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 19', 'An 423, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 423, Lune 5, Jour 6', 'An 423, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 25), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 20', 'An 423, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 423, Lune 3, Jour 3', 'An 423, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 17', 'An 423, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 423, Lune 4, Jour 4', 'An 423, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 18', 'An 423, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 423, Lune 5, Jour 5', 'An 423, Lune 5, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 26), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 19', 'An 423, Lune 5, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 423, Lune 4, Jour 3', 'An 423, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 17', 'An 423, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 423, Lune 5, Jour 4', 'An 423, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 18', 'An 423, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 423, Lune 6, Jour 5', 'An 423, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 6, Jour 19', 'An 423, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 423, Lune 7, Jour 6', 'An 423, Lune 7, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 27), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 7, Jour 20', 'An 423, Lune 7, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 423, Lune 5, Jour 3', 'An 423, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 17', 'An 423, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 423, Lune 6, Jour 4', 'An 423, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 6, Jour 18', 'An 423, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 423, Lune 7, Jour 5', 'An 423, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 28), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 7, Jour 19', 'An 423, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 423, Lune 6, Jour 3', 'An 423, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 6, Jour 17', 'An 423, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 423, Lune 7, Jour 4', 'An 423, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 7, Jour 18', 'An 423, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 423, Lune 8, Jour 5', 'An 423, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 8, Jour 19', 'An 423, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 423, Lune 1, Jour 6', 'An 423, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 1, Jour 20', 'An 423, Lune 1, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 423, Lune 2, Jour 3', 'An 423, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 29), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 2, Jour 17', 'An 423, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 30), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 423, Lune 7, Jour 3', 'An 423, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 30), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 7, Jour 17', 'An 423, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 31), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 423, Lune 8, Jour 3', 'An 423, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 31), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 8, Jour 17', 'An 423, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 423, Lune 1, Jour 3', 'An 423, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 1, Jour 17', 'An 423, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 423, Lune 2, Jour 4', 'An 423, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 2, Jour 18', 'An 423, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 423, Lune 3, Jour 5', 'An 423, Lune 3, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 19', 'An 423, Lune 3, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 423, Lune 4, Jour 6', 'An 423, Lune 4, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 20', 'An 423, Lune 4, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 423, Lune 5, Jour 3', 'An 423, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 32), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 17', 'An 423, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 423, Lune 2, Jour 3', 'An 423, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 2, Jour 17', 'An 423, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 423, Lune 3, Jour 4', 'An 423, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 18', 'An 423, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 423, Lune 4, Jour 5', 'An 423, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 19', 'An 423, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 423, Lune 5, Jour 6', 'An 423, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 33), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 20', 'An 423, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 34), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 423, Lune 3, Jour 3', 'An 423, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 34), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 3, Jour 17', 'An 423, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 34), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 423, Lune 4, Jour 4', 'An 423, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 34), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 18', 'An 423, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 423, Lune 4, Jour 3', 'An 423, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 4, Jour 17', 'An 423, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 423, Lune 5, Jour 4', 'An 423, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 5, Jour 18', 'An 423, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 423, Lune 6, Jour 5', 'An 423, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 35), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 423, Lune 6, Jour 19', 'An 423, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 36), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), 'An 424, Lune 5, Jour 3', 'An 424, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 36), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 5, Jour 17', 'An 424, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 36), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), 'An 424, Lune 6, Jour 4', 'An 424, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 36), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 6, Jour 18', 'An 424, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 424, Lune 6, Jour 3', 'An 424, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 6, Jour 17', 'An 424, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 424, Lune 7, Jour 4', 'An 424, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 7, Jour 18', 'An 424, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 424, Lune 8, Jour 5', 'An 424, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 8, Jour 19', 'An 424, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 424, Lune 1, Jour 6', 'An 424, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 37), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 1, Jour 20', 'An 424, Lune 1, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 424, Lune 7, Jour 3', 'An 424, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 7, Jour 17', 'An 424, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 424, Lune 8, Jour 4', 'An 424, Lune 8, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 8, Jour 18', 'An 424, Lune 8, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 424, Lune 1, Jour 5', 'An 424, Lune 1, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 1, Jour 19', 'An 424, Lune 1, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 424, Lune 2, Jour 6', 'An 424, Lune 2, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 38), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 2, Jour 20', 'An 424, Lune 2, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 39), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 424, Lune 8, Jour 3', 'An 424, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 39), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 424, Lune 8, Jour 17', 'An 424, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 424, Lune 1, Jour 3', 'An 424, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 1, Jour 17', 'An 424, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 424, Lune 2, Jour 4', 'An 424, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 2, Jour 18', 'An 424, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), 'An 424, Lune 3, Jour 5', 'An 424, Lune 3, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 40), (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 3, Jour 19', 'An 424, Lune 3, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 41), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), 'An 424, Lune 2, Jour 3', 'An 424, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 41), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 2, Jour 17', 'An 424, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 424, Lune 3, Jour 3', 'An 424, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 3, Jour 17', 'An 424, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 424, Lune 4, Jour 4', 'An 424, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 4, Jour 18', 'An 424, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 424, Lune 5, Jour 5', 'An 424, Lune 5, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 5, Jour 19', 'An 424, Lune 5, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 424, Lune 6, Jour 6', 'An 424, Lune 6, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 42), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 6, Jour 20', 'An 424, Lune 6, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 424, Lune 4, Jour 3', 'An 424, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 4, Jour 17', 'An 424, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 424, Lune 5, Jour 4', 'An 424, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 5, Jour 18', 'An 424, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 424, Lune 6, Jour 5', 'An 424, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 43), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 6, Jour 19', 'An 424, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 44), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 424, Lune 5, Jour 3', 'An 424, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 44), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 5, Jour 17', 'An 424, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 44), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 424, Lune 6, Jour 4', 'An 424, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 44), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 6, Jour 18', 'An 424, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 424, Lune 6, Jour 3', 'An 424, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 6, Jour 17', 'An 424, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 424, Lune 7, Jour 4', 'An 424, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 7, Jour 18', 'An 424, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 424, Lune 8, Jour 5', 'An 424, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 8, Jour 19', 'An 424, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 424, Lune 1, Jour 6', 'An 424, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 1, Jour 20', 'An 424, Lune 1, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), 'An 424, Lune 2, Jour 3', 'An 424, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 45), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 2, Jour 17', 'An 424, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 46), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), 'An 424, Lune 7, Jour 3', 'An 424, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 46), (SELECT id_royaume FROM Royaume WHERE nom='Ricotte'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 7, Jour 17', 'An 424, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 424, Lune 8, Jour 3', 'An 424, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 8, Jour 17', 'An 424, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 424, Lune 1, Jour 4', 'An 424, Lune 1, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 1, Jour 18', 'An 424, Lune 1, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 424, Lune 2, Jour 5', 'An 424, Lune 2, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 2, Jour 19', 'An 424, Lune 2, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 424, Lune 3, Jour 6', 'An 424, Lune 3, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 47), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 424, Lune 3, Jour 20', 'An 424, Lune 3, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 48), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 425, Lune 1, Jour 3', 'An 425, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 48), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 425, Lune 1, Jour 17', 'An 425, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 49), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 425, Lune 2, Jour 3', 'An 425, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 49), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 425, Lune 2, Jour 17', 'An 425, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 49), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 425, Lune 3, Jour 4', 'An 425, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 49), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'), 'An 425, Lune 3, Jour 18', 'An 425, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 50), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 425, Lune 1, Jour 3', 'An 425, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 50), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 1, Jour 17', 'An 425, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 50), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 425, Lune 2, Jour 4', 'An 425, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 50), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 2, Jour 18', 'An 425, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 51), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 425, Lune 2, Jour 3', 'An 425, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 51), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 2, Jour 17', 'An 425, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 51), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 425, Lune 3, Jour 4', 'An 425, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 51), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 3, Jour 18', 'An 425, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 52), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 425, Lune 3, Jour 3', 'An 425, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 52), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 3, Jour 17', 'An 425, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 52), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), 'An 425, Lune 4, Jour 4', 'An 425, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 52), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 4, Jour 18', 'An 425, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 53), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 425, Lune 4, Jour 3', 'An 425, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 53), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 4, Jour 17', 'An 425, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 53), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 425, Lune 5, Jour 4', 'An 425, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 53), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 5, Jour 18', 'An 425, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 54), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 425, Lune 5, Jour 3', 'An 425, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 54), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 5, Jour 17', 'An 425, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 6, Jour 3', 'An 425, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 6, Jour 17', 'An 425, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 7, Jour 4', 'An 425, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 7, Jour 18', 'An 425, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 8, Jour 5', 'An 425, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 8, Jour 19', 'An 425, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 1, Jour 6', 'An 425, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 55), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 1, Jour 20', 'An 425, Lune 1, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 56), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 425, Lune 1, Jour 3', 'An 425, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 56), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 1, Jour 17', 'An 425, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 57), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 425, Lune 2, Jour 3', 'An 425, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 57), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 2, Jour 17', 'An 425, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 57), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 425, Lune 3, Jour 4', 'An 425, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 57), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 3, Jour 18', 'An 425, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 58), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), 'An 425, Lune 3, Jour 3', 'An 425, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 58), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 3, Jour 17', 'An 425, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 59), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 4, Jour 3', 'An 425, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 59), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 4, Jour 17', 'An 425, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 59), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), 'An 425, Lune 5, Jour 4', 'An 425, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 59), (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 425, Lune 5, Jour 18', 'An 425, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 5, Jour 3', 'An 426, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 5, Jour 17', 'An 426, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 6, Jour 4', 'An 426, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 6, Jour 18', 'An 426, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 7, Jour 5', 'An 426, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 7, Jour 19', 'An 426, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 8, Jour 6', 'An 426, Lune 8, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 60), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 8, Jour 20', 'An 426, Lune 8, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 61), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 6, Jour 3', 'An 426, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 61), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 6, Jour 17', 'An 426, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 61), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 7, Jour 4', 'An 426, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 61), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 7, Jour 18', 'An 426, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 1, Jour 3', 'An 426, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 1, Jour 17', 'An 426, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 2, Jour 4', 'An 426, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 2, Jour 18', 'An 426, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 3, Jour 5', 'An 426, Lune 3, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 3, Jour 19', 'An 426, Lune 3, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), 'An 426, Lune 4, Jour 6', 'An 426, Lune 4, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 62), (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 4, Jour 20', 'An 426, Lune 4, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), 'An 426, Lune 2, Jour 3', 'An 426, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 2, Jour 17', 'An 426, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), 'An 426, Lune 3, Jour 4', 'An 426, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 3, Jour 18', 'An 426, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), 'An 426, Lune 4, Jour 5', 'An 426, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 4, Jour 19', 'An 426, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), 'An 426, Lune 5, Jour 6', 'An 426, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 63), (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 5, Jour 20', 'An 426, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 3, Jour 3', 'An 426, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 3, Jour 17', 'An 426, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 4, Jour 4', 'An 426, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 4, Jour 18', 'An 426, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 5, Jour 5', 'An 426, Lune 5, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 5, Jour 19', 'An 426, Lune 5, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 6, Jour 6', 'An 426, Lune 6, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 64), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 6, Jour 20', 'An 426, Lune 6, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 426, Lune 4, Jour 3', 'An 426, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 4, Jour 17', 'An 426, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 426, Lune 5, Jour 4', 'An 426, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 5, Jour 18', 'An 426, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 426, Lune 6, Jour 5', 'An 426, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 6, Jour 19', 'An 426, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), 'An 426, Lune 7, Jour 6', 'An 426, Lune 7, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 65), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 7, Jour 20', 'An 426, Lune 7, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 5, Jour 3', 'An 426, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 5, Jour 17', 'An 426, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 6, Jour 4', 'An 426, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 6, Jour 18', 'An 426, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 7, Jour 5', 'An 426, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 66), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 7, Jour 19', 'An 426, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 67), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), 'An 426, Lune 6, Jour 3', 'An 426, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 67), (SELECT id_royaume FROM Royaume WHERE nom='Burraton'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 6, Jour 17', 'An 426, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 68), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 1, Jour 3', 'An 426, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 68), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 1, Jour 17', 'An 426, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 68), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 426, Lune 2, Jour 4', 'An 426, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 68), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 2, Jour 18', 'An 426, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 2, Jour 3', 'An 426, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 2, Jour 17', 'An 426, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 3, Jour 4', 'An 426, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 3, Jour 18', 'An 426, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 4, Jour 5', 'An 426, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 4, Jour 19', 'An 426, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 5, Jour 6', 'An 426, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 5, Jour 20', 'An 426, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 426, Lune 6, Jour 3', 'An 426, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 69), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 6, Jour 17', 'An 426, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 70), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 3, Jour 3', 'An 426, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 70), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 3, Jour 17', 'An 426, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 70), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), 'An 426, Lune 4, Jour 4', 'An 426, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 70), (SELECT id_royaume FROM Royaume WHERE nom='Gélatine'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 4, Jour 18', 'An 426, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 71), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 4, Jour 3', 'An 426, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 71), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 4, Jour 17', 'An 426, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 71), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), 'An 426, Lune 5, Jour 4', 'An 426, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 71), (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 426, Lune 5, Jour 18', 'An 426, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 427, Lune 5, Jour 3', 'An 427, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 5, Jour 17', 'An 427, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 427, Lune 6, Jour 4', 'An 427, Lune 6, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 6, Jour 18', 'An 427, Lune 6, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 427, Lune 7, Jour 5', 'An 427, Lune 7, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 7, Jour 19', 'An 427, Lune 7, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), 'An 427, Lune 8, Jour 6', 'An 427, Lune 8, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 72), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 8, Jour 20', 'An 427, Lune 8, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 73), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 6, Jour 3', 'An 427, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 73), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 6, Jour 17', 'An 427, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 73), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 7, Jour 4', 'An 427, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 73), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'), 'An 427, Lune 7, Jour 18', 'An 427, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 74), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 427, Lune 1, Jour 3', 'An 427, Lune 1, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 74), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 1, Jour 17', 'An 427, Lune 1, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 74), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), 'An 427, Lune 2, Jour 4', 'An 427, Lune 2, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 74), (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 2, Jour 18', 'An 427, Lune 2, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 427, Lune 2, Jour 3', 'An 427, Lune 2, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 2, Jour 17', 'An 427, Lune 2, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 427, Lune 3, Jour 4', 'An 427, Lune 3, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 3, Jour 18', 'An 427, Lune 3, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 427, Lune 4, Jour 5', 'An 427, Lune 4, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 4, Jour 19', 'An 427, Lune 4, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), 'An 427, Lune 5, Jour 6', 'An 427, Lune 5, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 75), (SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 5, Jour 20', 'An 427, Lune 5, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 427, Lune 3, Jour 3', 'An 427, Lune 3, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 3, Jour 17', 'An 427, Lune 3, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 427, Lune 4, Jour 4', 'An 427, Lune 4, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 4, Jour 18', 'An 427, Lune 4, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 427, Lune 5, Jour 5', 'An 427, Lune 5, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 5, Jour 19', 'An 427, Lune 5, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 427, Lune 6, Jour 6', 'An 427, Lune 6, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 6, Jour 20', 'An 427, Lune 6, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), 'An 427, Lune 7, Jour 3', 'An 427, Lune 7, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 76), (SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 7, Jour 17', 'An 427, Lune 7, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 4, Jour 3', 'An 427, Lune 4, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 4, Jour 17', 'An 427, Lune 4, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 5, Jour 4', 'An 427, Lune 5, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 5, Jour 18', 'An 427, Lune 5, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 6, Jour 5', 'An 427, Lune 6, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 6, Jour 19', 'An 427, Lune 6, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 7, Jour 6', 'An 427, Lune 7, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 7, Jour 20', 'An 427, Lune 7, Jour 28'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), 'An 427, Lune 8, Jour 3', 'An 427, Lune 8, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 77), (SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 8, Jour 17', 'An 427, Lune 8, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 78), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), 'An 427, Lune 5, Jour 3', 'An 427, Lune 5, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 78), (SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 5, Jour 17', 'An 427, Lune 5, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 427, Lune 6, Jour 3', 'An 427, Lune 6, Jour 11'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 6, Jour 17', 'An 427, Lune 6, Jour 25'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 427, Lune 7, Jour 4', 'An 427, Lune 7, Jour 12'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 7, Jour 18', 'An 427, Lune 7, Jour 26'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 427, Lune 8, Jour 5', 'An 427, Lune 8, Jour 13'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 8, Jour 19', 'An 427, Lune 8, Jour 27'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), 'An 427, Lune 1, Jour 6', 'An 427, Lune 1, Jour 14'),
((SELECT id_marchand FROM Marchand ORDER BY id_marchand LIMIT 1 OFFSET 79), (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), 'An 427, Lune 1, Jour 20', 'An 427, Lune 1, Jour 28');


-- Spécialité locale (dates étalées pendant le voyage) : Raclettea → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Raclettea';

-- Spécialité locale (dates étalées pendant le voyage) : Raclettea → Beurre céleste
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste' LIMIT 1),
  26,
  2860.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Raclettea';

-- Spécialité locale (dates étalées pendant le voyage) : Raclettea → Souffle de raclette
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Souffle de raclette' LIMIT 1),
  18,
  2700.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Raclettea';

-- Spécialité locale (dates étalées pendant le voyage) : Banarnia → Sel de Banarnia
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sel de Banarnia' LIMIT 1),
  64,
  1920.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Banarnia';

-- Spécialité locale (dates étalées pendant le voyage) : Banarnia → Fruits confits
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fruits confits' LIMIT 1),
  36,
  2160.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Banarnia';

-- Spécialité locale (dates étalées pendant le voyage) : Banarnia → Feuilles d’or
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Feuilles d’or' LIMIT 1),
  6,
  5400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Banarnia';

-- Spécialité locale (dates étalées pendant le voyage) : Poissarie → Poisson fumé
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Poisson fumé' LIMIT 1),
  55,
  2750.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Poissarie';

-- Spécialité locale (dates étalées pendant le voyage) : Poissarie → Nacre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Nacre' LIMIT 1),
  20,
  3000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Poissarie';

-- Spécialité locale (dates étalées pendant le voyage) : Poissarie → Perles de sel
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Perles de sel' LIMIT 1),
  28,
  1680.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Poissarie';

-- Spécialité locale (dates étalées pendant le voyage) : Dragonflette → Cendre draconique
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Cendre draconique' LIMIT 1),
  18,
  5400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Dragonflette';

-- Spécialité locale (dates étalées pendant le voyage) : Dragonflette → Os de dragonnet
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Os de dragonnet' LIMIT 1),
  8,
  4800.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 8'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Dragonflette';

-- Spécialité locale (dates étalées pendant le voyage) : Dragonflette → Roche fondue
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Roche fondue' LIMIT 1),
  22,
  3080.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 10'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Dragonflette';

-- Spécialité locale (dates étalées pendant le voyage) : Dragonflette → Cendres de phoenix
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Cendres de phoenix' LIMIT 1),
  6,
  6000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Dragonflette';

-- Spécialité locale (dates étalées pendant le voyage) : Soupefroide → Soupe condensée
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée' LIMIT 1),
  90,
  1350.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Soupefroide';

-- Spécialité locale (dates étalées pendant le voyage) : Soupefroide → Brume en bouteille
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille' LIMIT 1),
  26,
  2080.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Soupefroide';

-- Spécialité locale (dates étalées pendant le voyage) : Soupefroide → Neige en conserve
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Neige en conserve' LIMIT 1),
  14,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Soupefroide';

-- Spécialité locale (dates étalées pendant le voyage) : Quichebourg → Farine
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Farine' LIMIT 1),
  100,
  1000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Quichebourg';

-- Spécialité locale (dates étalées pendant le voyage) : Quichebourg → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Quichebourg';

-- Spécialité locale (dates étalées pendant le voyage) : Quichebourg → Poudre de levain
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain' LIMIT 1),
  30,
  1650.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Quichebourg';

-- Spécialité locale (dates étalées pendant le voyage) : Éclairoisie → Éclat de lune
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Éclat de lune' LIMIT 1),
  28,
  4200.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Éclairoisie';

-- Spécialité locale (dates étalées pendant le voyage) : Éclairoisie → Feuilles d’or
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Feuilles d’or' LIMIT 1),
  6,
  5400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Éclairoisie';

-- Spécialité locale (dates étalées pendant le voyage) : Éclairoisie → Verre clair
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Verre clair' LIMIT 1),
  40,
  2000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Éclairoisie';

-- Spécialité locale (dates étalées pendant le voyage) : Boulangea → Farine
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Farine' LIMIT 1),
  100,
  1000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Boulangea';

-- Spécialité locale (dates étalées pendant le voyage) : Boulangea → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Boulangea';

-- Spécialité locale (dates étalées pendant le voyage) : Boulangea → Poudre de levain
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain' LIMIT 1),
  30,
  1650.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Boulangea';

-- Spécialité locale (dates étalées pendant le voyage) : Mozzarellia → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mozzarellia';

-- Spécialité locale (dates étalées pendant le voyage) : Mozzarellia → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mozzarellia';

-- Spécialité locale (dates étalées pendant le voyage) : Mozzarellia → Herbes
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Herbes' LIMIT 1),
  80,
  800.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mozzarellia';

-- Spécialité locale (dates étalées pendant le voyage) : Parmésia → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Parmésia';

-- Spécialité locale (dates étalées pendant le voyage) : Parmésia → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Parmésia';

-- Spécialité locale (dates étalées pendant le voyage) : Parmésia → Herbes
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Herbes' LIMIT 1),
  80,
  800.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Parmésia';

-- Spécialité locale (dates étalées pendant le voyage) : Ricotte → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Ricotte';

-- Spécialité locale (dates étalées pendant le voyage) : Ricotte → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Ricotte';

-- Spécialité locale (dates étalées pendant le voyage) : Ricotte → Lin
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lin' LIMIT 1),
  30,
  1200.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Ricotte';

-- Spécialité locale (dates étalées pendant le voyage) : Burraton → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Burraton';

-- Spécialité locale (dates étalées pendant le voyage) : Burraton → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Burraton';

-- Spécialité locale (dates étalées pendant le voyage) : Burraton → Huile d’olive antique
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Huile d’olive antique' LIMIT 1),
  18,
  2700.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Burraton';

-- Spécialité locale (dates étalées pendant le voyage) : Mascarponie → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mascarponie';

-- Spécialité locale (dates étalées pendant le voyage) : Mascarponie → Crème éternelle
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle' LIMIT 1),
  20,
  4000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mascarponie';

-- Spécialité locale (dates étalées pendant le voyage) : Mascarponie → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Mascarponie';

-- Spécialité locale (dates étalées pendant le voyage) : Chantillys → Crème éternelle
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle' LIMIT 1),
  20,
  4000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Chantillys';

-- Spécialité locale (dates étalées pendant le voyage) : Chantillys → Sucre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sucre' LIMIT 1),
  80,
  1600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Chantillys';

-- Spécialité locale (dates étalées pendant le voyage) : Chantillys → Gelée royale lunaire
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Gelée royale lunaire' LIMIT 1),
  8,
  3600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Chantillys';

-- Spécialité locale (dates étalées pendant le voyage) : Pralinie → Cacao
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Cacao' LIMIT 1),
  60,
  3000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Pralinie';

-- Spécialité locale (dates étalées pendant le voyage) : Pralinie → Sucre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sucre' LIMIT 1),
  80,
  1600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Pralinie';

-- Spécialité locale (dates étalées pendant le voyage) : Pralinie → Fruits confits
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fruits confits' LIMIT 1),
  36,
  2160.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Pralinie';

-- Spécialité locale (dates étalées pendant le voyage) : Caramellum → Sucre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sucre' LIMIT 1),
  80,
  1600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Caramellum';

-- Spécialité locale (dates étalées pendant le voyage) : Caramellum → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Caramellum';

-- Spécialité locale (dates étalées pendant le voyage) : Caramellum → Épices
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Épices' LIMIT 1),
  55,
  2750.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Caramellum';

-- Spécialité locale (dates étalées pendant le voyage) : Biscuitbourg → Poudre de biscuit
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Biscuitbourg';

-- Spécialité locale (dates étalées pendant le voyage) : Biscuitbourg → Farine
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Farine' LIMIT 1),
  100,
  1000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Biscuitbourg';

-- Spécialité locale (dates étalées pendant le voyage) : Biscuitbourg → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Biscuitbourg';

-- Spécialité locale (dates étalées pendant le voyage) : Gélatine → Gelée de mana
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Gelée de mana' LIMIT 1),
  24,
  4320.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Gélatine';

-- Spécialité locale (dates étalées pendant le voyage) : Gélatine → Fibre de champignon
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fibre de champignon' LIMIT 1),
  50,
  1250.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Gélatine';

-- Spécialité locale (dates étalées pendant le voyage) : Gélatine → Eau pure
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Eau pure' LIMIT 1),
  70,
  1400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Gélatine';

-- Spécialité locale (dates étalées pendant le voyage) : Sorbeterre → Glace éternelle
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle' LIMIT 1),
  12,
  6000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Sorbeterre';

-- Spécialité locale (dates étalées pendant le voyage) : Sorbeterre → Eau pure
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Eau pure' LIMIT 1),
  70,
  1400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Sorbeterre';

-- Spécialité locale (dates étalées pendant le voyage) : Sorbeterre → Neige en conserve
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Neige en conserve' LIMIT 1),
  14,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Sorbeterre';

-- Spécialité locale (dates étalées pendant le voyage) : Herbularia → Herbes
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Herbes' LIMIT 1),
  80,
  800.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Herbularia';

-- Spécialité locale (dates étalées pendant le voyage) : Herbularia → Racines magiques
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques' LIMIT 1),
  80,
  1600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Herbularia';

-- Spécialité locale (dates étalées pendant le voyage) : Herbularia → Brindilles de sagesse
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Brindilles de sagesse' LIMIT 1),
  40,
  1000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Herbularia';

-- Spécialité locale (dates étalées pendant le voyage) : Beurropolis → Beurre céleste
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste' LIMIT 1),
  26,
  2860.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Beurropolis';

-- Spécialité locale (dates étalées pendant le voyage) : Beurropolis → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Beurropolis';

-- Spécialité locale (dates étalées pendant le voyage) : Beurropolis → Lait
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lait' LIMIT 1),
  90,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Beurropolis';

-- Spécialité locale (dates étalées pendant le voyage) : Rizotto → Eau pure
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Eau pure' LIMIT 1),
  70,
  1400.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Rizotto';

-- Spécialité locale (dates étalées pendant le voyage) : Rizotto → Herbes
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Herbes' LIMIT 1),
  80,
  800.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Rizotto';

-- Spécialité locale (dates étalées pendant le voyage) : Rizotto → Lin
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Lin' LIMIT 1),
  30,
  1200.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Rizotto';

-- Spécialité locale (dates étalées pendant le voyage) : Patateland → Racines magiques
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques' LIMIT 1),
  80,
  1600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Patateland';

-- Spécialité locale (dates étalées pendant le voyage) : Patateland → Argile
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Argile' LIMIT 1),
  60,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Patateland';

-- Spécialité locale (dates étalées pendant le voyage) : Patateland → Sel
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sel' LIMIT 1),
  60,
  600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Patateland';

-- Spécialité locale (dates étalées pendant le voyage) : Croûtonie → Farine
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Farine' LIMIT 1),
  100,
  1000.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Croûtonie';

-- Spécialité locale (dates étalées pendant le voyage) : Croûtonie → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Croûtonie';

-- Spécialité locale (dates étalées pendant le voyage) : Croûtonie → Sel
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Sel' LIMIT 1),
  60,
  600.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Croûtonie';

-- Spécialité locale (dates étalées pendant le voyage) : Marmitonnie → Épices
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Épices' LIMIT 1),
  55,
  2750.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Marmitonnie';

-- Spécialité locale (dates étalées pendant le voyage) : Marmitonnie → Soupe condensée
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée' LIMIT 1),
  90,
  1350.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Marmitonnie';

-- Spécialité locale (dates étalées pendant le voyage) : Marmitonnie → Miel
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Miel' LIMIT 1),
  50,
  1500.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Marmitonnie';

-- Spécialité locale (dates étalées pendant le voyage) : Tartiflette Prime → Fromage sacré
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré' LIMIT 1),
  36,
  3240.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 6'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Tartiflette Prime';

-- Spécialité locale (dates étalées pendant le voyage) : Tartiflette Prime → Beurre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Beurre' LIMIT 1),
  70,
  2100.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 9'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Tartiflette Prime';

-- Spécialité locale (dates étalées pendant le voyage) : Tartiflette Prime → Poivre
INSERT INTO MarchandAchat (trajet_id, royaume_id, ressource_id, quantite, prix_total, date_achat_lore)
SELECT 
  t.id_trajet,
  t.royaume_arrivee_id,
  (SELECT id_ressource FROM Ressource WHERE nom='Poivre' LIMIT 1),
  30,
  900.00,
  CONCAT(
    SUBSTRING_INDEX(t.date_depart_lore, ',', 1), ', ',
    SUBSTRING_INDEX(SUBSTRING_INDEX(t.date_depart_lore, ',', 2), ',', -1), ', Jour 12'
  )
FROM MarchandTrajet t
JOIN Royaume r ON r.id_royaume = t.royaume_arrivee_id
WHERE r.nom = 'Tartiflette Prime';


INSERT INTO RoyaumeRessource (royaume_id, ressource_id, importance, note) VALUES
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Terres d’affinage millénaires'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), 'principale', 'Beurreries monastiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Souffle de raclette'), 'secondaire', 'Gaz fromager traditionnel'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sel de Banarnia'), 'principale', 'Marais salants bananiers'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fruits confits'), 'secondaire', 'Confiseries royales'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Feuilles d’or'), 'rare', 'Or comestible pour banquets'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Poisson fumé'), 'principale', 'Fumoirs côtiers'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Nacre'), 'secondaire', 'Ateliers de nacriers'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Perles de sel'), 'secondaire', 'Cristallisoirs littoraux'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 (SELECT id_ressource FROM Ressource WHERE nom='Cendre draconique'), 'principale', 'Coulées antiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 (SELECT id_ressource FROM Ressource WHERE nom='Os de dragonnet'), 'secondaire', 'Ossuaires contrôlés'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 (SELECT id_ressource FROM Ressource WHERE nom='Roche fondue'), 'principale', 'Carrières magmatiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 (SELECT id_ressource FROM Ressource WHERE nom='Cendres de phoenix'), 'rare', 'Récolte sous haute bénédiction'),
((SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), 'principale', 'Bouillons ancestraux'),
((SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 (SELECT id_ressource FROM Ressource WHERE nom='Brume en bouteille'), 'secondaire', 'Bouchage délicat'),
((SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 (SELECT id_ressource FROM Ressource WHERE nom='Neige en conserve'), 'rare', 'Chambres froides runiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Farine'), 'principale', 'Blés ventus'),
((SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Laiteries franches'),
((SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), 'secondaire', 'Levains bénits'),
((SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Farine'), 'principale', 'Moulins riverains'),
((SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Crèmeries'),
((SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 (SELECT id_ressource FROM Ressource WHERE nom='Poudre de levain'), 'secondaire', 'Recettes secrètes'),
((SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Farine'), 'principale', 'Pain des remparts'),
((SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Beurreries de plaine'),
((SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sel'), 'secondaire', 'Salines intérieures'),
((SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Caves gravées'),
((SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Ferme-étable modèle'),
((SELECT id_royaume FROM Royaume WHERE nom='Tartiflette Prime'),
 (SELECT id_ressource FROM Ressource WHERE nom='Poivre'), 'rare', 'Route épicée'),
((SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Éclat de lune'), 'principale', 'Falaises luminescentes'),
((SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Feuilles d’or'), 'secondaire', 'Doreurs lumineux'),
((SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Verre clair'), 'secondaire', 'Souffleurs d’exception'),
((SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Caillé céleste'),
((SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Prairies douces'),
((SELECT id_royaume FROM Royaume WHERE nom='Mozzarellia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), 'secondaire', 'Herbiers dédiés'),
((SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Meules chantantes'),
((SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Vaches philosophes'),
((SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), 'secondaire', 'Herbiers calcaires'),
((SELECT id_royaume FROM Royaume WHERE nom='Ricotte'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Douce ricotte'),
((SELECT id_royaume FROM Royaume WHERE nom='Ricotte'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Bergères poètes'),
((SELECT id_royaume FROM Royaume WHERE nom='Ricotte'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lin'), 'rare', 'Toiles laitières'),
((SELECT id_royaume FROM Royaume WHERE nom='Burraton'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Burras divines'),
((SELECT id_royaume FROM Royaume WHERE nom='Burraton'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Prés étoilés'),
((SELECT id_royaume FROM Royaume WHERE nom='Burraton'),
 (SELECT id_ressource FROM Ressource WHERE nom='Huile d’olive antique'), 'rare', 'Vergers antiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fromage sacré'), 'principale', 'Caissons crémeux'),
((SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), 'principale', 'Chant des fouets'),
((SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Douceur des laits'),
((SELECT id_royaume FROM Royaume WHERE nom='Chantillys'),
 (SELECT id_ressource FROM Ressource WHERE nom='Crème éternelle'), 'principale', 'Batailles de crème'),
((SELECT id_royaume FROM Royaume WHERE nom='Chantillys'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sucre'), 'secondaire', 'Sucreries d’orfèvre'),
((SELECT id_royaume FROM Royaume WHERE nom='Chantillys'),
 (SELECT id_ressource FROM Ressource WHERE nom='Gelée royale lunaire'), 'rare', 'Ruches nocturnes'),
((SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Cacao'), 'principale', 'Cacaoyères enchantées'),
((SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sucre'), 'secondaire', 'Sucriers bondissants'),
((SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fruits confits'), 'secondaire', 'Confiseurs royaux'),
((SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sucre'), 'principale', 'Fours caramelisés'),
((SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Mottes vaillantes'),
((SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),
 (SELECT id_ressource FROM Ressource WHERE nom='Épices'), 'secondaire', 'Route des chaudrons'),
((SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Poudre de biscuit'), 'principale', 'Biscotteries'),
((SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Farine'), 'secondaire', 'Granges bien pleines'),
((SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Crèmeries croustillantes'),
((SELECT id_royaume FROM Royaume WHERE nom='Gélatine'),
 (SELECT id_ressource FROM Ressource WHERE nom='Gelée de mana'), 'principale', 'Mages confiseurs'),
((SELECT id_royaume FROM Royaume WHERE nom='Gélatine'),
 (SELECT id_ressource FROM Ressource WHERE nom='Fibre de champignon'), 'secondaire', 'Caves humides'),
((SELECT id_royaume FROM Royaume WHERE nom='Gélatine'),
 (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), 'secondaire', 'Sources sucrées'),
((SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'),
 (SELECT id_ressource FROM Ressource WHERE nom='Glace éternelle'), 'principale', 'Glacières sacrées'),
((SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'),
 (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), 'secondaire', 'Neiges infusées'),
((SELECT id_royaume FROM Royaume WHERE nom='Sorbeterre'),
 (SELECT id_ressource FROM Ressource WHERE nom='Neige en conserve'), 'secondaire', 'Conserveries polaires'),
((SELECT id_royaume FROM Royaume WHERE nom='Herbularia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), 'principale', 'Jardins druidiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Herbularia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques'), 'secondaire', 'Sous-bois sages'),
((SELECT id_royaume FROM Royaume WHERE nom='Herbularia'),
 (SELECT id_ressource FROM Ressource WHERE nom='Brindilles de sagesse'), 'rare', 'Bois pensifs'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre céleste'), 'principale', 'Capitale du barattage'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'),
 (SELECT id_ressource FROM Ressource WHERE nom='Beurre'), 'secondaire', 'Écoles de beurriers'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lait'), 'secondaire', 'Vallées laitières'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),
 (SELECT id_ressource FROM Ressource WHERE nom='Eau pure'), 'principale', 'Rizières en terrasses'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),
 (SELECT id_ressource FROM Ressource WHERE nom='Herbes'), 'secondaire', 'Berges aromatiques'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),
 (SELECT id_ressource FROM Ressource WHERE nom='Lin'), 'secondaire', 'Toiles d’irrigation'),
((SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 (SELECT id_ressource FROM Ressource WHERE nom='Racines magiques'), 'principale', 'Patates inspirées'),
((SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 (SELECT id_ressource FROM Ressource WHERE nom='Argile'), 'secondaire', 'Terres grasses'),
((SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 (SELECT id_ressource FROM Ressource WHERE nom='Sel'), 'secondaire', 'Sel pour purée'),
((SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Épices'), 'principale', 'Bazars épicés'),
((SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Soupe condensée'), 'secondaire', 'Marmites communes'),
((SELECT id_royaume FROM Royaume WHERE nom='Marmitonnie'),
 (SELECT id_ressource FROM Ressource WHERE nom='Miel'), 'secondaire', 'Ruchers urbains');


INSERT INTO Competence (nom, exigence_espece_id, exigence_formation) VALUES
('Escrime classique',                          NULL,                                   'Apprentissage en salle d’armes'),
('Maîtrise de la hallebarde',                  NULL,                                   'Drill militaire'),
('Tir à l’arc longue portée',                  NULL,                                   'École de tir — niveau II'),
('Dague de revers',                            NULL,                                   'Stage d’assassin — module 1'),
('Lutte de fosse',                             (SELECT id_espece FROM Espece WHERE libelle='Orc'),      'Tradition tribale'),
('Bouclier tour',                              NULL,                                   'Garde royale — formation initiale'),
('Cavalier lancier',                           NULL,                                   'Académie des éperons'),
('Ambidextrie martiale',                       NULL,                                   'Programme “Mains Jumelles”'),
('Tir réflexe',                                (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Chasse sylvestre'),
('Maîtrise du fléau',                          NULL,                                   'Guilde des armes exotiques'),
('Combat à deux lames',                        NULL,                                   'Dojo des Méandres'),
('Projection contrôlée',                       NULL,                                   'Arts de préhension'),
('Riposte éclair',                             NULL,                                   'Escrime — perfectionnement'),
('Défense contre lances',                      NULL,                                   'Phalange — tactiques'),
('Maîtrise du bâton long',                     NULL,                                   'École monastique du Vent'),
('Pistage en milieu forestier',                (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Rite des Trois Traces'),
('Orientation sans astres',                    NULL,                                   'Survie — niveau avancé'),
('Herboristerie médicinale',                   NULL,                                   'Apothicairerie'),
('Coutellerie de camp',                        NULL,                                   'Atelier de forgeron ambulant'),
('Tannage express',                            (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Atelier du Cuir-Rond'),
('Cuisine de bivouac',                         NULL,                                   'Corvée de camp'),
('Pêche en eaux froides',                      NULL,                                   'Guilde des filets'),
('Escalade sans pitons',                       NULL,                                   'Ropes & Rocks'),
('Trappeur des hautes plaines',                NULL,                                   'Permis de piégeage'),
('Cartographie à main levée',                  NULL,                                   'Académie des arpenteurs'),
('Navigation fluviale',                        NULL,                                   'Pilote de rivière'),
('Prospection minière',                        (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Chant des veines'),
('Soufflage de verre',                         NULL,                                   'Atelier des verriers'),
('Tissage runique',                            NULL,                                   'Métier à glyphes — base'),
('Braise durable',                             NULL,                                   'Forge — thermie appliquée'),
('Étiquette de cour',                          NULL,                                   'Précis de bienséance'),
('Négociation commerciale',                    NULL,                                   'Chambre des marchands — module 2'),
('Détection du mensonge (comportement)',       NULL,                                   'Rhétorique & microexpressions'),
('Furtivité urbaine',                          (SELECT id_espece FROM Espece WHERE libelle='Gnome'),    'Ombres et ruelles'),
('Crochetage précis',                          NULL,                                   'Coffres & Compagnie'),
('Contrefaçon de sceaux',                      NULL,                                   'Scribe — spécialité héraldique'),
('Déguisement crédible',                       NULL,                                   'Théâtre pratique'),
('Intimidation non létale',                    NULL,                                   'Manuel du surveillant'),
('Oratoire inspirant',                         NULL,                                   'Rhétorique — chaire du Zénith'),
('Lecture labiale',                            NULL,                                   'Séminaire de veille'),
('Canalisation de mana',                       NULL,                                   'Théorie arcanique I'),
('Rituel de sécurisation',                     NULL,                                   'Cercles & ancrages'),
('Décharge arcanique basique',                 NULL,                                   'Pratique du cône'),
('Contresort élémentaire',                     NULL,                                   'Antagonismes I'),
('Vision du voile',                            NULL,                                   'Perception ésotérique'),
('Lévitation courte',                          NULL,                                   'Gym arcanique'),
('Barrière mineure',                           NULL,                                   'Sigillographie défensive'),
('Extraction de flux',                         NULL,                                   'Thaumurgie appliquée'),
('Silence focalisé',                           NULL,                                   'Acoustique mystique'),
('Marque occulte',                             NULL,                                   'Traceurs et sceaux'),
('Pyromancie pratique',                        NULL,                                   'École du Feu — année 1'),
('Cryomancie contrôlée',                       NULL,                                   'École de Glace — année 1'),
('Aéromancie directionnelle',                  NULL,                                   'École du Vent — année 1'),
('Géomancie tellurique',                       NULL,                                   'École de Terre — année 1'),
('Luminomancie apaisante',                     NULL,                                   'École de Lumière — année 1'),
('Umbromancie discrète',                       NULL,                                   'École des Ombres — année 1'),
('Électromancie statique',                     NULL,                                   'École de Foudre — année 1'),
('Hydromancie fluide',                         NULL,                                   'École de l’Eau — année 1'),
('Astromancie des cycles',                     NULL,                                   'Académie Astrale — tronc commun'),
('Chronomancie prudente',                      NULL,                                   'Institut Temporel — chartes'),
('Histoire de Solarys',                        NULL,                                   'Faculté d’Histoire'),
('Bestiaire appliqué',                         NULL,                                   'Muséum des créatures'),
('Anatomie comparée',                          NULL,                                   'Université — amphithéâtre 4'),
('Alchimie de base',                           NULL,                                   'Mortier & Cornue'),
('Toxicologie végétale',                       NULL,                                   'Jardin des remèdes'),
('Métallurgie',                                (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Forge maîtresse'),
('Runologie',                                  NULL,                                   'Déchiffrement de glyphes'),
('Théorie des portails',                       NULL,                                   'Topologie arcanique'),
('Géographie économique',                      NULL,                                   'Chambre des cartographes'),
('Économie marchande',                         NULL,                                   'Chambre des Courtiers'),
('Chant liturgique',                           NULL,                                   'Cloître des Voix'),
('Bénédictions mineures',                      NULL,                                   'Séminaire du Matin'),
('Harpe céleste — technique',                  NULL,                                   'Conservatoire Astral'),
('Peinture d’icônes',                          NULL,                                   'Atelier doré'),
('Calligraphie de combat',                     NULL,                                   'Encriers & Estocs'),
('Danse des voiles',                           NULL,                                   'Académie du Mouvement'),
('Théâtre d’improvisation',                    NULL,                                   'Scène ouverte'),
('Ingénierie de ponts',                        NULL,                                   'Bureau des ouvrages'),
('Balistique de trébuchet',                    NULL,                                   'École des machines'),
('Sape & contresape',                          NULL,                                   'Corps des mineurs'),
('Chariots de convoi',                         NULL,                                   'Logistique roulante'),
('Navigation côtière',                         NULL,                                   'Guildes maritimes'),
('Astronavigation',                            NULL,                                   'Académie Astrale — navigation'),
('Horlogerie fine',                            (SELECT id_espece FROM Espece WHERE libelle='Gnome'),    'Atelier des ressorts'),
('Automates mineurs',                          (SELECT id_espece FROM Espece WHERE libelle='Gnome'),    'Mécanomagie I'),
('Secourisme de champ de bataille',            NULL,                                   'Tente des chirurgiens'),
('Herbes calmantes',                           NULL,                                   'Herboristerie — module 1'),
('Sutures rapides',                            NULL,                                   'Chirurgie pratique'),
('Désinfection alchimique',                    NULL,                                   'Laboratoire sanitaire'),
('Antidotes courants',                         NULL,                                   'Pharmacopée'),
('Gestion du barda',                           NULL,                                   'Art du paquetage'),
('Réparation de fortune',                      NULL,                                   'Bricologie 101'),
('Serrage de rangs',                           NULL,                                   'Discipline de troupe'),
('Lecture des contrats (petites lignes)',      NULL,                                   'Faculté de Droit'),
('Comptabilité de caravane',                   NULL,                                   'Livre de comptes'),
('Art du pourboire',                           NULL,                                   'Pratiques d’auberge'),
('Poker elfique (sans triche)',                (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Salon des cartes'),
('Blague diplomatique (non offensante)',       NULL,                                   'Atelier de courtoisie'),
('Signe de la main silencieux',                NULL,                                   'Code des patrouilles'),
('Veille nocturne',                            NULL,                                   'Rondes & relais'),
('Barbe blindée',                              (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Traditions souterraines'),
('Méditation sylvestre',                       (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Racines profondes'),
('Rugissement d’intimidation',                 (SELECT id_espece FROM Espece WHERE libelle='Orc'),      'Rites de guerre'),
('Regain minéral',                             (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Respiration des cavernes'),
('Yeux des ténèbres',                          (SELECT id_espece FROM Espece WHERE libelle='Démon'),    'Voile intérieur'),
('Ailes disciplinées',                         (SELECT id_espece FROM Espece WHERE libelle='Ange'),     'Vol en formation'),
('Peau écailleuse',                            (SELECT id_espece FROM Espece WHERE libelle='Dragon'),   'Éveil draconique'),
('Chant abyssal',                              (SELECT id_espece FROM Espece WHERE libelle='Sirène'),   'Cantilènes marines'),
('Solidarité gobeline',                        (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),  'Ateliers collectifs'),
('Marche silencieuse trollesque',              (SELECT id_espece FROM Espece WHERE libelle='Troll'),    'Cours de délicatesse'),
('Souffle draconique',                         (SELECT id_espece FROM Espece WHERE libelle='Dragon'),   'Ascendance draconique'),
('Vol majestueux',                             (SELECT id_espece FROM Espece WHERE libelle='Wyverne'),  'Ailes développées'),
('Renaissance embrasée',                       (SELECT id_espece FROM Espece WHERE libelle='Phénix'),   'Feu intérieur'),
('Bénédiction astrale',                        (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),  'Lignée céleste'),
('Affinité infernale',                         (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),'Héritage infernal'),
('Tir elfique',                                (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Écoles sylvestres'),
('Chant ancien',                               (SELECT id_espece FROM Espece WHERE libelle='Elfe'),     'Chœur des bois'),
('Maîtrise de la forge naine',                 (SELECT id_espece FROM Espece WHERE libelle='Nain'),     'Guildes profondes'),
('Rage disciplinée',                           (SELECT id_espece FROM Espece WHERE libelle='Orc'),      'Maîtres d’armes orcs'),
('Astuce gnome',                               (SELECT id_espece FROM Espece WHERE libelle='Gnome'),    'Ateliers farfouilles'),
('Grâce sylphide',                             (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),   'Courants aériens'),
('Appel des marées',                           (SELECT id_espece FROM Espece WHERE libelle='Sirène'),   'Chant littoral'),
('Énigme éternelle',                           (SELECT id_espece FROM Espece WHERE libelle='Sphinx'),   'Scolae des déserts'),
('Métamorphose kitsune',                       (SELECT id_espece FROM Espece WHERE libelle='Kitsune'),  'Masques anciens'),
('Équilibre centaure',                         (SELECT id_espece FROM Espece WHERE libelle='Centaure'), 'Écuries solaires'),
('Volée harpyienne',                           (SELECT id_espece FROM Espece WHERE libelle='Harpyie'),  'Aérodrome sauvage'),
('Faveur dryadique',                           (SELECT id_espece FROM Espece WHERE libelle='Dryade'),   'Bois sacré'),
('Ingéniosité tanuki',                         (SELECT id_espece FROM Espece WHERE libelle='Tanuki'),   'Atours changeants'),
('Frappe oni',                                 (SELECT id_espece FROM Espece WHERE libelle='Oni'),      'Disciplines stoïques'),
('Ruse rakshasa',                              (SELECT id_espece FROM Espece WHERE libelle='Rakshasa'), 'Arts illusoires'),
('Souffle d’ifrit',                            (SELECT id_espece FROM Espece WHERE libelle='Ifrit'),    'Feux mouvants'),
('Tourbillon du djinn',                        (SELECT id_espece FROM Espece WHERE libelle='Djinn'),    'Rites des sables'),
('Chatoiement vampirique',                     (SELECT id_espece FROM Espece WHERE libelle='Vampire'),  'Nuit tenue'),
('Glyphes des liches',                         (SELECT id_espece FROM Espece WHERE libelle='Liche'),    'Clavicules secrètes'),
('Muse fée',                                   (SELECT id_espece FROM Espece WHERE libelle='Fée'),      'Conservatoire sylvain'),
('Percée drakéide',                            (SELECT id_espece FROM Espece WHERE libelle='Drakéide'), 'Voies des écailles'),
('Clarté aasimar',                             (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),  'Chœur céleste');


INSERT INTO Maladie (nom, effets, contagion, remede, taux_mortalite) VALUES
('Grippe du Griffon','Fièvre, courbatures, envie de voler du haut des meubles','gouttelettes','Infusion de plume de griffon et repos',0.8),
('Fièvre des Mines','Hypoxie, toux noire, vertiges','poussières souterraines','Masque de charbon actif, sirop d’herbes des cavernes',2.5),
('Peste des Brumes','Oppression thoracique, vision trouble','aérosols de brume stagnante','Encens purificateur et rayon de lumière bénie',7.0),
('Mal de Lune','Insomnie, somnambulisme poétique','exposition nocturne prolongée','Thé aux pétales de lune et musique douce',0.3),
('Rouille du Sang','Anémie, peau terne, goût métallique','contact avec outils rouillés','Sérum d’argile ferrique, purge alchimique',3.1),
('Gelure Astrale','Engourdissement, cristaux sous-cutanés','exposition aux flux stellaires','Pommade de givre doux, lampe astrale',1.2),
('Migraine Runique','Céphalées pulsées à vue de glyphes','proximité de runes actives','Masque noir + décoction de pavot astral',0.1),
('Bave Draconique','Éruptions cutanées, haleine fumante','projection de salive draconique','Cataplasme d’argile et talisman de refroidissement',4.8),
('Rire Hystérique','Rires incontrôlés, crampes abdominales','contact proche','Sonnette anti-comique et tisane amère',0.2),
('Tétanie du Trébuchet','Raideur, sursauts au bruit de corde','bruit répété des machines','Kinésie douce et onguent de lin chauffé',0.4),
('Rouge-Moine','Éruption rougeâtre en damier, chant monastique spontané','gouttelettes','Sirop d’encens et repos cloîtré',0.6),
('Sel dans les Veines','Déshydratation, peau craquelée','eau trop salée','Eau pure + baume hydratant de nacre',1.0),
('Goutte d’Or','Douleurs articulaires, doigts scintillants','banquets trop sucrés','Régime strict, infusion de feuilles d’or diluées',0.5),
('Froid du Zéphyr','Toux sèche, frissons, voix aérieuse','courants d’air viciés','Cape chaude, soupe condensée épicée',0.9),
('Mal de Mana','Nausées, tremblements, décharges involontaires','surcharge magique','Saignée de mana, gelée de mana à doses contrôlées',2.2),
('Lueur Aveuglante','Photophobie, larmes dorées','lumière sacrée excessive','Lunettes fumées, cataplasme de camomille lunaire',0.2),
('Brûlure de Foudre','Ampoules, spasmes, cheveux rebelles','arc électrique','Compresse froide, onguent de cœur d’orage',5.5),
('Moisson de Spores','Quinte de toux, voix grave','nuages de spores','Masque mycologique et sirop aux fibres de champignon',1.8),
('Fièvre de l’Encre','Doigts tachés, delirium calligraphique','partage de plumes','Purge légère, plume stérilisée, repos',0.3),
('Lenteur Temporelle','Perception ralentie, bâillements chroniques','anomalie temporelle locale','Réalignement horloger et infusion de sable de minuit',0.7),
('Narcolepsie des Sirènes','Somnolence au chant, rêves humides','chant sirénique','Cire auditive, café fort, éloignement',0.4),
('Coquelune','Toux argentée, paillettes nasales','aérienne légère','Pommade au sélène et tisane chaude',0.6),
('Fièvre des Souterrains','Fièvre, claustrophobie, ongles noirs','gouttelettes en cavités','Torches saines + bouillon salé',1.9),
('Syndrome du Héros','Témérité aiguë, amnésie du danger','propagation sociale','Groupe de parole, tisane d’humilité',0.1),
('Main de Pierre','Rigidité des doigts, peau granuleuse','poussière tellurique','Bains tièdes d’argile et massage d’huile fine',0.8),
('Blafardise','Teint pâle, cœur lent, soupirs poétiques','séjours trop longs sous l’astre','Lumière modérée, soupe fortifiante',0.5),
('Gorge de Braise','Brûlures pharyngées, voix rocailleuse','fumées de forge','Lait tiède au miel lunaire, repos vocal',0.6),
('Lombalgie du Porteur','Dos en compote, humeur pliante','charge excessive répétée','Ceinture du Golem (modèle médical), chaleur douce',0.0),
('Dermite d’Obsidienne','Plaques sombres, démangeaisons','poussière d’obsidienne','Huile de griffon, savon clair',0.3),
('Furoncles de Banshee','Sifflements d’oreille, frissons','hurlement à proximité','Bouchons d’oreille, bénédiction mineure',1.1),
('Crampes de Lames','Doigts crispés, rêves de duel','contact prolongé à froid','Étirements, bain chaud de lin',0.2),
('Poitrine d’Ancre','Oppression thoracique, lourdeur','séjours marins prolongés','Respiration guidée, potion de flottabilité',0.7),
('Vertige des Cimes','Nausées, déséquilibre','altitude + vent','Marche lente, infusion de zéphyr dilué',0.1),
('Tremblote Runique','Tremblements à proximité de glyphes instables','rayonnement arcanique','Gants isolants, éloignement, repos',0.6),
('Bouche de Sel','Langue piquante, soif extrême','ingestion saline','Eau pure à petites gorgées, fruits juteux',0.2),
('Peau de Raclette','Sudation aromatique, glissance sociale','banquets trop fondus','Jeûne court, charbon actif',0.05),
('Sommeil des Titans','Lourdeur extrême, ronflement tectonique','contact prolongé avec fragments stellaires','Sonnette astrale, infusion légère',0.9),
('Fièvre d’Argile','Chaleur interne, peau craquelée','boue contaminée','Hydratation, crème d’argile douce',0.4),
('Épine de Basilic','Spasmes, regard figé','griffure/épine','Antidote herboriste + compresse',6.2),
('Peste du Néant','Frissons, trou de mémoire, taches noires','anomalie de vide','Cloche de rappel, prière, sérum astral',12.0),
('Mal de l’Ombre','Hypothermie légère, pas feutrés','zones ombreuses denses','Lampe de poche sacrée, cape chaude',0.7),
('Toux Chantilly','Toux mousseuse, moustaches blanches','desserts partagés','Éviter la crème; tisane de thym',0.1),
('Folie du Croissant','Insomnie gourmande, murmures beurrés','boulangeries nocturnes','Décroissance sucrée, marche matinale',0.0),
('Rhume du Zénith','Éternuements lumineux','choc thermique solaire','Ombrelle, eau fraîche, repos',0.1),
('Fièvre de la Trêve','Agitation diplomatique, main qui signe seule','contact de plumes publiques','Gants, pause, infusion de calme',0.0),
('Piqûre d’Hydre','Hémorragie cyclique','morsure/piqûre','Suture rapide + sérum régénérant',9.5),
('Mélancolie des Ports','Maux d’âme, nostalgie saline','promiscuité portuaire','Musique, marche, eau sucrée',0.0),
('Goutte de Roc','Arthrite minérale','eau de source lithique','Cure chaude, baume minéral',0.3),
('Flux Inversé','Nausées de portail, désorientation','trafic de portails','Repos, gingembre, fermeture de portail',0.2);


INSERT INTO Loi (libelle, effet) VALUES
('Édit sur les Sorts Interdits','L’enseignement et l’usage public des sorts marqués “interdits” sont prohibés ; exceptions sur autorisation du Conseil Arcanique. Peines: amendes, confiscations, bannissement.'),
('Charte des Marchands Itinérants','Les caravanes doivent déclarer trajets, escorte et cargaison à l’entrée des royaumes ; droits de passage modulés selon risque.'),
('Code des Brumes Saines','Interdiction de brûler des braises soufrées près des villages ; zones de brume ventilées quotidiennement par la garde.'),
('Statut des Guildes Reconnaissables','Toute guilde opérant doit publier charte, hiérarchie, registres d’apprentis, sceau officiel.'),
('Tarif des Ports et Havres','Droits d’ancrage proportionnels au tonnage et au vent capturé ; exonération pour secours en mer.'),
('Protection des Forêts Sacrées','Abattage interdit dans périmètres druidiques ; replantation rituelle obligatoire.'),
('Loi sur les Reliques','Export des reliques classées soumis à permis ; trafic puni de prison et d’oubli public.'),
('Code du Travail des Mines','Temps de travail limité, ventilation obligatoire, primes de risque tellurique.'),
('Décret de Neutralité des Écoles','Les Écoles de magie restent neutres en période de conflit ; campus sanctuarisés.'),
('Loi sur les Denrées Bénies','Production, stockage, transport des ressources bénies (ex : Essence de lumière) soumis à traçabilité.'),
('Ordonnance anti-Contrefaçon','Sceaux et parchemins officiels protégés ; contrefacteurs marqués d’un “faux-sceau” public.'),
('Paix des Marchés','Interdiction de duel dans l’enceinte des marchés et aux abords des tavernes accréditées.'),
('Règlement des Portails','Ouverture de portails uniquement sur plages horaires autorisées ; balisage obligatoire.'),
('Loi des Côtes et Récifs','Protection des récifs à nacre ; pêche maillée et quotas par saison.'),
('Édit sur la Magie Temporelle','Manipulations temporelles limitées à des fenêtres de 5 min ; journalisation au sablier central.'),
('Loi sur les Cendres Draconiques','Stockage sécurisé, déclaration des volumes, interdiction d’inhalation récréative.'),
('Charte de la Lumière Publique','Éclairage nocturne des rues principales ; extinction à l’aube pour préserver la faune.'),
('Décret de Non-Prolifération Runique','Aucune rune explosive au sein des murs ; tests en carrière dédiée.'),
('Loi sur la Soie et le Lin','Normes de tissage, lutte contre mites arcanophages, labels de qualité.'),
('Code de l’Artisanat Béni','Ateliers d’objets saints contrôlés ; recyclage des rebuts auréolés.'),
('Loi des Ponts et Chaussées','Entretien trimestriel, balises anti-chute, priorité aux convois de secours.'),
('Décret Anti-Esclavage','Esclavage et servitude pour dette interdits ; indemnisation et réinsertion.'),
('Statut des Bêtes Savantes','Droits et protection des griffons et hippocampes de service ; retraite dorée.'),
('Loi sur l’Export de Mana','Plafond d’export annuel de cristaux de mana ; réserves stratégiques minimales.'),
('Règlement des Troupes en Ville','Armes liées et pointes gainées ; bivouacs hors remparts.'),
('Édit sur la Sûreté des Brasseries','Pressions de fût contrôlées ; sorties de secours obligatoires.'),
('Code des Archives','Consultation graduée des grimoires ; accès ouvert aux chroniques civiles.'),
('Loi des Foyers','Cheminées équipées de chapeaux anti-étincelles ; amendes en cas d’incendie négligent.'),
('Charte des Messagers','Courriers inviolables ; cloches de passage obligatoires de nuit.'),
('Décret sur la Santé Publique','Quarantaine en cas d’épidémie ; registres des guérisseurs et apothicaires.'),
('Loi des Grandes Routes','Patrouilles régulières ; bornes kilométriques enchantées.'),
('Règlement des Tournois','Armes émoussées, soins sur place, paris licenciés.'),
('Loi sur les Taxes Marchandes','Barème progressif selon rareté ; exemption pour denrées vitales.'),
('Décret d’Urbanisme Magique','Zones à faible flux arcanique pour hôpitaux et écoles.'),
('Statut des Tisanes Médicinales','Etiquetage des effets, contre-indications ; vente au comptoir autorisée.'),
('Ordonnance des Phares Astrals','Gardiens de phare assermentés ; rotations lunaires définies.'),
('Loi anti-Pollution Runique','Collecte des résidus de runes ; dépollution subventionnée.'),
('Code des Négociations','Traitements équitables, arbitres neutres ; interdiction de sortilèges d’influence.'),
('Édit de Paix Intérieure','Interdiction des invocations hostiles en zone habitée ; sanctions graduées.'),
('Loi des Refuges de Voyageurs','Abris obligatoires tous les 30 km ; eau potable garantie.');


INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Édit sur les Sorts Interdits','Décret de Neutralité des Écoles','Décret sur la Santé Publique')
  AND r.nom IN ('Raclettea','Banarnia','Poissarie','Dragonflette','Soupefroide','Quichebourg','Éclairoisie');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Tarif des Ports et Havres','Loi des Côtes et Récifs','Charte des Messagers')
  AND r.nom IN ('Poissarie','Banarnia','Éclairoisie','Marmitonnie');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Protection des Forêts Sacrées','Statut des Tisanes Médicinales','Code des Archives')
  AND r.nom IN ('Herbularia','Rizotto','Gélatine','Chantillys');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Loi sur les Cendres Draconiques','Décret de Non-Prolifération Runique','Règlement des Tournois')
  AND r.nom IN ('Dragonflette','Croûtonie','Biscuitbourg','Pralinie');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Loi sur l’Export de Mana','Règlement des Portails','Édit sur la Magie Temporelle')
  AND r.nom IN ('Éclairoisie','Beurropolis','Tartiflette Prime','Caramellum');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Loi sur les Taxes Marchandes','Charte des Marchands Itinérants','Paix des Marchés')
  AND r.nom IN ('Raclettea','Banarnia','Quichebourg','Boulangea','Mascarponie');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Loi des Ponts et Chaussées','Loi des Grandes Routes','Règlement des Troupes en Ville')
  AND r.nom IN ('Patateland','Croûtonie','Beurropolis','Rizotto','Parmésia');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Loi des Foyers','Édit sur la Sûreté des Brasseries','Ordonnance anti-Contrefaçon')
  AND r.nom IN ('Marmitonnie','Chantillys','Caramellum','Burraton');

INSERT INTO LoiRoyaume (loi_id, royaume_id)
SELECT l.id_loi, r.id_royaume FROM Loi l, Royaume r
WHERE l.libelle IN ('Décret Anti-Esclavage','Code du Travail des Mines','Statut des Guildes Reconnaissables')
  AND r.nom IN ('Raclettea','Dragonflette','Banarnia','Croûtonie');


INSERT INTO RelationDiplomatique (royaume_source_id, royaume_cible_id, type_relation, conditions, date_signature_lore, echeance) VALUES
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),   (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),   'alliance','Conseil commun mages-marchands','An 127 du Gouda', 'An 137'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),   (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),  'alliance','Couloirs maritimes protégés','An 128', 'An 138'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),    (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),'alliance','Échange académique & phares astrals','An 128', 'An 133'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),(SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),  'alliance','Approvisionnement acier & runes','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),'alliance','Veille côtière & météo magique','An 129', 'An 134'),
((SELECT id_royaume FROM Royaume WHERE nom='Patateland'),  (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),'alliance','Gardes-frontières partagés','An 130', 'An 140'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),(SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),   'trêve','Gel des taxes sur le métal','An 125', 'An 131'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),     (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'),'trêve','Partage des récoltes & recettes','An 127', 'An 132'),
((SELECT id_royaume FROM Royaume WHERE nom='Burraton'),    (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),   'trêve','Cessation des joutes sucrières','An 126', 'An 129'),
((SELECT id_royaume FROM Royaume WHERE nom='Gélatine'),    (SELECT id_royaume FROM Royaume WHERE nom='Chantillys'),'trêve','Quota mousse/gelée','An 129', 'An 133'),
((SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),  (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),'rivalité','Droits d’éclairage nocturne','An 120', 'An 140'),
((SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),   (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),'rivalité','Recettes salées protégées','An 118', 'An 138'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),  'rivalité','Monopole du beurre vs pain','An 123', 'An 135'),
((SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),'rivalité','Chevaux de frise thermiques','An 121', 'An 132'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),   'pacte_commercial','Poissons fumés contre bananes séchées','An 127', 'An 137'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),   (SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'),'pacte_commercial','Fromages fins contre crémiers d’élite','An 129', 'An 139'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),     (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),'pacte_commercial','Riz anciens contre tubercules rares','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),'pacte_commercial','Beurre clarifié vs sucre candi','An 130', 'An 140'),
((SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),  'pacte_commercial','Œufs & farine premium','An 128', 'An 133'),
((SELECT id_royaume FROM Royaume WHERE nom='Chantillys'),  (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),   'pacte_commercial','Crèmes vs noisettes grillées','An 127', 'An 137'),
((SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),    (SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),    'pacte_commercial','Vieilles meules vs riz sages','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),'accès_portuaire','Quais nocturnes balisés','An 126', 'An 131'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),   'accès_portuaire','Priorité aux convois bananiers','An 129', 'An 134'),
((SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),'accès_portuaire','Phare partagé & taxe réduite','An 125', 'An 135'),
((SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),   (SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'),'accès_portuaire','Entrepôts franches','An 127', 'An 132'),
((SELECT id_royaume FROM Royaume WHERE nom='Patateland'),  (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),  'défense_mutuelle','Patrouilles sur la Grande Route du Nord','An 128', 'An 138'),
((SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'), (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),  'défense_mutuelle','Garnisons alternées','An 127', 'An 137'),
((SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Pralinie'),   'défense_mutuelle','Alerte dessert de niveau 2','An 129', 'An 139'),
((SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),(SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),   'défense_mutuelle','Remparts et balistes','An 125', 'An 135'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),   (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),'pacte_commercial','Échanges académiques et luminaires','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),    (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),  'défense_mutuelle','Escortes maritimes mixtes','An 130', 'An 140'),
((SELECT id_royaume FROM Royaume WHERE nom='Beurropolis'), (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),  'pacte_commercial','Beurre vs fromages d’alpage','An 129', 'An 139'),
((SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),  (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),'pacte_commercial','Sucre raffiné vs œufs & farine','An 127', 'An 132'),
((SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'), (SELECT id_royaume FROM Royaume WHERE nom='Herbularia'),'pacte_commercial','Neiges vs herbes médicinales','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Rizotto'),     (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),   'alliance','Appellation conjointe des rizières','An 128', 'An 138'),
((SELECT id_royaume FROM Royaume WHERE nom='Gélatine'),    (SELECT id_royaume FROM Royaume WHERE nom='Burraton'),   'trêve','Stabilisation des desserts officiels','An 125', 'An 130'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),'rivalité','Quotas de charbon portuaire','An 122', 'An 140'),
((SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'), (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),'pacte_commercial','Luminaires routiers vs pommes de terre','An 127', 'An 137'),
((SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),    (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),'rivalité','Droits d’étal primeurs','An 121', 'An 139'),
((SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),   (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),'défense_mutuelle','Fortins alpins conjoints','An 126', 'An 136'),
((SELECT id_royaume FROM Royaume WHERE nom='Mascarponie'), (SELECT id_royaume FROM Royaume WHERE nom='Caramellum'),'pacte_commercial','Crème contre sucre filé','An 128', 'An 133'),
((SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),   (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),   'pacte_commercial','Poisson salé vs meules vieilles','An 129', 'An 139'),
((SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),   (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),'alliance','Four banal commun','An 127', 'An 137');


INSERT INTO Creature (espece_id, forces, faiblesses, dangerosite) VALUES
((SELECT id_espece FROM Espece WHERE libelle='Minotaure'),          'Charge, orientation labyrinthique',                  'Couloirs étroits, tissus rouges (?)',              'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Squelette'),          'Insensible au poison, discipline',                   'Masses contondantes, chants graves',               'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Goule'),              'Ténacité, charognerie',                              'Feu, clameurs',                                    'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Nécrophage'),         'Faim insatiable, fouille',                           'Feu, eau bénite gazeuse',                          'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Carcasse animée'),    'Obéissance, résilience',                             'Lumière vive, chocs répétés',                      'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Ombre'),              'Discrétion parfaite, drain de chaleur',              'Lumière d’aube, sel de Banarnia',                  'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Spectre'),            'Intangible, terreur',                                'Cloches d’argent, lumière pure',                   'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Banshee'),            'Cri mortel, phasage',                                'Cire d’oreille héroïque, runes apaisantes',        'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Banshee des Dunes'),  'Hurlement siphonnant, camoufle dans le sable',       'Pluie battante, miroirs',                          'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Loup-garou'),         'Propagation, morsure',                               'Argent, herbes vives',                             'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Rat-garou'),          'Nuées, transmission rapide',                         'Feu, colliers d’os sacrés',                        'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Ent'),                'Force sylvestre, enracinement',                      'Feu, scies runiques',                              'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Gardien runique'),    'Bouclier magique, frappe lourde',                    'Anti-magie, temps figé',                           'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Golem'),              'Carapace minérale, obéissance',                      'Eau vive, commandes runiques',                     'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Colosse d’obsidienne'),'Peau volcanique, lenteur implacable',               'Eau froide, pics vibrants',                        'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Griffon'),            'Vue perçante, piqué foudroyant',                     'Filets lourds, encens soporifique',                'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Roc'),                'Envergure immense, rafales',                         'Entraves de chaîne, fumées',                       'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Harpyie'),            'Vol stationnaire, cris désorientants',               'Silence magique, vents contraires',                'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Chauve-souris géante'),'Écholocalisation, nuées',                           'Lumière, tambours',                                'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Serpent de mer'),     'Vagues levées, constriction',                        'Foudres, bourdons marins',                         'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='kraken'),             'Tentacules massifs, succion',                        'Tonnerre rythmique, sel béni',                     'cataclysmique'),
((SELECT id_espece FROM Espece WHERE libelle='Tortue-mondelette'),  'Carapace immense, longévité',                        'Patience des mages, renversement',                 'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Hydre'),              'Têtes multiples, régénération',                      'Feu continu, ligatures d’airain',                  'cataclysmique'),
((SELECT id_espece FROM Espece WHERE libelle='Hydre des Abîmes'),   'Régénération accrue, pression abyssale',             'Lumière concentrée, fioles explosives',            'cataclysmique'),
((SELECT id_espece FROM Espece WHERE libelle='Ver des sables'),     'Souterrain, embuscade',                              'Eau, vibrations inverses',                         'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Serre-neige'),        'Froid mordant, camouflage neige',                    'Feu de camp, cloches',                             'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Yéti'),               'Camouflage neige, puissance',                        'Chaleur, clochettes joyeuses',                     'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Manticore'),          'Queue à pointes, charge féroce',                     'Boucliers courbes, poivre noir',                   'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Basilic'),            'Regard pétrifiant, dards',                           'Miroirs polis, chants dissonants',                 'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Chimère'),            'Flammes, venin, bonds',                              'Magie de l’équilibre, glace',                      'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Gargouille'),         'Pierre vivante, veille nocturne',                    'Marteaux lourds, huile de griffon',                'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Mimique'),            'Imitation d’objets, mâchoire surprise',              'Poudre révélatrice, chiens renifleurs',            'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Auroch ancestral'),   'Charge, peau épaisse',                               'Sifflets stridents, feu',                          'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Tigre prismatique'),  'Caméléon de couleurs, bonds',                        'Poussière d’étoile, éternuements de levain',       'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Sanglier runique'),   'Charge runée, groin fouisseur',                      'Sons clairs, lances',                               'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Cheval des brumes'),  'Galop intangible, discrétion',                       'Vent contraire, soleil',                           'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Crocodilion'),        'Mâchoire puissante, nage rapide',                    'Chaleur sèche, filets',                            'moderee'),
((SELECT id_espece FROM Espece WHERE libelle='Loup alpha'),         'Coordination de meute, vitesse',                     'Feu, pièges',                                      'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Slime'),              'Division, corrosion',                                'Sel, froid sec',                                   'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Homoncule'),          'Petite taille, espionnage',                          'Filets fins, sels alchimiques',                    'faible'),
((SELECT id_espece FROM Espece WHERE libelle='Cerbère'),            'Trois gueules, veille des seuils',                   'Musique douce, miel lunaire',                      'elevee'),
((SELECT id_espece FROM Espece WHERE libelle='Roc'),                'Rafales, transport d’éléphants',                     'Chaînes lourdes, fumées',                          'elevee');


-- Ajouter les lignées
INSERT INTO Personnage (nom, espece_id, lignee_id, royaume_origine_id, date_naissance_lore, statut_vie, date_deces_lore, cause_deces, mana_max, bio_courte) VALUES
/* =========================
   HUMAINS
   ========================= */
('Lara Tatouille',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 401, Lune 2, Jour 11','vivant',NULL,NULL,120,
 'Collectionne les épices rares et raconte des anecdotes de taverne.'),
('Jean Bonparleur',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 398, Lune 5, Jour 7','vivant',NULL,NULL,60,
 'Adore les débats amicaux et la rhétorique de comptoir.'),
('Armelle Armure',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 387, Lune 1, Jour 22','vivant',NULL,NULL,15,
 'Passionnée de métal chantant et de pierres polies.'),
('Guy D’armes',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 392, Lune 4, Jour 9','vivant',NULL,NULL,10,
 'Aime les marches à l’aube et les cartes bien pliées.'),
('Mireille Mirador',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 405, Lune 3, Jour 18','vivant',NULL,NULL,210,
 'Observe les constellations et note les phénomènes lumineux.'),
('Basile le Subtil',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 399, Lune 6, Jour 4','vivant',NULL,NULL,95,
 'Adepte des parfums marins et des mini-explosions contrôlées.'),
('Nina Rienafaire',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 410, Lune 2, Jour 5','vivant',NULL,NULL,30,
 'Fan de siestes artistiques et de poésie minimaliste.'),
('Hector Facteur',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 395, Lune 1, Jour 1','vivant',NULL,NULL,20,
 'Collectionne les timbres des royaumes et les sonneries de porte.'),
('Camille Cambriole',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 404, Lune 8, Jour 2','vivant',NULL,NULL,180,
 'Pratique l’acrobatie urbaine et l’art des nœuds élégants.'),
('Solène Lumière',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 402, Lune 2, Jour 21','vivant',NULL,NULL,320,
 'Médite au soleil levant et collectionne les vitraux miniatures.'),
('Martin d’Eau Douce',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 401, Lune 1, Jour 2','vivant',NULL,NULL,35,
 'Amateur de balades en barque et de coquillages insolites.'),
('Roxane Rapière',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 403, Lune 3, Jour 3','vivant',NULL,NULL,20,
 'Adepte d’exercices de précision et d’anthologies rimées.'),
('Noé Milleplans',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 402, Lune 4, Jour 5','vivant',NULL,NULL,300,
 'Adore les puzzles géants et les itinéraires improbables.'),
('Gaspard Sanspeur',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 400, Lune 5, Jour 8','vivant',NULL,NULL,14,
 'Fan de descentes en rappel improvisées et de défis absurdes.'),
('Édith Noteaiguë',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 404, Lune 7, Jour 11','vivant',NULL,NULL,520,
 'Collectionne les diapasons et fredonne des arpèges.'),
('Félix Fineplume',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 399, Lune 8, Jour 17','vivant',NULL,NULL,60,
 'Aime les belles lettres, le papier soyeux et l’encre bleue.'),
('Ysé Fiabledon',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 398, Lune 9, Jour 22','vivant',NULL,NULL,350,
 'Apprécie les œuvres caritatives et les casse-têtes logiques.'),
('Joachim Tourdecou',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 397, Lune 10, Jour 13','vivant',NULL,NULL,18,
 'Bricole des maquettes et collectionne les copeaux.'),
('Irma Iridescente',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 11, Jour 3','vivant',NULL,NULL,880,
 'Peint des halos et joue avec les reflets colorés.'),
('Bébert Tambour-Major',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 396, Lune 12, Jour 12','vivant',NULL,NULL,45,
 'Possède une collection de baguettes de percussion gravées.'),
('Jean-Mi Lamain',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 402, Lune 1, Jour 9','vivant',NULL,NULL,12,
 'Fait pousser des herbes aromatiques sur son balcon.'),
('Élo Die',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 401, Lune 2, Jour 10','vivant',NULL,NULL,8,
 'Écoute les potins de place publique et écrit des chroniques.'),
('Rudi Cive',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 399, Lune 3, Jour 11','vivant',NULL,NULL,5,
 'Découpe très finement tout ce qui se coupe.'),
('Humain Palapapa',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 400, Lune 12, Jour 12','vivant',NULL,NULL,16,
 'Conte des histoires en famille et collectionne les berceuses.'),
 ('Aude Àlàjoie',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 399, Lune 3, Jour 8','vivant',NULL,NULL,75,
 'Tient un carnet d’éclats de rire et de proverbes.'),
('Baptiste Cloc',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 396, Lune 7, Jour 17','vivant',NULL,NULL,22,
 'Collectionne des horloges et les démonte par curiosité.'),
('Céleste Clairmatin',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 404, Lune 1, Jour 3','vivant',NULL,NULL,310,
 'Note les couleurs de l’aube et peint des lavis.'),
('Dario Débrouille',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 397, Lune 6, Jour 6','vivant',NULL,NULL,18,
 'Bricole des solutions élégantes avec peu de moyens.'),
('Églantine Douxpas',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 407, Lune 2, Jour 12','vivant',NULL,NULL,40,
 'Promène des chats et prend des notes sur les herbes.'),
('Fabrice Toutjuste',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 395, Lune 11, Jour 11','vivant',NULL,NULL,30,
 'Chronomètre tout, même les siestes.'),
('Géraldine Belleplume',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 401, Lune 10, Jour 10','vivant',NULL,NULL,210,
 'Écrit des lettres décorées et plie du papier parfumé.'),
('Hugo Bravache',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 398, Lune 2, Jour 22','vivant',NULL,NULL,28,
 'Aime les défis stupides et les paris raisonnables.'),
('Isaline Claironde',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 405, Lune 8, Jour 9','vivant',NULL,NULL,160,
 'Écoute les quais la nuit et collectionne des galets.'),
('Jules Sanssouci',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 403, Lune 9, Jour 1','vivant',NULL,NULL,25,
 'Fait voler des cerfs-volants et oublie l’heure.'),
('Katia Tournepage',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 400, Lune 4, Jour 14','vivant',NULL,NULL,65,
 'Tient une bibliographie de recettes et d’odes.'),
('Lison Brindesel',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 404, Lune 6, Jour 6','vivant',NULL,NULL,36,
 'Collectionne des coquilles d’œufs joliment peintes.'),
('Matthieu Météore',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 402, Lune 12, Jour 20','vivant',NULL,NULL,420,
 'Note les étoiles filantes et fait des vœux codés.'),
('Ninon Nénuphar',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 406, Lune 5, Jour 25','vivant',NULL,NULL,85,
 'Aime les étangs calmes et les lanternes flottantes.'),
('Octave Contrepied',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 399, Lune 9, Jour 9','vivant',NULL,NULL,20,
 'Prend toujours le chemin inattendu, pour voir.'),
('Prune Pluiefine',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 407, Lune 1, Jour 19','vivant',NULL,NULL,110,
 'Adore la bruine, les parapluies et les flaques.'),
('Quentin Quartzen',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 396, Lune 8, Jour 4','vivant',NULL,NULL,15,
 'Poli des pierres et collectionne des étincelles.'),
('Rose Bouton',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 405, Lune 10, Jour 2','vivant',NULL,NULL,95,
 'Coud des fleurs en tissu et écrase des pétales.'),
('Simon Simplet',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 398, Lune 7, Jour 7','vivant',NULL,NULL,12,
 'Aime les outils faciles et les solutions courtes.'),
('Tara Trottevent',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 8, Jour 8','vivant',NULL,NULL,260,
 'Marche vite, parle doux et collectionne des cartes.'),
('Ulysse Jaloux',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 397, Lune 10, Jour 10','vivant',NULL,NULL,35,
 'Note les itinéraires marins et les vents jaloux.'),
('Véra Verreclair',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 401, Lune 1, Jour 8','vivant',NULL,NULL,210,
 'Souffle le verre décoratif et collectionne des bulles.'),
('Wandrille Méandres',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 400, Lune 2, Jour 28','vivant',NULL,NULL,32,
 'Aime les rivières qui serpentent et les ponts courbes.'),
('Xena Pasconte',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 402, Lune 3, Jour 3','vivant',NULL,NULL,75,
 'Raconte des histoires très courtes et finit par rire.'),
('Yvon Évadé',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 395, Lune 9, Jour 2','vivant',NULL,NULL,14,
 'Trouve toujours une sortie par la petite porte.'),
('Zoé Zéphyr',
 (SELECT id_espece FROM Espece WHERE libelle='Humain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 404, Lune 5, Jour 5','vivant',NULL,NULL,300,
 'Collectionne des rubans au vent et des girouettes.'),
/* =========================
   ELFES
   ========================= */
('Eärwen Feuilledor',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 280, Lune 3, Jour 12','vivant',NULL,NULL,260,
 'Plante des flèches germées et tient un herbier d’arc-en-ciel.'),
('Luthien Tisselune',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 210, Lune 7, Jour 29','vivant',NULL,NULL,540,
 'Brode des motifs lunaires et collectionne les nacres.'),
('Calen Dorélys',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 312, Lune 5, Jour 8','vivant',NULL,NULL,190,
 'Cueilleur de pousses rares et conteur d’arbres anciens.'),
('Sirilas Clairchant',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 340, Lune 6, Jour 18','vivant',NULL,NULL,150,
 'Écrit des ballades en plusieurs dialectes forestiers.'),
('Maeriel Aubevive',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 245, Lune 4, Jour 4','vivant',NULL,NULL,600,
 'Admire les levers de soleil et collectionne les aubes en bouteille.'),
('Elfe Dénoué',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 310, Lune 10, Jour 10','vivant',NULL,NULL,240,
 'Compose des calligrammes avec des lianes.'),
 ('Althaea Roselière',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 250, Lune 6, Jour 6','vivant',NULL,NULL,500,
 'Conserve des parfums de forêts dans des fioles.'),
('Belanor Muscadet',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 312, Lune 8, Jour 3','vivant',NULL,NULL,220,
 'Joue de la harpe de voyage et prend des notes herbeuses.'),
('Celebriane Perlesonge',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 290, Lune 2, Jour 28','vivant',NULL,NULL,640,
 'Décore des capes avec des fils d’aube.'),
('Daryon Briselame',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 305, Lune 9, Jour 9','vivant',NULL,NULL,180,
 'Aiguise les chants autant que les lames.'),
('Eliara Nitescence',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 275, Lune 3, Jour 10','vivant',NULL,NULL,560,
 'Récolte les reflets nocturnes sur des miroirs fins.'),
('Fenduil Lierreclair',
 (SELECT id_espece FROM Espece WHERE libelle='Elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 301, Lune 12, Jour 12','vivant',NULL,NULL,240,
 'Observe la croissance des lierres avec patience.'),
/* =========================
   NAINS
   ========================= */
('Durim Brindacier',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 350, Lune 1, Jour 14','vivant',NULL,NULL,40,
 'Poli les métaux jusqu’au reflet parfait, garde les copeaux.'),
('Greda Houblongris',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 342, Lune 2, Jour 19','vivant',NULL,NULL,25,
 'Collectionne des chopes gravées et des recettes millénaires.'),
('Borin Picacier',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 330, Lune 9, Jour 1','vivant',NULL,NULL,18,
 'Fait des plans de galeries en origami.'),
('Hildi Rochefine',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 338, Lune 11, Jour 3','vivant',NULL,NULL,80,
 'Dispose des cailloux porte-bonheur sur ses chemins.'),
('Korin Martelembrun',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 328, Lune 5, Jour 25','vivant',NULL,NULL,22,
 'Aime les outils anciens et les étaux bien huilés.'),
('Nora Cuvelier',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 341, Lune 2, Jour 2','vivant',NULL,NULL,30,
 'Collectionne des cercles de tonneaux gravés.'),
 ('Anvil Mainforte',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 332, Lune 4, Jour 14','vivant',NULL,NULL,28,
 'Collectionne des marteaux miniatures gravés.'),
('Bruna Brasero',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 341, Lune 7, Jour 2','vivant',NULL,NULL,40,
 'Aime les braises qui chantent et les fours sages.'),
('Crog Silex',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 329, Lune 3, Jour 3','vivant',NULL,NULL,18,
 'Grave des runes sur des silex pour passer le temps.'),
('Dunda Cervoise',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 337, Lune 9, Jour 27','vivant',NULL,NULL,22,
 'Recense les houblons selon l’altitude.'),
('Erik Étau',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 333, Lune 5, Jour 20','vivant',NULL,NULL,26,
 'Restaure les étaux anciens et collectionne des vis.'),
('Frida Foreuse',
 (SELECT id_espece FROM Espece WHERE libelle='Nain'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 340, Lune 2, Jour 2','vivant',NULL,NULL,35,
 'Perce des tunnels modèles dans des pains de sel.'),
/* =========================
   ORCS
   ========================= */
('Ghor Letranchant',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 370, Lune 6, Jour 12','vivant',NULL,NULL,35,
 'Écrit des poèmes brefs et polit ses lames au clair de lune.'),
('Urga Tapisdos',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 372, Lune 8, Jour 9','vivant',NULL,NULL,50,
 'Collectionne les motifs géométriques et les teintures.'),
('Mogrim Écriroc',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 369, Lune 1, Jour 28','vivant',NULL,NULL,70,
 'Dessine des symboles au charbon sur des galets plats.'),
('Darka Bouclenoir',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 374, Lune 4, Jour 6','vivant',NULL,NULL,15,
 'Apprécie les promenades nocturnes silencieuses.'),
('Krag Lombrage',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 371, Lune 10, Jour 2','vivant',NULL,NULL,95,
 'Observe les marées et collectionne les bouteilles vides.'),
 ('Arga Franchepoigne',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 371, Lune 4, Jour 4','vivant',NULL,NULL,48,
 'Salue avec vigueur et collectionne des brassards.'),
('Borg Urdent',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 373, Lune 9, Jour 17','vivant',NULL,NULL,65,
 'Adore les cartes des routes secondaires.'),
('Corga Ombrebrave',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 372, Lune 6, Jour 22','vivant',NULL,NULL,70,
 'Aime les quais sombres et les lanternes.'),
('Druzz Mainfroide',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 370, Lune 1, Jour 19','vivant',NULL,NULL,30,
 'Marche dans la neige et écoute le crissement.'),
('Erga Dosdroit',
 (SELECT id_espece FROM Espece WHERE libelle='Orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 369, Lune 8, Jour 8','vivant',NULL,NULL,55,
 'Porte les charges avec élégance et sourire.'),
/* =========================
   GNOMES
   ========================= */
('Tictac Perdutemps',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 415, Lune 3, Jour 3','vivant',NULL,NULL,420,
 'Monte des mini-horloges dans des coquilles de noix.'),
('Bricolo Rigobert',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 412, Lune 7, Jour 7','vivant',NULL,NULL,130,
 'Adore les engrenages et les tiroirs secrets.'),
('Mimi Microcosme',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 417, Lune 1, Jour 14','vivant',NULL,NULL,260,
 'Conserve des univers miniatures dans des fioles.'),
('Rondo Pignons',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 416, Lune 8, Jour 20','vivant',NULL,NULL,200,
 'Parle aux boulons et garde un carnet de plans.'),
('Cléa Clapotis',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 413, Lune 5, Jour 16','vivant',NULL,NULL,150,
 'Fait des moulins à eau miniatures et des bulles carrées.'),
('Cliquetis Rouille',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 417, Lune 10, Jour 4','vivant',NULL,NULL,210,
 'Restaure des mécanismes anciens avec une loupe précieuse.'),
('Pascal Empile',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 418, Lune 4, Jour 4','vivant',NULL,NULL,200,
 'Empile des livres par hauteur et couleur.'),
('Ada Clic',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 417, Lune 9, Jour 1','vivant',NULL,NULL,300,
 'Programme des runes et griffonne des schémas lumineux.'),
 ('Gizmo Lignage',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 416, Lune 6, Jour 6','vivant',NULL,NULL,260,
 'Classe les engrenages par taille et humeur.'),
('Hob Clopin',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 413, Lune 3, Jour 19','vivant',NULL,NULL,140,
 'Fabrique des sabliers piégeux et rit tout seul.'),
('Ivy Cadran',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 417, Lune 10, Jour 10','vivant',NULL,NULL,300,
 'Répare des pendules en sifflotant.'),
('Jonk Récup',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 415, Lune 5, Jour 1','vivant',NULL,NULL,210,
 'Récupère des pièces et les trie par brillance.'),
('Kika Klaxon',
 (SELECT id_espece FROM Espece WHERE libelle='Gnome'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 414, Lune 9, Jour 9','vivant',NULL,NULL,170,
 'Pose des cornes de brume sur des bateaux jouets.'),
/* =========================
   DEMI-ELFES
   ========================= */
('Élio Demi-Lune',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 392, Lune 12, Jour 1','vivant',NULL,NULL,310,
 'Aime la musique céleste et les nuits claires.'),
('Mara Brindefée',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 397, Lune 7, Jour 14','vivant',NULL,NULL,180,
 'Récolte des plantes discrètes et prépare des infusions.'),
('Talan Courtecime',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 396, Lune 6, Jour 10','vivant',NULL,NULL,220,
 'Se perd volontiers dans les marchés bondés.'),
('Séraphine Rivage',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 399, Lune 9, Jour 21','vivant',NULL,NULL,240,
 'Écoute la rumeur des vagues comme une symphonie.'),
('Orfeu Clairjour',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 395, Lune 11, Jour 5','vivant',NULL,NULL,150,
 'Collectionne des cailloux lumineux et griffonne des vers.'),
 ('Alio Farandole',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 398, Lune 4, Jour 4','vivant',NULL,NULL,260,
 'Écoute les chœurs matinaux et prend des notes.'),
('Brisa Ombrelune',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 395, Lune 11, Jour 12','vivant',NULL,NULL,230,
 'Adore les veillées tardives et les lucioles.'),
('Cédril Vagabonde',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 397, Lune 9, Jour 9','vivant',NULL,NULL,210,
 'Marque des sentiers secrets sur des rubans.'),
('Darel Ventdroit',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 399, Lune 5, Jour 25','vivant',NULL,NULL,240,
 'Préfère les boulevards bordés d’arbres.'),
('Eïla Brisedouce',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-elfe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 400, Lune 6, Jour 1','vivant',NULL,NULL,200,
 'Écoute les rochers raconter des histoires.'),
/* =========================
   DEMI-ORCS
   ========================= */
('Rokha le Poli',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 390, Lune 2, Jour 17','vivant',NULL,NULL,40,
 'Pratique l’art de la poignée de main parfaite.'),
('Brum Kor',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 388, Lune 9, Jour 8','vivant',NULL,NULL,35,
 'Chante à mi-voix en marchant droit devant.'),
('Grena Torsade',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 391, Lune 7, Jour 6','vivant',NULL,NULL,28,
 'Tresse ce qu’elle trouve et garde des brins porte-bonheur.'),
('Darg Illico',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 392, Lune 10, Jour 10','vivant',NULL,NULL,55,
 'Prépare des itinéraires optimisés pour tout et rien.'),
('Sorga Douxgrond',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 387, Lune 3, Jour 30','vivant',NULL,NULL,25,
 'Aime sentir la terre fraîche et collectionne des cailloux ronds.'),
 ('Barka Politesse',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 391, Lune 8, Jour 8','vivant',NULL,NULL,42,
 'Salue chaque matin la rue entière.'),
('Crum Brindacier',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 389, Lune 3, Jour 9','vivant',NULL,NULL,50,
 'Poli les gamelles jusqu’au reflet.'),
('Dorga Doucepas',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 392, Lune 2, Jour 2','vivant',NULL,NULL,33,
 'Cueille des fleurs pressées entre deux pierres.'),
('Erzan Pavois',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 393, Lune 6, Jour 21','vivant',NULL,NULL,60,
 'Collectionne des écussons peints.'),
('Frug Baies',
 (SELECT id_espece FROM Espece WHERE libelle='Demi-orc'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 388, Lune 10, Jour 30','vivant',NULL,NULL,20,
 'Ramasse des baies et les trie par nuances.'),
/* =========================
   HOBELINS
   ========================= */
('Pipin Crocfin',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 406, Lune 1, Jour 7','vivant',NULL,NULL,40,
 'Course d’auberge en auberge et liste les meilleures chaises.'),
('Lalie Briochette',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 409, Lune 5, Jour 3','vivant',NULL,NULL,55,
 'Apprécie les pique-niques matinaux et la confiture maison.'),
('Tobin Pépins',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 407, Lune 4, Jour 24','vivant',NULL,NULL,38,
 'Cultive des potagers miniatures en pots de terre.'),
('Melo Froussard',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 408, Lune 2, Jour 2','vivant',NULL,NULL,50,
 'Collectionne des couvertures moelleuses et des lanternes.'),
('Goma Rondpain',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 410, Lune 3, Jour 13','vivant',NULL,NULL,42,
 'Range ses recettes secrètes dans des cahiers bien ficelés.'),
 ('Amarel Croquejour',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 411, Lune 3, Jour 3','vivant',NULL,NULL,35,
 'Déniche les bancs les plus confortables.'),
('Bibi Brioche',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 410, Lune 2, Jour 11','vivant',NULL,NULL,40,
 'Tient un carnet des meilleures tartines.'),
('Crousti Baillement',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 408, Lune 5, Jour 5','vivant',NULL,NULL,44,
 'Sommeille à l’ombre et mesure le temps qui passe.'),
('Dodo Chaussette',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 409, Lune 1, Jour 7','vivant',NULL,NULL,39,
 'Collectionne des chaussettes tricotées main.'),
('Ema Dodue',
 (SELECT id_espece FROM Espece WHERE libelle='Hobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Biscuitbourg'),
 'An 412, Lune 6, Jour 18','vivant',NULL,NULL,42,
 'Prépare des paniers de pique-nique bien rangés.'),
/* =========================
   TIEFFELINS
   ========================= */
('Azazel Courtepointe',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 9, Jour 9','vivant',NULL,NULL,420,
 'Collectionne des briquets antiques et des allumettes dorées.'),
('Lilith Fumécaille',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 401, Lune 10, Jour 10','vivant',NULL,NULL,380,
 'Aime les parfums épicés et les verres fumés.'),
('Riven Tisons',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 402, Lune 12, Jour 27','vivant',NULL,NULL,260,
 'Grave de petits symboles ardents sur des pierres sombres.'),
('Zarah Sincère',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 404, Lune 1, Jour 4','vivant',NULL,NULL,600,
 'Collectionne des miroirs et écrit des slogans honnêtes.'),
('Mordax Calor',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 400, Lune 8, Jour 6','vivant',NULL,NULL,1000,
 'Apprécie les bains très chauds et les pierres volcaniques.'),
('Tieffelin Frisquet',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 403, Lune 8, Jour 8','vivant',NULL,NULL,620,
 'Aime la vapeur, les chaleurs douces et les manteaux d’hiver.'),
('Helleva Belle',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 402, Lune 5, Jour 20','vivant',NULL,NULL,860,
 'Collectionne des manteaux chatoyants et des éventails.'),
('Démo Niak',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 404, Lune 9, Jour 10','vivant',NULL,NULL,580,
 'Anime des soirées et collectionne des calembours.'),
 ('Amon Souffre',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 11, Jour 11','vivant',NULL,NULL,620,
 'Collectionne briquets et pierres étincelantes.'),
('Bélial Lampion',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 401, Lune 7, Jour 13','vivant',NULL,NULL,540,
 'Illumine les ruelles avec des lanternes.'),
('Carmin Braise',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 402, Lune 1, Jour 17','vivant',NULL,NULL,300,
 'Dessine des flammes stylisées sur parchemins.'),
('Diabla Velours',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 400, Lune 10, Jour 1','vivant',NULL,NULL,950,
 'Aime les tissus fins et la lueur du feu.'),
('Enyo Cendre',
 (SELECT id_espece FROM Espece WHERE libelle='Tieffelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 404, Lune 2, Jour 24','vivant',NULL,NULL,700,
 'Cueille des braises timides sous la neige.'),
/* =========================
   DRAKÉIDES
   ========================= */
('Sythra Écaillefine',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 360, Lune 6, Jour 6','vivant',NULL,NULL,450,
 'Polie ses écailles à la cendre et admire les couchers de soleil.'),
('Argon Dorévent',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 358, Lune 7, Jour 12','vivant',NULL,NULL,300,
 'Aime les parades au soleil et les armures étincelantes.'),
('Velka Givrequeue',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 362, Lune 1, Jour 20','vivant',NULL,NULL,280,
 'Collectionne des stalactites miniatures.'),
('Onyx Ombrenac',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 361, Lune 11, Jour 11','vivant',NULL,NULL,260,
 'Aime les rivages nocturnes et les coquillages noirs.'),
('Zyrith Foudre-Serment',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 359, Lune 10, Jour 2','vivant',NULL,NULL,520,
 'Garde un carnet de promesses et de serments calligraphiés.'),
 ('Amber Écaillefeu',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 361, Lune 8, Jour 8','vivant',NULL,NULL,420,
 'Frotte les écailles jusqu’à l’étincelle.'),
('Beryl Dosfoudre',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 360, Lune 9, Jour 21','vivant',NULL,NULL,520,
 'Aime les orages et leurs ronronnements.'),
('Cinnabar Gueulebraise',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 362, Lune 11, Jour 3','vivant',NULL,NULL,300,
 'Sèche des algues au feu doux.'),
('Diorite Cœurroche',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 359, Lune 7, Jour 7','vivant',NULL,NULL,280,
 'Collectionne des cailloux lourds et polis.'),
('Émera Lys',
 (SELECT id_espece FROM Espece WHERE libelle='Drakéide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 363, Lune 5, Jour 5','vivant',NULL,NULL,500,
 'Aime les vitrines et les reflets précieux.'),
/* =========================
   SATYRES
   ========================= */
('Panas Flûtefine',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 380, Lune 2, Jour 9','vivant',NULL,NULL,140,
 'Apprécie les danses villageoises et les flûtes artisanales.'),
('Dion Ysos',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 378, Lune 5, Jour 5','vivant',NULL,NULL,160,
 'Note les arômes des saisons dans un carnet taché.'),
('Maena Vigneclaire',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 382, Lune 8, Jour 1','vivant',NULL,NULL,170,
 'Tailleur de sarments décoratifs et de couronnes végétales.'),
('Tragos Tambour',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 381, Lune 6, Jour 23','vivant',NULL,NULL,120,
 'Frappe des rythmes sur tout ce qui résonne.'),
('Nysa Clapot',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 383, Lune 7, Jour 30','vivant',NULL,NULL,150,
 'Aime les baignades au crépuscule et les éclats de rire.'),
 ('Arion Chanteclair',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 383, Lune 2, Jour 2','vivant',NULL,NULL,160,
 'Gratte la lyre au coucher du soleil.'),
('Bacus Gobelet',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 379, Lune 8, Jour 6','vivant',NULL,NULL,150,
 'Tient un carnet d’arômes forestiers.'),
('Corydon Tablée',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 382, Lune 3, Jour 12','vivant',NULL,NULL,140,
 'Organise des pique-niques musicaux.'),
('Dryops Virevolte',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 381, Lune 9, Jour 9','vivant',NULL,NULL,180,
 'Danse pieds nus dans les clairières.'),
('Evoé Carillon',
 (SELECT id_espece FROM Espece WHERE libelle='Satyre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 383, Lune 11, Jour 30','vivant',NULL,NULL,170,
 'Suspends des grelots aux branches qui chantent.'),
/* =========================
   AASIMARS
   ========================= */
('Aurèle Radiant',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 399, Lune 4, Jour 4','vivant',NULL,NULL,700,
 'Collectionne les halos illustrés et sourit aux statues.'),
('Séraphin Clairvoie',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 401, Lune 2, Jour 1','vivant',NULL,NULL,820,
 'Note des pressentiments dans un journal discret.'),
('Naëla Héliade',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 398, Lune 11, Jour 18','vivant',NULL,NULL,900,
 'Collectionne les vitraux et les salutations chaleureuses.'),
('Uriel Paslourd',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 397, Lune 1, Jour 9','vivant',NULL,NULL,680,
 'Marche délicatement sur les œufs du petit matin.'),
('Clara Halo',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 400, Lune 7, Jour 7','vivant',NULL,NULL,1000,
 'Aime les processions lumineuses et les chants résonnants.'),
('Sola Nivale',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 380, Lune 1, Jour 15','mort','An 425, Lune 2, Jour 10','Gel sacré durant un rite',820,
 'Aimait les paysages immaculés et les prières silencieuses.'),
('Urias Tranchlume',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 379, Lune 6, Jour 6','mort','An 424, Lune 12, Jour 29','Duel rituel',900,
 'Gardait un carnet d’aphorismes et de devises.'),
('Mirabel Rayons',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 402, Lune 3, Jour 3','vivant',NULL,NULL,1000,
 'Collectionne les éclats de lumière et les verres colorés.'),
('Solarius Max',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 401, Lune 7, Jour 7','vivant',NULL,NULL,980,
 'Chronomètre les meilleurs zéniths de l’année.'),
('Aasimar Toutfeu',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 402, Lune 9, Jour 9','vivant',NULL,NULL,990,
 'Garde toujours une bougie allumée pour les souvenirs.'),
('Aasimar Rayban',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 5, Jour 5','vivant',NULL,NULL,970,
 'Collectionne des lunettes étranges et des filtres de soleil.'),
 ('Béatrix Haloïde',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 399, Lune 7, Jour 7','vivant',NULL,NULL,960,
 'Répertorie les aurores et les couchers bénis.'),
('Cassien Solifuge',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 402, Lune 5, Jour 15','vivant',NULL,NULL,880,
 'Marche dans la lumière pour calmer ses idées.'),
('Dominique Luminis',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 401, Lune 3, Jour 9','vivant',NULL,NULL,940,
 'Écrit des maximes sur des vitraux miniatures.'),
('Éloi Photôn',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 403, Lune 6, Jour 20','vivant',NULL,NULL,990,
 'Mesure l’intensité des sourires en lumens.'),
('Flavia Douxrayon',
 (SELECT id_espece FROM Espece WHERE libelle='Aasimar'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 398, Lune 10, Jour 10','vivant',NULL,NULL,900,
 'Aime les matins neigeux très lumineux.'),
/* =========================
   KOBOLDS
   ========================= */
('Scrik Planqué',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 420, Lune 3, Jour 2','vivant',NULL,NULL,70,
 'Cache des surprises sous les paillassons.'),
('Trik Étincelle',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 421, Lune 1, Jour 1','vivant',NULL,NULL,130,
 'Collectionne des mèches et des braises.'),
('Kra Kra',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 419, Lune 12, Jour 3','vivant',NULL,NULL,40,
 'Crie des slogans et siffle des mélodies courtes.'),
('Snif Souterrain',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 418, Lune 6, Jour 16','vivant',NULL,NULL,55,
 'Repère des passages secrets à l’odorat.'),
('Grik Grincet',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 420, Lune 7, Jour 22','vivant',NULL,NULL,60,
 'Accorde des pièges comme des instruments.'),
 ('Bricabrac',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 421, Lune 2, Jour 22','vivant',NULL,NULL,80,
 'Range les boulons par diamètre.'),
('Carambaril',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 420, Lune 4, Jour 4','vivant',NULL,NULL,60,
 'Écrit des blagues sur des rubans adhésifs.'),
('Dardasil',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 419, Lune 7, Jour 9','vivant',NULL,NULL,55,
 'Perce des coquilles pour en faire des perles.'),
('Escarboucle',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 418, Lune 8, Jour 8','vivant',NULL,NULL,85,
 'Brille d’enthousiasme pour tout ce qui cliquette.'),
('Furetin',
 (SELECT id_espece FROM Espece WHERE libelle='Kobold'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 420, Lune 5, Jour 12','vivant',NULL,NULL,70,
 'Trouve les raccourcis dans les caves encombrées.'),
/* =========================
   GOBELINS
   ========================= */
('Grob Biz',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 414, Lune 8, Jour 8','vivant',NULL,NULL,50,
 'Jongle avec des comptes et des cailloux.'),
('Sprot Raclure',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 416, Lune 9, Jour 19','vivant',NULL,NULL,45,
 'Collectionne des objets “presque neufs”.'),
('Zik Zag',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 415, Lune 10, Jour 27','vivant',NULL,NULL,65,
 'Préfère les chemins qui tournent beaucoup.'),
('Brak Tournevis',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 413, Lune 2, Jour 14','vivant',NULL,NULL,90,
 'Aime régler tout “au quart de tour”.'),
('Gret Tiroir',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 417, Lune 1, Jour 15','vivant',NULL,NULL,55,
 'Collectionne des poignées et des serrures anciennes.'),
('Gobelin Tactik',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 415, Lune 2, Jour 2','vivant',NULL,NULL,58,
 'Dessine des plans de ruelles et des embuscades en papier.'),
 ('Bof Bof',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Boulangea'),
 'An 416, Lune 1, Jour 1','vivant',NULL,NULL,40,
 'Marchande en ricanant et note des pourboires.'),
('Crik Croc',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Fromagiville'),
 'An 417, Lune 10, Jour 3','vivant',NULL,NULL,45,
 'Collectionne des boîtes presque fermées.'),
('Dzip Zoup',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 415, Lune 9, Jour 9','vivant',NULL,NULL,65,
 'Préfère les détours pour revenir au point de départ.'),
('Etik Étiquette',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 414, Lune 5, Jour 5','vivant',NULL,NULL,70,
 'Colle des étiquettes partout sauf au bon endroit.'),
('Fraiz Caddie',
 (SELECT id_espece FROM Espece WHERE libelle='Gobelin'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 418, Lune 6, Jour 6','vivant',NULL,NULL,55,
 'Pousse tout ce qui roule et récolte des roues.'),
/* =========================
   VAMPIRES
   ========================= */
('Vlad Hélice',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 320, Lune 9, Jour 9','vivant',NULL,NULL,880,
 'Collectionne les vinyles et les lustres anciens.'),
('Comtesse Dégust',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 315, Lune 11, Jour 6','vivant',NULL,NULL,760,
 'Tient un carnet de dégustation très rouge.'),
('Sire Glaciard',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 318, Lune 2, Jour 20','vivant',NULL,NULL,720,
 'Apprécie les soirées glacées et les fenêtres givrées.'),
('Noctis Risette',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 316, Lune 1, Jour 1','vivant',NULL,NULL,640,
 'Compulse des registres nocturnes et note tout au centime.'),
('Draga Vinyle',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 322, Lune 4, Jour 14','vivant',NULL,NULL,700,
 'Mixer crépusculaire et playlists éternelles.'),
 ('Alucard Vespéral',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 321, Lune 10, Jour 10','vivant',NULL,NULL,820,
 'Anime des salons nocturnes et collectionne des chandeliers.'),
('Bella Chatoiement',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 318, Lune 8, Jour 1','vivant',NULL,NULL,740,
 'Préfère les miroirs antiques (non réfléchissants).'),
('Crimson Dentelle',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 317, Lune 4, Jour 24','vivant',NULL,NULL,710,
 'Brode au crochet durant les longues nuits.'),
('Draxel Comptoir',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 319, Lune 2, Jour 2','vivant',NULL,NULL,650,
 'Tient de jolis comptes nocturnes.'),
('Érèbe Velours',
 (SELECT id_espece FROM Espece WHERE libelle='Vampire'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 323, Lune 7, Jour 7','vivant',NULL,NULL,700,
 'Aime le velours sombre et les salons calmes.'),
/* =========================
   LICHES
   ========================= */
('Archiliche Cartonne',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 201, Lune 6, Jour 6','vivant',NULL,NULL,950,
 'Tamponne tout ce qui passe et collectionne des parchemins.'),
('Dossierre Périmé',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 190, Lune 1, Jour 12','vivant',NULL,NULL,800,
 'Aime les procès-verbaux et les casiers poussiéreux.'),
('Seccia Secousse',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 210, Lune 2, Jour 2','vivant',NULL,NULL,870,
 'Note des manières élégantes dans des grimoires.'),
('Osric Papier',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 199, Lune 3, Jour 9','vivant',NULL,NULL,910,
 'Range des archives par odeur de poussière.'),
('Morgane Memento',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 205, Lune 8, Jour 28','vivant',NULL,NULL,840,
 'Raconte des conférences sur les souvenirs tenaces.'),
 ('Archivox Cartular',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 198, Lune 11, Jour 11','vivant',NULL,NULL,930,
 'Range les archives par parfum de poussière.'),
('Bureaucrate Sépia',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 200, Lune 3, Jour 3','vivant',NULL,NULL,880,
 'Appose des sceaux ronds avec fierté.'),
('Clerc Palimpseste',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 207, Lune 5, Jour 20','vivant',NULL,NULL,860,
 'Réécrit des parchemins sans fin.'),
('Dossier Noir',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 203, Lune 6, Jour 6','vivant',NULL,NULL,920,
 'Classe les secrets par ordre alphabétique.'),
('Épitaphe Fine',
 (SELECT id_espece FROM Espece WHERE libelle='Liche'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 206, Lune 7, Jour 28','vivant',NULL,NULL,840,
 'Grave de jolies maximes mortuaires.'),
/* =========================
   DRAGONS (SAPIENTS)
   ========================= */
('Aurébor l’Ancien',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 50, Lune 1, Jour 1','vivant',NULL,NULL,1000,
 'Apprécie la pyrotechnie de salon et les fauteuils larges.'),
('Cendreline',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 112, Lune 12, Jour 12','vivant',NULL,NULL,950,
 'Aime les conversations au coin du brasier.'),
('Braseciel',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 90, Lune 6, Jour 9','vivant',NULL,NULL,900,
 'Surveille les brumes marines et collectionne des galets chauds.'),
('Givrepeau',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 70, Lune 3, Jour 30','vivant',NULL,NULL,920,
 'Sculpte des stalactites signées.'),
('Solares',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 80, Lune 4, Jour 20','vivant',NULL,NULL,990,
 'Écrit des aphorismes au rayon lumineux.'),
('Serein des Brises',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 95, Lune 2, Jour 2','vivant',NULL,NULL,940,
 'Aime les terrasses en front de mer.'),
('Cramoisi Courtois',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 85, Lune 3, Jour 3','vivant',NULL,NULL,930,
 'Adore les discours bien tournés.'),
 ('Braisevif',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 88, Lune 1, Jour 20','vivant',NULL,NULL,980,
 'Allume des feux d’artifice avec sérieux.'),
('Cramorielle',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 110, Lune 11, Jour 11','vivant',NULL,NULL,940,
 'Réchauffe les salles communes à la demande.'),
('Daurade Solaire',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 98, Lune 6, Jour 9','vivant',NULL,NULL,900,
 'Survole les ports à l’heure dorée.'),
('Écaillehiver',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 72, Lune 2, Jour 12','vivant',NULL,NULL,920,
 'Sculpte des stalagmites en spirale.'),
('Fulgural',
 (SELECT id_espece FROM Espece WHERE libelle='Dragon'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 83, Lune 4, Jour 22','vivant',NULL,NULL,990,
 'Trace des éclairs dans les nuages pour signer.'),
/* =========================
   DJINNS
   ========================= */
('Azin Souffledor',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 310, Lune 5, Jour 5','vivant',NULL,NULL,780,
 'Fait tourner des moulins à prières venteuses.'),
('Yara Brisefine',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 315, Lune 7, Jour 1','vivant',NULL,NULL,820,
 'Esquisse des plans aériens sur des voiles.'),
('Nadir Courant',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 312, Lune 10, Jour 8','vivant',NULL,NULL,760,
 'Mesure les vagues et garde des coquilles barométriques.'),
('Zafir Spirale',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 314, Lune 2, Jour 14','vivant',NULL,NULL,900,
 'Dessin en volutes et carnets de cyclones.'),
('Halim Sirocco',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 311, Lune 1, Jour 27','vivant',NULL,NULL,700,
 'Réchauffe les ambiances de salle commune.'),
('Siroc Express',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 410, Lune 1, Jour 1','vivant',NULL,NULL,780,
 'Adore les girouettes et les boussoles capricieuses.'),
('Djinn Pépite',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 409, Lune 7, Jour 7','vivant',NULL,NULL,800,
 'Collectionne les coffrets miniatures.'),
('Djinna Chabada',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 407, Lune 1, Jour 5','vivant',NULL,NULL,840,
 'Fait tournoyer les rideaux au bon moment.'),
 ('Azel Soufflaire',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 313, Lune 3, Jour 9','vivant',NULL,NULL,820,
 'Fait tourner des moulins à prières.'),
('Bora Fildevent',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 316, Lune 5, Jour 1','vivant',NULL,NULL,790,
 'Tend des voiles décoratives sur les toits.'),
('Ifrit Braisevive',
 (SELECT id_espece FROM Espece WHERE libelle='Ifrit'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 311, Lune 9, Jour 18','vivant',NULL,NULL,900,
 'Allume les braseros des rues avec style.'),
('Samsara Incendie',
 (SELECT id_espece FROM Espece WHERE libelle='Ifrit'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 309, Lune 7, Jour 27','vivant',NULL,NULL,860,
 'Grave des mandalas de feu sur le sable.'),
('Sillages',
 (SELECT id_espece FROM Espece WHERE libelle='Djinn'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 314, Lune 12, Jour 12','vivant',NULL,NULL,780,
 'Compose des poèmes du vent en bord de mer.'),
/* =========================
   FÉES / SYLPHES / SPRITES
   ========================= */
('Mimosa Étincelle',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 430, Lune 4, Jour 9','vivant',NULL,NULL,520,
 'Rassemble des paillettes et classe des étagères.'),
('Viviane Virevolte',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 431, Lune 9, Jour 19','vivant',NULL,NULL,580,
 'Décore des auréoles lumineuses selon l’humeur.'),
('Pollen Légère',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 429, Lune 5, Jour 6','vivant',NULL,NULL,480,
 'Souffle des grains dorés sur des carnets secrets.'),
('Glitza Frimas',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 428, Lune 1, Jour 1','vivant',NULL,NULL,610,
 'Orne les rebords de fenêtre de givre artistique.'),
('Tichette Brindille',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 432, Lune 7, Jour 7','vivant',NULL,NULL,500,
 'Protège mousses et champignons avec ferveur.'),
('Fée Nomen',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 431, Lune 4, Jour 4','vivant',NULL,NULL,550,
 'Baptise des ruelles et pose des plaques joliment gravées.'),
('Fée Line',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 431, Lune 2, Jour 18','vivant',NULL,NULL,560,
 'Tisse des fils très fins entre les arbres.'),
 ('Chimie Paillettes',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 433, Lune 1, Jour 1','vivant',NULL,NULL,560,
 'Mélange des poudres scintillantes.'),
('Dulcinea Zing',
 (SELECT id_espece FROM Espece WHERE libelle='Fée'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 432, Lune 3, Jour 5','vivant',NULL,NULL,600,
 'Découpe des halos en rosaces fines.'),
('Sylpha Carillon',
 (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 407, Lune 2, Jour 2','vivant',NULL,NULL,720,
 'Agite des clochettes au rythme du vent.'),
('Zéphyrion',
 (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 405, Lune 10, Jour 10','vivant',NULL,NULL,740,
 'Siffle des airs aériens très précis.'),
('Pix Prisme',
 (SELECT id_espece FROM Espece WHERE libelle='Sprite étincelant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 413, Lune 3, Jour 13','vivant',NULL,NULL,610,
 'Réfracte la lumière en petits arcs.'),
('Glim Glim',
 (SELECT id_espece FROM Espece WHERE libelle='Sprite étincelant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 406, Lune 8, Jour 8','vivant',NULL,NULL,605,
 'Cligne à intervalles réguliers pour rythmer les soirées.'),
/* =========================
   SIRÈNES / NÉRÉIDES / ONDINES
   ========================= */
('Ondine Claironde',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 380, Lune 8, Jour 8','vivant',NULL,NULL,640,
 'Collectionne des coquilles et fredonne sous les jetées.'),
('Méra Ligne',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 382, Lune 2, Jour 3','vivant',NULL,NULL,520,
 'Aime les marchés aux poissons et les discussions salées.'),
('Siréna Doucehoule',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 381, Lune 6, Jour 6','vivant',NULL,NULL,560,
 'Réconforte avec des mélodies de bord de mer.'),
('Nerida Courantfin',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 383, Lune 10, Jour 11','vivant',NULL,NULL,600,
 'Note les marées dans un calendrier décoré.'),
('Murelle Écailldor',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 384, Lune 11, Jour 21','vivant',NULL,NULL,580,
 'Taille des perles et collectionne des colliers marins.'),
('Nérée D’alguefine',
 (SELECT id_espece FROM Espece WHERE libelle='Néréide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 386, Lune 4, Jour 4','vivant',NULL,NULL,600,
 'Plante des boutures de récifs et dessine des cartes d’algues.'),
('Nérée Panaché',
 (SELECT id_espece FROM Espece WHERE libelle='Néréide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 387, Lune 7, Jour 22','vivant',NULL,NULL,610,
 'Mélange des sirops fruités au bord des quais.'),
('Ondin Relais',
 (SELECT id_espece FROM Espece WHERE libelle='Ondine'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 402, Lune 2, Jour 14','vivant',NULL,NULL,700,
 'Fait passer des messages sur des gouttes d’eau.'),
('Ondriel Sucrenac',
 (SELECT id_espece FROM Espece WHERE libelle='Ondine'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 392, Lune 9, Jour 9','vivant',NULL,NULL,640,
 'Aime les eaux calmes et les lancers de cailloux.'),
 ('Alga Vagues',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 382, Lune 4, Jour 14','vivant',NULL,NULL,560,
 'Collectionne des algues aux noms chantants.'),
('Bellona Houle',
 (SELECT id_espece FROM Espece WHERE libelle='Sirène'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 383, Lune 7, Jour 8','vivant',NULL,NULL,540,
 'Note les rythmes de vagues comme des mesures.'),
('Nerine Corail',
 (SELECT id_espece FROM Espece WHERE libelle='Néréide'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 388, Lune 2, Jour 2','vivant',NULL,NULL,620,
 'Taille des coraux tombés sans les blesser.'),
('Ondra Mélodie',
 (SELECT id_espece FROM Espece WHERE libelle='Ondine'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 401, Lune 9, Jour 9','vivant',NULL,NULL,680,
 'Fait chanter les pontons avec des perles d’eau.'),
('Nagal Sinue',
 (SELECT id_espece FROM Espece WHERE libelle='Naga'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 392, Lune 11, Jour 1','vivant',NULL,NULL,710,
 'Tresse des algues en rubans décoratifs.'),
('Naga Pearl',
 (SELECT id_espece FROM Espece WHERE libelle='Naga'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 399, Lune 5, Jour 12','vivant',NULL,NULL,690,
 'Collectionne des perles aux reflets changeants.'),
/* =========================
   GÉANTS (SAPIENTS)
   ========================= */
('Talos Grandpas',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 210, Lune 3, Jour 3','vivant',NULL,NULL,120,
 'Fait des pas très longs pour réfléchir longtemps.'),
('Gala Montjoie',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 205, Lune 12, Jour 12','vivant',NULL,NULL,80,
 'Aime poser de grandes pierres soigneusement.'),
('Bork Hauteroche',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 215, Lune 1, Jour 20','vivant',NULL,NULL,70,
 'Tailleur de pentes et collectionneur de sommets.'),
('Yska Longfrimas',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 208, Lune 2, Jour 28','vivant',NULL,NULL,90,
 'Joue avec des glaçons gigantesques.'),
('Goran Plancher',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 212, Lune 5, Jour 5','vivant',NULL,NULL,60,
 'Aime le bois lisse et les planchers qui craquent peu.'),
 ('Atlas Coupdœil',
 (SELECT id_espece FROM Espece WHERE libelle='Géant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Patateland'),
 'An 212, Lune 6, Jour 6','vivant',NULL,NULL,110,
 'Évalue les distances à grandes enjambées.'),
('Granit Fendrelief',
 (SELECT id_espece FROM Espece WHERE libelle='Géant de pierre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 190, Lune 4, Jour 4','vivant',NULL,NULL,90,
 'Grave des lignes de crête sur les falaises.'),
('Givre Longsoif',
 (SELECT id_espece FROM Espece WHERE libelle='Géant des glaces'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Soupefroide'),
 'An 205, Lune 1, Jour 20','vivant',NULL,NULL,85,
 'Boit l’eau de neige avec de très grands gobelets.'),
('Dolmen Table',
 (SELECT id_espece FROM Espece WHERE libelle='Géant de pierre'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 195, Lune 11, Jour 11','vivant',NULL,NULL,80,
 'Pose des dalles comme on étale des nappes.'),
/* =========================
   DRYADES / CENTAURES / MINOTAURES
   ========================= */
('Silva Feuillemère',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 390, Lune 3, Jour 10','vivant',NULL,NULL,480,
 'Veille sur des bosquets et tresse des couronnes feuillues.'),
('Drya Racinette',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 388, Lune 7, Jour 2','vivant',NULL,NULL,520,
 'Lit les anneaux des arbres comme des journaux.'),
('Drya Clairebois',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 389, Lune 9, Jour 29','vivant',NULL,NULL,510,
 'Tranche les disputes avec de la sève froide.'),
('Kheiron Droiteligne',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 375, Lune 7, Jour 3','vivant',NULL,NULL,260,
 'Écrit très droit, même au galop.'),
('Aster Crinière',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 372, Lune 3, Jour 21','vivant',NULL,NULL,300,
 'Aficionado des longues courses sur chemins forestiers.'),
('Via Rapida',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 371, Lune 5, Jour 15','vivant',NULL,NULL,210,
 'Aime livrer vite et sourire en passant.'),
('Centaure Atempo',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 370, Lune 5, Jour 5','vivant',NULL,NULL,230,
 'Dirige des fanfares en plein air.'),
('Xanthos Grande-Voie',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 360, Lune 3, Jour 3','mort','An 422, Lune 3, Jour 3','Éboulement héroïque',200,
 'Aimait les grands itinéraires et la poussière des routes.'),
('Taurus Pavé',
 (SELECT id_espece FROM Espece WHERE libelle='Minotaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 370, Lune 8, Jour 8','vivant',NULL,NULL,150,
 'Dessine des labyrinthes pour le plaisir.'),
('Toro Pilier',
 (SELECT id_espece FROM Espece WHERE libelle='Minotaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 368, Lune 9, Jour 5','vivant',NULL,NULL,160,
 'Adore les colonnes bien alignées.'),
('Minotaure Béton',
 (SELECT id_espece FROM Espece WHERE libelle='Minotaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 369, Lune 6, Jour 6','vivant',NULL,NULL,140,
 'Admire les murs solides et les angles droits.'),
 ('Érable Douxvent',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 391, Lune 2, Jour 2','vivant',NULL,NULL,520,
 'Fait tourner des mobiles de feuilles.'),
('Hêtre Rieur',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 389, Lune 4, Jour 14','vivant',NULL,NULL,500,
 'Claque des branches pour applaudir.'),
('Galop Droit',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 371, Lune 3, Jour 7','vivant',NULL,NULL,250,
 'Trace des voies rectilignes entre les bosquets.'),
('Crin Argent',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 372, Lune 9, Jour 19','vivant',NULL,NULL,270,
 'Tresse des crinières en code secret.'),
('Labrys Angle',
 (SELECT id_espece FROM Espece WHERE libelle='Minotaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 368, Lune 7, Jour 7','vivant',NULL,NULL,160,
 'Dessine des plans carrés et s’y perd rarement.'),
('Riddle Claire',
 (SELECT id_espece FROM Espece WHERE libelle='Sphinx'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 250, Lune 5, Jour 5','vivant',NULL,NULL,900,
 'Pose des énigmes sur les places publiques.'),('Érable Douxvent',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 391, Lune 2, Jour 2','vivant',NULL,NULL,520,
 'Fait tourner des mobiles de feuilles.'),
('Hêtre Rieur',
 (SELECT id_espece FROM Espece WHERE libelle='Dryade'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Choux-Fleurie'),
 'An 389, Lune 4, Jour 14','vivant',NULL,NULL,500,
 'Claque des branches pour applaudir.'),
('Galop Droit',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 371, Lune 3, Jour 7','vivant',NULL,NULL,250,
 'Trace des voies rectilignes entre les bosquets.'),
('Crin Argent',
 (SELECT id_espece FROM Espece WHERE libelle='Centaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 372, Lune 9, Jour 19','vivant',NULL,NULL,270,
 'Tresse des crinières en code secret.'),
('Labrys Angle',
 (SELECT id_espece FROM Espece WHERE libelle='Minotaure'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 368, Lune 7, Jour 7','vivant',NULL,NULL,160,
 'Dessine des plans carrés et s’y perd rarement.'),
('Riddle Claire',
 (SELECT id_espece FROM Espece WHERE libelle='Sphinx'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 250, Lune 5, Jour 5','vivant',NULL,NULL,900,
 'Pose des énigmes sur les places publiques.'),
/* =========================
   SPHINX / KITSUNE / TANUKI / ONI / RAKSHASA
   ========================= */
('Riddleux',
 (SELECT id_espece FROM Espece WHERE libelle='Sphinx'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 200, Lune 6, Jour 6','vivant',NULL,NULL,880,
 'Rédige des énigmes dans un cahier à reliure dorée.'),
('Sphinxa Claire-Énigme',
 (SELECT id_espece FROM Espece WHERE libelle='Sphinx'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 300, Lune 9, Jour 9','mort','An 420, Lune 1, Jour 1','Riddle fatal (autodérision)',820,
 'Aimait jouer aux devinettes exigeantes.'),
('Kitsu Nari',
 (SELECT id_espece FROM Espece WHERE libelle='Kitsune'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 410, Lune 9, Jour 9','vivant',NULL,NULL,640,
 'Collectionne des masques et des rubans.'),
('Renardeau Lapsus',
 (SELECT id_espece FROM Espece WHERE libelle='Kitsune'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 411, Lune 10, Jour 10','vivant',NULL,NULL,620,
 'Imite les voix avec malice.'),
('Tanis Portefaix',
 (SELECT id_espece FROM Espece WHERE libelle='Tanuki'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 411, Lune 6, Jour 6','vivant',NULL,NULL,290,
 'Transforme des cartons en cabanes miniatures.'),
('Bento Masqué',
 (SELECT id_espece FROM Espece WHERE libelle='Tanuki'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 410, Lune 12, Jour 12','vivant',NULL,NULL,300,
 'Collectionne des boîtes et des moules décoratifs.'),
('Onimaru Sobre',
 (SELECT id_espece FROM Espece WHERE libelle='Oni'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 405, Lune 7, Jour 1','vivant',NULL,NULL,720,
 'Pratique la méditation et la respiration calme.'),
('Oni Ramen',
 (SELECT id_espece FROM Espece WHERE libelle='Oni'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 408, Lune 8, Jour 8','vivant',NULL,NULL,680,
 'Aime les bols fumants et les banquets conviviaux.'),
('Oni Véra',
 (SELECT id_espece FROM Espece WHERE libelle='Oni'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 407, Lune 10, Jour 10','vivant',NULL,NULL,690,
 'Apprécie les règlements clairs et les décisions mesurées.'),
('Raksha Dandy',
 (SELECT id_espece FROM Espece WHERE libelle='Rakshasa'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 402, Lune 11, Jour 30','vivant',NULL,NULL,760,
 'Change de costume plus vite que son ombre.'),
('Raksha Pluriel',
 (SELECT id_espece FROM Espece WHERE libelle='Rakshasa'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 409, Lune 11, Jour 11','vivant',NULL,NULL,740,
 'Aime les jeux de cartes et les illusions de salon.'),
('Raksha Rature',
 (SELECT id_espece FROM Espece WHERE libelle='Rakshasa'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 403, Lune 6, Jour 1','vivant',NULL,NULL,720,
 'Corrige des contrats et collectionne des cachets.'),
('Onikiri Procès',
 (SELECT id_espece FROM Espece WHERE libelle='Oni'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Croûtonie'),
 'An 406, Lune 11, Jour 7','vivant',NULL,NULL,640,
 'Prend des notes méticuleuses et des décisions calmes.'),
 ('Yako Rubans',
 (SELECT id_espece FROM Espece WHERE libelle='Kitsune'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 409, Lune 3, Jour 9','vivant',NULL,NULL,600,
 'Change de masque selon l’humeur.'),
('Kitsu Blague',
 (SELECT id_espece FROM Espece WHERE libelle='Kitsune'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 410, Lune 7, Jour 7','vivant',NULL,NULL,620,
 'Imite les voix pour rire sans malice.'),
('Tanu Kawaii',
 (SELECT id_espece FROM Espece WHERE libelle='Tanuki'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Banarnia'),
 'An 411, Lune 8, Jour 8','vivant',NULL,NULL,300,
 'Collectionne des boîtes décorées.'),
('Oni Sobrex',
 (SELECT id_espece FROM Espece WHERE libelle='Oni'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 405, Lune 5, Jour 1','vivant',NULL,NULL,710,
 'Médite face aux volcans éteints.'),
('Raks Plume',
 (SELECT id_espece FROM Espece WHERE libelle='Rakshasa'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Parmésia'),
 'An 404, Lune 10, Jour 10','vivant',NULL,NULL,740,
 'Change de costume au moindre prétexte.'),
('Diablotin Pince',
 (SELECT id_espece FROM Espece WHERE libelle='Démon mineur'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 409, Lune 11, Jour 11','vivant',NULL,NULL,680,
 'Pince les cordes pour faire rire, pas mal.'),
/* =========================
   WYVERNES / PHÉNIX / NAGAS / SYLPHES / SPRITES
   ========================= */
('Gyra Queuevive',
 (SELECT id_espece FROM Espece WHERE libelle='Wyverne'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 180, Lune 5, Jour 19','vivant',NULL,NULL,500,
 'Aime la voltige et les nuées d’insectes brillants.'),
('Ailefine Brisecoeur',
 (SELECT id_espece FROM Espece WHERE libelle='Wyverne'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 182, Lune 8, Jour 22','vivant',NULL,NULL,470,
 'Survole les côtes au crépuscule pour le plaisir.'),
('Phœbus Reviens',
 (SELECT id_espece FROM Espece WHERE libelle='Phénix'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 100, Lune 1, Jour 1','vivant',NULL,NULL,1000,
 'Aime renaître au bon moment pour surprendre.'),
('Nagalith Perlemare',
 (SELECT id_espece FROM Espece WHERE libelle='Naga'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 390, Lune 7, Jour 7','vivant',NULL,NULL,720,
 'Collectionne des coquilles aux reflets dorés.'),
('Nagaïa Rubans',
 (SELECT id_espece FROM Espece WHERE libelle='Naga'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 398, Lune 10, Jour 10','vivant',NULL,NULL,690,
 'Danse avec des rubans et orne des colonnes marines.'),
('Sylphaine Aéris',
 (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 401, Lune 1, Jour 12','vivant',NULL,NULL,740,
 'Fait vibrer des carillons de vent.'),
('Éole Messager',
 (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 409, Lune 2, Jour 2','vivant',NULL,NULL,760,
 'Siffle des mélodies et collectionne des timbres aériens.'),
('Sylphidée Rubato',
 (SELECT id_espece FROM Espece WHERE libelle='Sylphe'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 406, Lune 3, Jour 9','vivant',NULL,NULL,760,
 'Joue avec la pression atmosphérique comme d’un instrument.'),
('Sparkette',
 (SELECT id_espece FROM Espece WHERE libelle='Sprite étincelant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 404, Lune 12, Jour 2','vivant',NULL,NULL,620,
 'Allume des lampes récalcitrantes.'),
('Spark Mini',
 (SELECT id_espece FROM Espece WHERE libelle='Sprite étincelant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Quichebourg'),
 'An 412, Lune 6, Jour 6','vivant',NULL,NULL,610,
 'Bippe des messages en morse lumineux.'),
('Sprite Bip',
 (SELECT id_espece FROM Espece WHERE libelle='Sprite étincelant'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Raclettea'),
 'An 405, Lune 11, Jour 11','vivant',NULL,NULL,605,
 'Adore les interrupteurs et les étincelles bien timées.'),
 ('Stria Cisailles',
 (SELECT id_espece FROM Espece WHERE libelle='Wyverne'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Dragonflette'),
 'An 181, Lune 7, Jour 7','vivant',NULL,NULL,520,
 'Découpe le ciel en courbes nettes.'),
('Rafale-bleue',
 (SELECT id_espece FROM Espece WHERE libelle='Wyverne'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Poissarie'),
 'An 183, Lune 9, Jour 19','vivant',NULL,NULL,480,
 'Aime les embruns salés en altitude.'),
('Phénix Retex',
 (SELECT id_espece FROM Espece WHERE libelle='Phénix'),
 (SELECT id_lignee FROM Lignee WHERE nom='Inconnu'),
 (SELECT id_royaume FROM Royaume WHERE nom='Éclairoisie'),
 'An 101, Lune 2, Jour 2','vivant',NULL,NULL,1000,
 'Rédige des retours d’expérience enflammés.');


-- HUMAIN(S) : Marchand / Barde / Cartographe
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Marchand ambulant'),
       CASE WHEN p.mana_max>=300 THEN 5 WHEN p.mana_max>=150 THEN 4 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Humain' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Barde'),
       CASE WHEN p.mana_max>=300 THEN 5 ELSE 2 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Humain' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Cartographe'),
       CASE WHEN p.mana_max>=300 THEN 4 ELSE 2 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Humain' AND (p.id_personnage % 3)=2;

-- ELFES : Archerie/Éclaireur (militaire), Enchanteur (savants), Musicien (artistique)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Éclaireur'),
       CASE WHEN p.mana_max>=500 THEN 5 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Elfe' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Enchanteur de cuillères'),
       CASE WHEN p.mana_max>=600 THEN 5 WHEN p.mana_max>=300 THEN 4 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Elfe' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage, (SELECT id_metier FROM Metier WHERE libelle='Musicien'),
       CASE WHEN p.mana_max>=300 THEN 4 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Elfe' AND (p.id_personnage % 3)=2;

-- NAINS : Forgeron / Brasseur / Mineur
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Forgeron'),
       CASE WHEN p.mana_max>=80 THEN 4 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Nain' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Brasseur'),
       3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Nain' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Mineur'),
       4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Nain' AND (p.id_personnage % 3)=2;

-- ORCS : Maître d’armes / Chasseur / Tailleur de pierre
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître d’armes'),
       CASE WHEN p.mana_max>=60 THEN 4 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Orc' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Chasseur de primes'),
       3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Orc' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Tailleur de pierre'),
       3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Orc' AND (p.id_personnage % 3)=2;

-- GNOMES : Ingénieur runique / Horloger / Artificier
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Ingénieur runique'),
       CASE WHEN p.mana_max>=250 THEN 5 ELSE 4 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gnome' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Horloger temporel'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gnome' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Artificier arcanique'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gnome' AND (p.id_personnage % 3)=2;

-- DEMI-ELFES : Diplomate / Scribe / Éclaireur
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Diplomate inter-royaumes'),
       CASE WHEN p.mana_max>=240 THEN 5 ELSE 3 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-elfe' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Scribe des vents'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-elfe' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Éclaireur'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-elfe' AND (p.id_personnage % 3)=2;

-- DEMI-ORCS : Sentinelle / Chasseur / Maître d’armes
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Sentinelle'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-orc' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Chasseur de primes'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-orc' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître d’armes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Demi-orc' AND (p.id_personnage % 3)=2;

-- HOBELINS : Cuisinier / Éleveur / Pâtissier
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Cuisinier arcanique'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Hobelin' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Éleveur de moutons lunaires'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Hobelin' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître pâtissier'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Hobelin' AND (p.id_personnage % 3)=2;

-- TIEFFELINS : Enchanteur / Artificier / Archiviste
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Enchanteur de cuillères'),
       CASE WHEN p.mana_max>=800 THEN 5 ELSE 4 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Tieffelin' AND (p.id_personnage % 3)=0;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Artificier arcanique'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Tieffelin' AND (p.id_personnage % 3)=1;

INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Archiviste de guildes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Tieffelin' AND (p.id_personnage % 3)=2;

-- DRAKÉIDES : Maître d’armes / Forgeron / Runologue
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître d’armes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Drakéide' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Forgeron'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Drakéide' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Runologue'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Drakéide' AND (p.id_personnage % 3)=2;

-- SATYRES : Barde / Musicien / Brasseur
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Barde'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Satyre' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Musicien'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Satyre' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Brasseur'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Satyre' AND (p.id_personnage % 3)=2;

-- AASIMARS : Guérisseur / Diplomate / Gardien de bibliothèque
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Guérisseur'),
       CASE WHEN p.mana_max>=900 THEN 5 ELSE 4 END
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Aasimar' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Diplomate inter-royaumes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Aasimar' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Gardien de bibliothèque'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Aasimar' AND (p.id_personnage % 3)=2;

-- KOBOLDS : Mineur / Forgeron / Artificier
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Mineur'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Kobold' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Forgeron'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Kobold' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Artificier arcanique'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Kobold' AND (p.id_personnage % 3)=2;

-- GOBELINS : Marchand / Messager / Orfèvre (bagatelles)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Marchand ambulant'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gobelin' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Messager royal'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gobelin' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Orfèvre'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Gobelin' AND (p.id_personnage % 3)=2;

-- VAMPIRES : Archiviste / Banquier / Diplomate (nocturne)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Archiviste de guildes'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Vampire' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Banquier d’aventures'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Vampire' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Diplomate inter-royaumes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Vampire' AND (p.id_personnage % 3)=2;

-- LICHES : Scribe / Gardien de bibliothèque / Runologue
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Scribe des vents'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Liche' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Gardien de bibliothèque'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Liche' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Runologue'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Liche' AND (p.id_personnage % 3)=2;

-- DRAGONS : Maître d’armes / Enchanteur / Cartographe (des cieux)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître d’armes'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Dragon' AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Enchanteur de cuillères'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Dragon' AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Cartographe'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle='Dragon' AND (p.id_personnage % 3)=2;

-- DJINNS / IFRITS : Navigateur / Artificier / Enchanteur
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Navigateur céleste'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Djinn','Ifrit') AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Artificier arcanique'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Djinn','Ifrit') AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Enchanteur de cuillères'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Djinn','Ifrit') AND (p.id_personnage % 3)=2;

-- FÉES/SYLPHES/SPRITES : Barde / Musicien / Enchanteur
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Barde'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Fée','Sylphe','Sprite étincelant') AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Musicien'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Fée','Sylphe','Sprite étincelant') AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Enchanteur de cuillères'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Fée','Sylphe','Sprite étincelant') AND (p.id_personnage % 3)=2;

-- SIRÈNES/NÉRÉIDES/ONDINES/NAGAS : Navigateur / Pêcheur / Diplomate (ports)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Navigateur céleste'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Sirène','Néréide','Ondine','Naga') AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Pêcheur de nuages'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Sirène','Néréide','Ondine','Naga') AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Diplomate inter-royaumes'),3
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Sirène','Néréide','Ondine','Naga') AND (p.id_personnage % 3)=2;

-- GÉANTS/PIERRE/GLACES : Tailleur de pierre / Routier / Charpentier naval (grosses pièces)
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Tailleur de pierre'),5
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Géant','Géant de pierre','Géant des glaces') AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Routier céleste'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Géant','Géant de pierre','Géant des glaces') AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Charpentier naval'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Géant','Géant de pierre','Géant des glaces') AND (p.id_personnage % 3)=2;

-- DRYADES/CENTAURES/MINOTAURES/SPHINX : Herboriste / Guérisseur / Maître d’armes
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Herboriste'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Dryade') AND (p.id_personnage % 3)=0;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Guérisseur'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Centaure','Sphinx') AND (p.id_personnage % 3)=1;
INSERT INTO PersonnageMetier (personnage_id, metier_id, niveau)
SELECT p.id_personnage,(SELECT id_metier FROM Metier WHERE libelle='Maître d’armes'),4
FROM Personnage p JOIN Espece e ON p.espece_id=e.id_espece
WHERE e.libelle IN ('Minotaure') AND (p.id_personnage % 3)=2;


