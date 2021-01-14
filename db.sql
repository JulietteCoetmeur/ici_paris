-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 14, 2021 at 09:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ici_paris`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(9, 'Vêtements', 'vetements'),
(10, 'Accessoires', 'accessoires'),
(11, 'Objets', 'objets'),
(12, 'Chaussures', 'chaussures'),
(13, 'Cosmétiques', 'cosmétiques'),
(14, 'Lifestyle', 'lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210113132619', '2021-01-13 13:26:24', 379),
('DoctrineMigrations\\Version20210113132724', '2021-01-13 13:27:30', 97),
('DoctrineMigrations\\Version20210113133625', '2021-01-13 13:36:48', 222);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'Femme'),
(2, 'Homme'),
(3, 'Enfant');

-- --------------------------------------------------------

--
-- Table structure for table `gender_product`
--

CREATE TABLE `gender_product` (
  `gender_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender_product`
--

INSERT INTO `gender_product` (`gender_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 24),
(1, 25),
(1, 26),
(1, 37),
(1, 38),
(1, 39),
(1, 45),
(2, 2),
(2, 3),
(2, 10),
(2, 11),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 45),
(2, 75),
(3, 2),
(3, 40),
(3, 41),
(3, 42),
(3, 43),
(3, 44),
(3, 74);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `advice` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `description`, `image`, `price`, `quantity`, `advice`, `slug`) VALUES
(1, 9, 'Trench Beige model femme', 'Trench déperlant avec col à revers. Manches longues ajustables à boutons-pression. Poches sur les côtés. Ourlet avec fentes latérales. Fermeture à l\'avant par zip et rabat à boutons-pression.\r\nGilet matelassé à col montant et capuche. Poches sur les côtés et avant avec fermeture par zip dissimulé dans la couture.\r\nCe vêtement est muni d\'un rembourrage thermique isolant et retenant la chaleur corporelle. Il est léger, respirant et facile à nettoyer.', 'https://i.postimg.cc/4y0Ysqcg/trench-femme_(1).jpg', 180, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'trench-beige'),
(2, 12, 'Stan Smith', 'Enfile une icône. Si Stan Smith a régné sur les courts de tennis à l\'époque, c\'est toi qui va t\'imposer dans la rue avec cette sneaker adidas qui porte bien son nom. Cette version capture toute l\'essence du modèle de 1971. La tige en cuir minimaliste et les bords épurés restent classiques.', 'https://i.postimg.cc/YSBmv5s2/t600x362.jpg', 100, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'basket-stan-smith'),
(3, 10, 'Tote-bag ici c\'est paris de Jacky', 'Résistant mais léger, entièrement imprimé, pratique pour transporter votre barda ou vos courses.\r\nLanière épaule large de 2,5 cm (1\") en coton ultra résistant.\r\nDoux mais costaud, en popeline 100 % polyester.\r\nLavage en machine, en cycle délicat.\r\nBesoin d\'un sac plus léger ? Le tote bag classique fera votre bonheur.', 'https://i.postimg.cc/rwmfhrVR/iciparis-650x341.jpg', 25, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'tote-bag-paris'),
(8, 10, 'Béret femme', 'Nous travaillons avec nos fournisseurs, employés, syndicats et organismes internationaux pour développer une chaîne d\'approvisionnement dans laquelle les droits de l\'homme sont respectés et encouragés, tout en contribuant aux Objectifs de développement durable des Nations unies.\r\nDe plus, grâce à la collaboration continue avec nos fournisseurs, nous avons développé un programme de traçabilité qui nous permet de savoir où et comment nos vêtements ont été confectionnés.\r\nFABRIQUÉ EN CHINE', 'https://i.postimg.cc/tTGX9y7y/beret-classique-noir-femme.jpg', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'beret-femme'),
(9, 9, 'Marinière femme', 'Pièce essentielle de notre vestiaire, la marinière Ventdest actualise la marinière traditionnelle avec les détails mode de la saison. Revisitée avec un jeu de broderies imaginé par la blogueuse nantaise lifestyle Nolwenn C, elle se décline cette saison dans un jersey de coton bio très doux.\r\nExiste aussi dans une nouvelle rayure prune.', 'https://i.postimg.cc/LsPB7kr5/mariniere-manches-longues-femme-l-aileron-de-requin.png', 40, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'mariniere-femme'),
(10, 13, 'Crème anti-pollution', 'Adapté à tous les types de peaux, ce masque détoxifiant nettoie la peau en profondeur et booste ses défenses naturelles. En une seule application, le teint est reposé et visiblement plus frais. Un soin idéal pour les peaux stressées par la vie urbaine.\r\nVéritable allié pour préserver votre peau des effets néfastes de la pollution, le soin anti-pollution a tout bon. Ajoutez-le dès maintenant à votre routine beauté quotidienne et assurez-vous une peau plus jeune et plus belle !', 'https://i.postimg.cc/MGLN0Y1G/Baume-Anti-pollution-SAYES.jpg', 45, 30, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'creme-antipollution'),
(11, 13, 'Crème anti-ride', 'Innovation Pro-Aging Nutrition et Lumière Clarins. Son puissant duo d’actifs naturels issus du Marronnier d’Inde est connu pour son action sur le réseau micro-nutritif et restaure la luminosité des peaux dénutries. Mieux nourrie, revitalisée, la peau retrouve toute sa lumière.', 'https://i.postimg.cc/R0Wb0n2x/darphin-predermine-anti-rides-fermete-peaux-seches-50-ml-face.jpg', 80, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n22:24', 'crème-anti-ride'),
(24, 13, 'Parisienne - Le Parfum', 'Le portrait d\'une femme incroyablement libre. Libre de penser et d\'agir. Elle n\'est pas née à Paris mais Paris l\'a adoptée. Parce qu\'elle sait aimer et vivre, vivre et aimer sans attendre.\r\nLe parfum de l\'ultra féminité réchauffée par l\'empreinte de l\'homme qui l\'a effleurée. Un grand floral à la structure boisée, lumineux même dans sa part de mystère.\r\nLa note de tête plaque un Accord Vinyle, clin d\'oeil au vernis, au gloss ou aux talons aiguilles de la Parisienne. Puis le Cranberry, fruit acidulé, ajoute une pointe d\'amertume, évocation d\'une certaine impertinence, adoucie par la Mûre, pulpeuse, pétillante, charnue, symbole d\'une Parisienne épicurienne. Le coeur floral bat la chamade avec la Rose de Damas, d\'une féminité absolue et qui s\'harmonise parfaitement avec la Violette, plus poudrée, sensuelle et charnelle, comme le cuir porté par Parisienne. La note de fond apporte dans son sillage boisé trouble et intensité. D\'abord avec du Patchouli, le mystère par excellence. Et quand la masculinité du Vétiver flirte avec l\'érotisme féminin du Musc et du Santal, on comprend que cette nuit Parisienne fut une \"night of love\".\r\nLe flacon est précieux, ciselé comme le labyrinthe des rues de Paris, froissé comme les draps qu\'elle vient de quitter, rosé comme le ciel au petit matin blême, couture avec sa griffe YSL posée sur du cuir noir.', 'https://i.postimg.cc/vT0W906q/parisienne-eau-de-parfum-boite-et-flacon-ysl.jpg', 140, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'eau-de-parfum-la-parisienne'),
(25, 11, 'Alarme anti-agression', 'Un sifflet est un petit instrument à vent permettant de produire un sifflement strident équivalant à un signal fort.', 'https://i.postimg.cc/8cX6ssqx/sifflet-plastique.jpg', 25, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'sifflet-anti-agression'),
(26, 10, 'Sac/Pochette anti-vol dans le métro', 'Un Cadenas TSA est un système de fermeture à code pour vos bagages soutes et cabines. C\'est un cadenas destiné aux voyageurs se rendant aux Etats-Unis car il est compatible avec les normes de sécurité en vigueur dans les terminaux de transport américain.\r\n', 'https://i.postimg.cc/pdQ5zswf/w750_bffffff.jpg', 45, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'sac-anti-vol'),
(27, 10, 'Bonnet hipster', 'Aucun couvre-chef n\'est autant à l\'épreuve du temps que le bonnet. Que ce soit pour rester au chaud cet hiver ou parfaire votre style en toute saison, découvrez notre collection de bonnets pour homme. Un bonnet XXL ou minimaliste au look pêcheur, aux tons neutres ou aux couleurs vives : il y en a pour tous les goûts chez ASOS. Ajoutez une chemise en flanelle pour un look 100 % hipster, ou simplement un T-shirt, ou même un sweat-shirt pour un look décontracté. Les adeptes du style skate trouveront leur bonheur du côté de chez Vans, tandis que les bonnets griffés Fiorucci sauront apporter une touche élégante et unique à vos tenues.\r\n', 'https://i.postimg.cc/L86brWTX/Comment-porter-bonnet-style-4.jpg', 45, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'Bonnet-hipster'),
(28, 9, 'Marinière Homme', 'Pièce essentielle de notre vestiaire, la marinière Ventdest actualise la marinière traditionnelle avec les détails mode de la saison. Revisitée avec un jeu de broderies imaginé par la blogueuse nantaise lifestyle Nolwenn C, elle se décline cette saison dans un jersey de coton bio très doux.\r\nExiste aussi dans une nouvelle rayure prune.\r\n', 'https://i.postimg.cc/2yrwnq96/mariniere-marine-nationale.jpg', 55, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'Marinière-homme-bleu'),
(29, 9, 'Ensemble chemise/pull', 'Surchemise à manches longues en mélange de laine, avec imprimé à carreaux de différentes couleurs, col classique et boutons.', 'https://i.postimg.cc/d3VCqGS8/pull-eco-responsable-camel-homme-dc-36125241400370839.jpg', 120, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'Chemise-pull-pour-bobo'),
(30, 9, 'Veste Hipster', 'Veste à col classique et manches longues. Poches poitrine passepoilées. Poches plaquées à rabat sur les hanches. Fermeture par boutons sur le devant.', 'https://i.postimg.cc/26BJ0Bx7/ATG03500-40179240196-1.jpg', 90, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'veste-laine-homme'),
(31, 9, 'Chino beige', 'Pantalon skinny confectionné dans un tissu de coton élastique. Poches avant et poches à double passepoil à l\'arrière. Effet délavé. Fermeture avant par zip et bouton.\r\n', 'https ://i.postimg.cc/MKw4YHf1/big01.jpg', 40, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'chino-beige-homme'),
(32, 9, 'Pantalon velours hipster', 'Pantalon à coupe décontractée et taille élastique. Poches avant et poches plaquées à l\'arrière. Fermeture avant par zip et bouton', 'https://i.postimg.cc/7YyvQXdG/1004106-0006-1.jpg', 55, 50, '22:32\r\nIci c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'pantalon-velours-cotele'),
(33, 9, 'Pantalon à pince', 'Pantalon à taille haute élastique. Poches latérales dissimulées dans la couture. Revers à l\'ourlet.\r\n', 'https://i.postimg.cc/DwjMFcjc/eurex-by-brax-le-pantalon-a-pinces-modele-luis-gris.jpg', 89, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'pantalon-a-pince'),
(34, 12, 'Mocassins\r\n', '\r\nChaussures plates style mocassins en cuir disponibles en plusieurs couleurs. Tige en cuir avec détail boucle sur le devant.\r\n\r\nAIRFIT®. Semelle technique souple en mousse composée de latex, conçue pour offrir plus de confort.\r\n\r\nHauteur du talon : 1,3 cm\r\n\r\n\r\n\r\n', 'https://i.postimg.cc/NGD8WjP6/mocassin-brecourt-marron-patine.jpg\r\n', 120, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'mocassin-paris-16'),
(35, 10, 'Bretelles', 'Élégantes bretelles beiges d\'E.L. Cravatte. Les bandes élastiques sont rehaussées aux extrémités de pattes en cuir (véritable) et de clips pratiques solides faciles à fixer au pantalon. Longueur réglable grâce à des pinces coulissantes pratiques. En forme Y particulièrement confortable : 2 bandes devant, 1 bande au dos. Ce modèle très tendance s\'accorde avec de nombreuses tenues pour toutes sortes d\'occasions. Pour tout dire, ces belles bretelles beiges ne sauraient manquer à aucune garde-robe masculine. Optez pour la qualité au meilleur prix.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nLongboard de kékos\r\n\r\n\r\nConçu pour la pratique du dancing. Ce set up complet est progressif et conviendra aussi bien au débutant qu\'au confirmé qui souhaite perfectionner ses moves.\r\n\r\nPlanche en composite Bois/Fibre de verre avec renforts pour un excellent compromis flexibilité/dynamisme (pop) et solidité\r\n\r\n\r\nhttps://i.postimg.cc/tTVbWqCZ/skateboard-up.png\r\n\r\nIci c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n\r\nlongboard-kekos-hipster\r\n', 'https://i.postimg.cc/1z35n1qw/chemise-blanche-peaky-blinders.png\r\n', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'typique-bretelle-parisienne'),
(36, 14, 'Entretien complet de la barbe parfaite du hipster', 'Ce kit d\'entretien pour la barbe et la moustache vous enchantera.\r\nQUE CONTIENT CE SET D\'ENTRETIEN POUR BARBE ?\r\nQuantité: cet ensemble d\'entretien pour barbe contient 7 pièces,\r\nUne huile à barbe: 30 ml,\r\nUn baume à barbe: 30 g,\r\nUne brosse à barbe en bois naturel,\r\nUn peigne à barbe en métal,\r\nUn tablier de rasage,\r\nUn sac de rangement ultra-large capacité,\r\nUne box / paquet sympathique.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'https://i.postimg.cc/FzJMdDpj/barber-cream.png\r\n', 35, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'kit-barber-stack'),
(37, 14, 'Dico francais/anglais', 'Ultra pratique, actuel et complet ! Pour enrichir son vocabulaire : 220 000 mots, expressions et traductions ; le vocabulaire le plus récent ; de très nombreux exemples ; plus de 3 000 américanismes. Pour progresser : du vocabulaire thématique ; des rappels de grammaire ; les expressions les plus courantes ; des informations culturelles. Plus une grammaire détaillée et un guide de conversation. Le n° 1 du marché !\r\n', 'https://i.postimg.cc/vTfJZ6gZ/51-JPXKAAB9-L-SX346-BO1-204-203-200.jpg', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'dico-pour-parisien-nul-en-anglais'),
(38, 14, 'Bière IPA', 'Une bière IPA très sèche en bouche qui se rapproche d’un pétillant brut. Elle s’en éloigne cependant par les arômes apportés par le houblon.', 'https://i.postimg.cc/rwJwwwKq/barber-ipa.png', 8, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'biere-IPA'),
(39, 14, '\r\nCigarette électronique\r\n', 'Vous êtes à la recherche d\'une cigarette électronique pas plus grosse qu\'une cigarette classique ? Bingo, la marque Française Marie Jeanne, célèbre pour ses E Liquides CBD, présente le Kit Vape Pen Reefer ! Idéale pour le vapotage de E Liquides CBD, cette cigarette électronique destinée à l\'inhalation indirecte (MTL) est dotée d\'une résistance modeste de 1.5 ohm et d\'un réservoir de 0.5 ml.', 'https://i.postimg.cc/027NhfvM/e-clope-smoke.png', 45, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'e-clope'),
(40, 10, 'Tétine de fan de footballer\r\n', 'Bébé adore le foot. Les corners, penaltys, coups francs et hors jeux n\'ont plus de secret pour votre enfant. Il est le meilleur supporter de son équipe de football préférée, et il veut le faire savoir !\r\nLe Paris Saint-Germain Football Club, couramment appelé Paris ou PSG est LE club de football favori de bébé, comme papa ou maman, parrain/marraine ou papy? Vous avez la possibilité de personnaliser la sucette de bébé avec votre propre choix.\r\nVous pouvez effectuer de nombreux lavages ou stérilisations, l\'impression restera nette. Cependant, nos impressions peuvent être endommagées par des frottements quand ils sont répétés (sur le sol ou les murs par exemple) puisque nous n\'utilisons pas de vernis pour fixer les couleurs (par mesure de sécurité pour votre enfant).\r\nPour des raisons d\'hygiène et de sécurité, les sucettes doivent de toute façon être changées environ toutes les 4 à 6 semaines. Lisez bien la notice située dans l\'emballage.\r\n', 'https://i.postimg.cc/5tkd7JWb/6096a48b2aece8ad8a95bf622669043f.jpg', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'tetine-mega-cool\r\n'),
(41, 9, 'Béret baby', 'Ce béret bébé fille est confectionné en molleton brossé pour plus de confort. Il est doublé en rayure milleraies, rayure iconique de Petit Bateau. Une nouvelle forme très chic dans la collection Petit Bateau de bonnets bébé fille : un accessoire qui finira parfaitement le look des petites demoiselles grâce à son nœud sur le devant.', 'https://i.postimg.cc/3x1HGpLy/61-Sm-l-W0-TRL-AC-SY450.jpg', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'beret-bebe-fashion'),
(42, 14, 'Poudre pour bébé goût baguette', 'Un substitut du lait maternel, plus communément appelé lait artificiel, préparation infantile, ou encore préparation pour nourrisson, désigne « tout aliment commercialisé ou présenté de toute autre manière comme produit de remplacement partiel ou total du lait maternel, qu’il convienne ou non à cet usage ».', 'https://i.postimg.cc/xCHxvV0s/cereales-infantiles-avoine-ble-riz-bebe-des-6-mois-good-gout-front-vp-23.jpg', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'poudre-bebe-baguette'),
(43, 14, 'Coupe file crèche', 'Chacune de nos crèches a été créée et imaginée par l’équipe d’architectes spécialisée dans la Petite Enfance et leur imagination n’a pas de limites !… Picpus et son thème de « Chantier », Roussel sur le thème de la forêt et son grand toboggan qui relie les 2 niveaux, Ourcq et son thème de géométrisme du peintre Piet Mondrian etc… De plus, l’étude de chaque nouveau projet architectural est menée en parallèle à une réflexion sur l’accessibilité des lieux aux personnes présentant un handicap.\r\nLes locaux sont pensés pour l’accueil, le repas, le sommeil, l’hygiène et le bien-être des enfants avec une ergonomie adaptée.', 'https://i.postimg.cc/YSTDLCwG/cherubins-1.jpg', 1500, 3, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'ticket-d-or'),
(44, 10, 'Poussette yoyo', '\r\nÀ la naissance, installez sur le cadre de la poussette, le pack nouveau-né 0+ qui permet\r\nd’allonger votre bébé totalement à plat, face àvous, pour toujours avoir un œil sur lui.\r\nLe pack nouveau-né 0+ a été pensé pour apporter le maximum de confort à votre bébé\r\ngrâce à son hamac moelleux et douillet, conçu spécialement pour accueillir un nouveau-né. Dans cette version, YOYO2 se plie et se déplie d’une seule main avec votre enfant dans les bras.\r\nPliage en « un seul élément » ultra compact.\r\nMatelas renforcé et totalement à plat.\r\nCale-tête et couvre-pieds.\r\nHarnais 5 points.\r\nCapote “pop-up” avec 2 positions d’ouverture différentes.\r\nTissu anti-UV (UPF 50+) traitédéperlant.\r\nPliage « un seul élément » ultra-compact et dimension bagage cabine\r\nPolaire sherpa blanc écru douce et moelleuse\r\nCale-tête en tissu doux et léger, assorti à la couleur du matelas\r\nMatelas moelleux et confortable (20 mm d’épaisseur) avec harnais 5 points\r\nCapote pop-up avec deux positions\r\nSangle réglable à l’entrejambe pour une installation optimale de votre bébé\r\nCouvre-pieds dans la même matière que la capote, pour une meilleure\r\nprotection (tissu + résistant et traité déperlant) et un meilleur rendu\r\nLavable en machine à 30°C en retirant les plaques de la base textile ainsi que\r\nl’arceau de la capote', 'https://i.postimg.cc/BQJYKzRg/images.jpg', 250, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'poussette-tout-terrain-parisien'),
(45, 14, 'Livre d\'insulte pour apprendre le language du métro', 'This essential phrasebook collects the most colourful, explicit and outrageous ways to tell people off in different languages from all around the world. Featuring dozens of different languages, the sayings range from everyday swears to family curses to x-rated encounters with animals. Some of the most useful expressions include wishing an enemy a painful death, insulting a person\'s grandmother and accusing someone\'s mother of having intimate relations with bears in the forest.\r\n\r\n', 'https://i.postimg.cc/ydgq2G79/41hoqz-XPOEL-SX355-BO1-204-203-200.jpg\r\n', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.\r\n', 'language-de-la-street'),
(57, 11, 'Pouf/rangement pour ton 15m2', 'Pouf coffre en simili SERAFINO\r\nCouleur : chocolat, blanc ou noir\r\nRevêtement en simili.\r\nAstucieux mélange de polyuréthane et de tissu, le simili a l’aspect du cuir et est agréable au toucher, tout en étant facile à vivre : un simple coup d’éponge suffit à lui enlever les éventuelles tâches ou salissures. Cette matière est donc idéale pour les grandes familles, les petits budgets ou pour tous ceux qui ne veulent pas passer trop de temps à entretenir leur canapé !\r\nAssise garnie de mousse polyuréthane d\'une densité de 25 kg/m3.\r\nStructure en bois massif.\r\nPieds en PVC.', 'https://i.postimg.cc/NMYTz36C/pouf-rangement-656x344.jpg', 35, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'pouf-rangement'),
(58, 11, 'Code barre pour retrouver ton vélo volé', 'En associant le numéro de série d\'un vélo à son propriétaire, la base nationale Paravol lève un frein à l\'utilisation quotidienne du vélo. Une fois le vélo enregistré sur la base, il devient identifiable et restituable.\r\n\r\n\r\n', 'https://i.postimg.cc/Kc0L0sRQ/Sans_titre-1.jpg', 35, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'code-barre-velo'),
(59, 14, 'Permis de conduire avec points illimités et bonus amendes pour un mauvais', 'Obligations de l\'accompagnateur\r\nL\'apprenti conducteur doit être sous la surveillance constante et directe d\'un accompagnateur durant son apprentissage de la conduite.\r\nL\' accompagnateur doit remplir les conditions suivantes :\r\nAvoir le permis B depuis au moins 5 ans\r\nNe pas avoir été sanctionné, dans les 5 années précédentes, par une annulation ou une invalidation du permis de conduire\r\nNe pas être rémunéré pour cette tâche\r\nSigner la charte de l\'accompagnateur\r\nVeiller à ce que l\'apprenti conducteur respecte les règles de sécurité, en particulier les limitations de vitesse\r\n\r\n\r\n', 'https://i.postimg.cc/yYNhBCww/permis-conduire-auto.jpg', 450, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'permis-special-parisien'),
(60, 10, 'Pince-nez pour éviter les odeurs du métro', 'Le pince-nez est un équipement utilisé pour comprimer les narines du nez. Il est utilisé dans différents sports aquatiques afin d\'empêcher l\'entrée de l\'eau dans le nez.\r\n\r\n', 'https://i.postimg.cc/j24M16nP/HTB1-Mo-Yn-HSYBu-Nj-Sspfq6-AZCp-Xao.jpg', 10, 40, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'pince-nez-anti-odeurs'),
(61, 14, 'Un jardin zen contre le stress', 'Originaire du pays du Soleil Levant servant à la méditation, le jardin zen miniature permet de recréer la nature de façon réduite : Le sable représente la mer, les pierres symbolisent les rochers ou les îles, la statuette ou le Bouddha entraîne à la méditation, puis les portes bougies apportent ... La lumière et la volupté ! Retrouvez dans chacun de ces mini jardins l\'esprit zen des jardins japonais pour vous ressourcer ! En plus de leur qualité décorative, chaque mini jardin zen entouré d\'un socle exprimera pleinement votre créativité et vos émotions du moment. Ainsi composé de sa statuette ou de son Bouddha, il représentera votre personnalité et aucune autre ! Par cette idée de cadeau anti-stress aux senteurs de bonheur et de sérénité, songez à vos proches et à tous vos chers amis en leur donnant l\'occasion de concevoir tout en plénitude leur propre mini jardin zen “ secret ” socle : 26cmx26cm\r\n', 'https://i.postimg.cc/hP9nSNT1/5e10839f4b299e140e2f6485-5-large.jpg', 25, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'jardin-zen-detox'),
(62, 14, 'Prêt immobilier sur 3 générations pour acheter un appart de 35m2', 'Des taux fixes parmi les plus bas du marché :\r\n1,06 % TAEG annuel, taux fixe sur 20 ans assurance comprise.\r\nUne réponse immédiate à votre demande de crédit immobilier 100 % en ligne.\r\nLe crédit immobilier en toute liberté : pas d\'exigence de domiciliation de vos revenus, pas d\'apport personnel minimum (hors frais de notaire et de garantie Crédit Logement).\r\n', 'https://i.postimg.cc/W12Bsz2s/2016-1111-travaux-domicile.jpg', 6500000, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'pret-immo-parisien'),
(63, 11, 'Un oreiller pour les banlieusards qui font 1h30 de trajet matin et soir', '★ MATÉRIAUX DE HAUTE QUALITÉ: L\'appui-tête de voyage est fait de nylon de haute qualité et hautement élastique et est fait de composites brossés. Il est respirant et met l\'accent sur plus de confort et de protection de l\'environnement.\r\n★ LÉGÈRE ET PRATIQUE: L\'oreiller de voiture est équipé d\'une conception de fermeture à glissière réglable, facile à installer et à enlever, facile à nettoyer; Feuille d\'oreiller peut être tourné de 180 degrés, lorsque vous n\'êtes pas utilisé, vous pouvez tourner pour économiser de l\'espace.\r\n★ DESIGN STREAMLINED: Cet oreiller a été conçu avec un design épuré qui rompt la convention et adapte les concepts de conception ergonomique pour rendre le séjour confortable et insouciant.\r\n★ L\'ESPRIT DE L\'ARTISANAT: un design de bord et une couture exquis, une beauté exquise reflète notre plus haute quête de qualité, conçu pour fournir aux clients le meilleur produit parfait.\r\n★ VOYAGE PLUS CONFORTABLE: Ce produit est un produit universel adapté aux adultes et aux enfants; Si vos proches, enfants et amis voyagent fatigués, il peut prendre soin de votre cou pour prévenir les douleurs au cou, voyager plus à l\'aise.\r\n', 'https://i.postimg.cc/Tw8QYNrn/homme-fatigue-dans-autobus-dormir-oreiller-gonflable-cervical-transport-1423-3034.jpg', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'metro-boulot-dodo'),
(64, 11, 'Un Rubik\'s cube pour patienter quand ton RER D a été supprimé', 'Le Rubik’s Cube est un casse-tête inventé par Ernő Rubik en 1974, et qui s’est rapidement répandu sur toute la planète au cours des années 1980. Au Canada francophone, il est nommé Cube Rubik et l\'appellation Rubik\'s Cube est considérée comme exclusivement anglophone.', 'https://i.postimg.cc/kXhQghCD/photo-1539627831859-a911cf04d3cd.jpg', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'rubriks-cube-transport'),
(65, NULL, 'Un poster de forêt pour se rapprocher de la nature', 'Forêt c\'est un motif merveilleux des tableaux que vous pouvez trouver dans la boutique bimago. Dans notre collection intéressante vous pouvez trouver un tableau mural \"Forest Walk (4 Parts)\", qui a captivé la beauté de cet endroit d\'une manière créative. Paysage \"Forest Walk (4 Parts)\" vous permettra d\'admirer cette image pittoresque tout le temps, et ses couleurs magnifiques illumineront l\'intérieur de votre appartement. Un arrangement réalisé à l\'utilisation de ce tableau c\'est une façon parfaite de montrer ses passions, son endroit aimé ou ses souvenirs de vacances. Tableau Paysage sur toile \"Forest Walk (4 Parts)\" est une proposition intéressante pour chacun qui aime Forêt et adore la beauté de la nature.', 'https://i.postimg.cc/kMS3cL1P/5cf33e71eacb8254223af055-large.jpg', 50, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', '\r\ntableau-foret'),
(66, 11, 'Des grands miroirs pour que ton appart paraisse plus grand', 'Avec son encadrement en ayous teinté, le miroir rectangulaire Diane est une invitation au voyage. Il sera magnifique dans une déco au style cosmopolite, parmi les souvenirs de vacances lointaines.\r\n', 'https://i.postimg.cc/cCRzSy2K/big-frame-mirror-by-maurizio-peregalli-for-zeus-2.jpg', 55, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'miroir-magique'),
(67, 11, 'Une mini tirelire pour tes mini-économies', 'Quand les plus beaux produits sont aussi les meilleurs... Tirelire cochon granito h15 cm Céramique 19x12 cm Prix : 19.50 € Marque : table passion Cette tirelire cochon granito de 15 cm de hauteur, originale sera utile et décorative. les tâches colorées sur fond blanc feront d\'elle un objet design dans votre intérieur. Matière : Céramique Couleur : Blanc Longueur : 19 Largeur : 12 Hauteur : 15 Qui sommes-nous Quand les plus beaux produits sont aussi les meilleurs... Merci de préciser le numéro d\'objet et votre pseudo dans votre virement ou chèque. Vous disposez d\'un délai de 14 jours à compter de la date de réception de votre achat pour renvoyer votre colis.\r\n\r\n\r\n\r\n', '', 10, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'tireline-pour-tes-centimes'),
(68, 14, 'La carte des pintes les moins chères (genre 5,50€)', 'Google Maps est un service de cartographie en ligne. Le service a été créé par Google suite au rachat en octobre 2004 de la start-up australienne Where 2 Technologies. Lancé en février 2005 aux États-Unis et au Canada, puis en Grande-Bretagne (sous le nom de Google Local), Google Maps a été lancé mardi 25 avril 20061, simultanément en France, Allemagne, Espagne et Italie.\r\nC\'est un service disponible sur PC, sur tablette et sur smartphone qui permet, à partir de l\'échelle mondiale, de zoomer jusqu\'à l\'échelle d\'une habitation. Des prises de vue fixes montrant les détails de certaines rues sont également accessibles grâce à une passerelle vers Google Street View.\r\nPlusieurs types de vue sont disponibles dans Google Maps : une vue en plan cartographique classique, avec nom des rues, quartier, villes et une vue en images satellites ou photographies aériennes, qui couvre aujourd\'hui le monde entier, une vue en images obliques couvrant les grandes villes du monde et certaines villes secondaires et une vue avec le relief. Ce service n\'est plus en version bêta depuis le 12 septembre 2007, et a été ajouté aux liens de la page d\'accueil de Google.\r\n', 'https://i.postimg.cc/PfWVNHVJ/Capture-d-e-cran-2021-01-13-a-14-27-05.png', 35, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'carte-de-l-alcoolo'),
(69, 14, 'Luminothérapie pour voir la lumière du jour de temps en temps', 'La est un traitement médical utilisé dans la prise en charge des troubles du rythme circadien et de la dépression saisonnière, ainsi que dans d\'autres pathologies. Elle consiste à exposer les yeux à une lumière d\'intensité et de spectre lumineux spécifique proche de la lumière solaire.\r\n\r\n\r\n\r\n', 'https://i.postimg.cc/66fzt0TG/light-therapy-Getty-Images-450473677-inside.jpg', 65, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'luminothérapie '),
(70, 11, 'Etoiles phosphorescentes pour s\'endormir à la belle étoile', '\r\nDécorez la chambre de votre enfant avec ces 84 étoiles et 70 ronds en vinyle autocollant phosphorescents. Conçu pour durer, elles ont un fini lustré et brillent dans le noir. Installez les de façon aléatoire au plafond ou sur les murs ou encore formez des constellations. Les autocollants sont blancs le jours et brillent vert la nuit.\r\n\r\n\r\n', 'https://i.postimg.cc/WbKZvFmk/sticker-univers--environ-300-etoiles-et-planetes-phosphorescentes-ambiance-sticker-J-SCY-003_(x2).jpg', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'nuit-etoilee'),
(71, 14, 'Tickets de réservation pour avoir une place en terrasse', 'Débit de boissons où les consommateurs se tiennent debout ou assis sur de hauts tabourets devant un comptoir. Lieu où l\'on consomme des boissons, dans un théâtre, un hôtel, etc. : Prendre une consommation au bar. Comptoir d\'un débit de boissons, où l\'on peut consommer debout ou assis sur de hauts tabourets.\r\n\r\n\r\n', 'https://i.postimg.cc/pVzxdL63/terrasse.png', 65, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'plus-d-attente-pour-les-bars'),
(72, 14, 'Un tuto pour frauder le métro', 'Le métro de Paris est l\'un des systèmes de transport en commun desservant la ville de Paris et son agglomération. Exploité par la Régie autonome des transports parisiens (RATP), il comporte seize lignes, essentiellement souterraines, totalisant 225,1 kilomètres.\r\n\r\n\r\n', 'https://i.postimg.cc/JhHP8CB1/jacques-chirac-tourniquet.jpg', 12, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce manteau long pour vous fondre dans la masse bourgeoise des beaux quartiers parisiens.', 'tuto-metro'),
(73, 14, 'Des faux dossiers pour trouver un appart', '\r\nTrouver un logement, c\'est effectuer une recherche efficace et intensive. C\'est aussi fournir aux propriétaires un dossier complet qui les rassure et leur permet d\'effectuer un choix réfléchi. Mode d\'emploi de la recherche d\'un logement.\r\n', '\r\nhttps://i.postimg.cc/XYpgK6Lw/kelly-sikkema-t-QQ4-Bw-N-UFs-unsplash.jpg', 500, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce ', 'recherche-appart-ou-chambre-de-bonne'),
(74, 9, 'Bretelles pour enfant bobo', 'Élégantes bretelles beiges d\'E.L. Cravatte. Les bandes élastiques sont rehaussées aux extrémités de pattes en cuir (véritable) et de clips pratiques solides faciles à fixer au pantalon. Longueur réglable grâce à des pinces coulissantes pratiques. En forme Y particulièrement confortable : 2 bandes devant, 1 bande au dos. Ce modèle très tendance s\'accorde avec de nombreuses tenues pour toutes sortes d\'occasions. Pour tout dire, ces belles bretelles beiges ne sauraient manquer à aucune garde-robe masculine. Optez pour la qualité au meilleur prix.\r\n\r\n\r\n', 'https://i.postimg.cc/LXrHbq03/enfant-peaky-blinders.png', 15, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce ', 'bretelles-enfant'),
(75, 9, 'Béret pour Hipster Chic', 'Le béret ou berret est un type de couvre-chef d\'origine béarnaise. Il s\'agit d\'un bonnet en feutre souple ou en laine tricotée et feutrée, de forme circulaire et plate, généralement garni d\'une couronne intérieure en cuir.\r\n\r\n\r\n', 'https://i.postimg.cc/T3FJCNNB/Miki-Rainy-Light-Khaki-720x.jpg', 20, 50, 'Ici c\'est Paris vous recommande ce trench pour passer vos automnes dans le 16ème ou bien le 8ème arrondissement à l\'abri du vent.\r\nRien de mieux que ce ', 'beret-pour-bobo');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, '37'),
(2, '38'),
(3, '39'),
(4, '40'),
(5, '41'),
(6, '36'),
(7, 'S'),
(8, 'M'),
(9, 'L'),
(10, 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `size_product`
--

CREATE TABLE `size_product` (
  `size_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size_product`
--

INSERT INTO `size_product` (`size_id`, `product_id`) VALUES
(1, 2),
(1, 31),
(2, 2),
(2, 31),
(2, 32),
(2, 33),
(3, 2),
(3, 31),
(3, 32),
(3, 33),
(4, 2),
(4, 31),
(4, 32),
(4, 33),
(4, 34),
(5, 2),
(5, 31),
(5, 33),
(5, 34),
(6, 2),
(6, 31),
(7, 1),
(7, 9),
(7, 28),
(7, 35),
(7, 74),
(8, 1),
(8, 9),
(8, 28),
(8, 30),
(8, 35),
(8, 74),
(9, 1),
(9, 9),
(9, 28),
(9, 30),
(9, 35),
(10, 9),
(10, 28);

-- --------------------------------------------------------

--
-- Table structure for table `style`
--

CREATE TABLE `style` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `style`
--

INSERT INTO `style` (`id`, `name`, `slug`, `picture`, `description`, `title`) VALUES
(1, 'Bobo', 'bobo', 'https://i.postimg.cc/7Yz1pxFX/Sans-titre-1.jpg', 'Le terme bobo, contraction de bourgeois-bohème, désigne un sociostyle, c\'est-à-dire une tentative de caractériser un groupe social selon les valeurs que ses membres partagent, plutôt que selon leurs caractéristiques socio-économiques ou démographiques1.\r\nS\'il est difficile de précisément décrire un bobo, le sociologue Camille Peugny donne en 2010 cette définition : « une personne qui a des revenus sans qu’ils soient faramineux, plutôt diplômée, qui profite des opportunités culturelles et vote à gauche2 ».\r\nLe terme est utilisé pour la première fois par le professeur de sociologie Michel Clouscard, défini comme bourgeois libéral-libertaire (lili-bobo) dans Néo-fascisme et idéologie du désir (1973) : économiquement à droite et idéologiquement à gauche ; le plus souvent, le bobo se prétend du peuple tout en possédant un gros patrimoine et d\'importants revenus ; il n\'a par conséquent pas la mentalité d\'un homme du peuple, qu\'il soit prolétaire, artisan ou marginal.', '\'es ce qu\'un Bobo parisien ? '),
(2, 'Hipster', 'hipster', 'https://i.postimg.cc/DwdrwxyX/Sans-titre-5.jpg', 'Le terme américain hipster semble apparaitre pour la première fois, avec son sens moderne, dans The Hipster Handbook publié en 2003 par des habitants du quartier Williamsburg de Brooklyn (New York, USA). Les années précédentes, vers 2000, le terme n\'apparaissait pas encore dans les articles du New York Times ou du Time Out New York consacrés au quartier Williamsburg ; les membres de cette sous-culture étaient encore désignés comme des « bohèmes » (bohemians) ou « ceux d\'East Village qui se donnent un genre artiste » (arty East Village types).\r\n\r\nLe mot hipster désignait auparavant les adeptes d\'une sous-culture américaine des années 1940-1950, sorte d\'artistes bohèmes amateurs de musique jazz : les hipsters.', 'and sont apparues les premiers hipster ?'),
(3, 'Bourgeois', 'bourgeois', 'https://i.postimg.cc/GpCsGdNg/unnamed.png', 'Dérivé de « bourgeois » (habitant du bourg), le vocable « bourgeoisie » est attesté dès 1538 avec le sens d\'« ensemble des habitants du bourg » et en 937 sous la forme « bourgesie », correspondant au latin burgensia, au sens juridique de citoyen ayant le droit de cité.\r\n\r\nEn Suisse, il désigne le droit de cité ou de citoyenneté dans une commune4.\r\nEn italien borghesia, de même que borghese, est emprunté au français « bourgeoisie »', 'i sont les nouveaux bourgeois ?'),
(4, 'Banlieusard', 'banlieusard', 'https://i.postimg.cc/VL2tsjF8/f32b44e39ad5d55b6451e079b3474e67.jpg', 'Pour un banlieusard, vivre à Paris n\'a rien d\'un rêve mais il aimerait juste essayer. Pour voir. Quitte à fiche le camp pour la province ou la campagne à la première occasion venue. Voire y déménager. Paris devient alors la case de passage obligée. Vous partez pour Colmar en passant par l\'avenue Mozart et vous encaissez 20 000 euros pour ne jamais revenir. \r\nPour un banlieusard, vivre à Paris, c\'est pouvoir aller au cinéma le midi dans un trou à rat des Halles pour visionner un film kurdo-coréen en VO de trois heures avant de se taper un kebab no-gluten. Le nirvana pluriéthnique qui manque tant à la banlieue, n\'est-ce pas ?\r\nMoralité : derrière chaque banlieusard se cache un vrai Parisien à qui on ne la fait pas', 'i sont réellement les vrais banlieusard ?'),
(5, 'Provincial', 'provincial', 'https://i.postimg.cc/zfznbTVP/Sans-titre-6.jpg', 'A Paris la plupart des gens que l\'on croise viennent de Province . Il existe finalement peu de Parisiens nés et élevés à Paris. Mais à partir de quelques mois dans la capitale une manière d\'être et de vivre prends le dessus. Le provincial de passage ou récemment arrivé est du coup très repérable.', 'i sont les vrais parisiens ?');


-- --------------------------------------------------------

--
-- Table structure for table `style_product`
--

CREATE TABLE `style_product` (
  `style_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `style_product`
--

INSERT INTO `style_product` (`style_id`, `product_id`) VALUES
(1, 2),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 24),
(1, 28),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 57),
(1, 58),
(1, 59),
(1, 61),
(1, 62),
(1, 65),
(1, 66),
(1, 68),
(1, 71),
(1, 74),
(2, 2),
(2, 3),
(2, 9),
(2, 10),
(2, 11),
(2, 24),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 32),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 42),
(2, 43),
(2, 44),
(2, 57),
(2, 58),
(2, 61),
(2, 62),
(2, 65),
(2, 68),
(2, 71),
(2, 75),
(3, 1),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 24),
(3, 25),
(3, 26),
(3, 29),
(3, 31),
(3, 33),
(3, 34),
(3, 37),
(3, 41),
(3, 44),
(3, 59),
(3, 60),
(4, 10),
(4, 11),
(4, 26),
(4, 37),
(4, 40),
(4, 44),
(4, 59),
(4, 63),
(4, 64),
(5, 3),
(5, 10),
(5, 11),
(5, 25),
(5, 26),
(5, 37),
(5, 43),
(5, 44),
(5, 45),
(5, 57),
(5, 60),
(5, 61),
(5, 62),
(5, 66),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_product`
--
ALTER TABLE `gender_product`
  ADD PRIMARY KEY (`gender_id`,`product_id`),
  ADD KEY `IDX_21A27111708A0E0` (`gender_id`),
  ADD KEY `IDX_21A271114584665A` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`size_id`,`product_id`),
  ADD KEY `IDX_3627D6D5498DA827` (`size_id`),
  ADD KEY `IDX_3627D6D54584665A` (`product_id`);

--
-- Indexes for table `style`
--
ALTER TABLE `style`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `style_product`
--
ALTER TABLE `style_product`
  ADD PRIMARY KEY (`style_id`,`product_id`),
  ADD KEY `IDX_B5669A99BACD6074` (`style_id`),
  ADD KEY `IDX_B5669A994584665A` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `style`
--
ALTER TABLE `style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gender_product`
--
ALTER TABLE `gender_product`
  ADD CONSTRAINT `FK_21A271114584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_21A27111708A0E0` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `FK_3627D6D54584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3627D6D5498DA827` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `style_product`
--
ALTER TABLE `style_product`
  ADD CONSTRAINT `FK_B5669A994584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B5669A99BACD6074` FOREIGN KEY (`style_id`) REFERENCES `style` (`id`) ON DELETE CASCADE;
