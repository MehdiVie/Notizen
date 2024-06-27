-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: laravel-Notizbuch
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~jammy

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_100000_create_password_resets_table',1),
(2,'2024_06_14_003025_create_notizbuches_table',0),
(3,'2024_06_14_003028_add_foreign_keys_to_notizbuches_table',0),
(4,'2024_06_14_004018_create_notizbuches_table',0),
(5,'2024_06_14_004021_add_foreign_keys_to_notizbuches_table',0),
(6,'2024_06_14_011533_create_notizbuches_table',0),
(7,'2024_06_14_011536_add_foreign_keys_to_notizbuches_table',0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notizbuches`
--

DROP TABLE IF EXISTS `notizbuches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notizbuches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notizbuches_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notizbuches_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notizbuches_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notizbuches_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notizbuches_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notizbuches`
--

LOCK TABLES `notizbuches` WRITE;
/*!40000 ALTER TABLE `notizbuches` DISABLE KEYS */;
INSERT INTO `notizbuches` VALUES
(90,25,'Numquam est et quia.','Aut maiores error dolorem itaque ipsum dolor nihil. Repudiandae minima eum quasi est quo in. Voluptatem quo aut quia minima nemo sed in totam. Odio numquam repudiandae perspiciatis voluptatem nisi.<br /><br />Hi','','2024-06-14 01:12:53','2024-06-14 01:31:12'),
(91,37,'Cum non eius iure iste alias quia.','Numquam ab magnam assumenda ab. Quia doloremque qui laborum qui. Fugit aut qui dolores eveniet ut quidem. Molestiae provident maxime ut quis impedit ut.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(92,36,'Qui nihil fuga ut.','Quia qui nobis error et. Fuga facere fugit recusandae deleniti ullam. Molestiae voluptas rerum voluptate unde.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(93,26,'Temporibus nulla omnis nam.','Quibusdam enim quis quia atque aspernatur. Aut voluptatem et blanditiis id fugit.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(94,28,'Fugit at saepe dolorum.','Magni incidunt et ut expedita velit voluptatem. Fugiat saepe qui eius officiis explicabo. Neque quos magni consequuntur accusamus optio aut cupiditate.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(95,36,'Est ea quasi nostrum.','Veritatis animi sunt culpa similique ducimus vel aperiam temporibus. Velit minus ratione natus enim eius sit. Omnis dolore corrupti animi vel. Impedit qui non cum quia dolor magnam facilis.<br /><br />Hi','\0','2024-06-14 01:12:53','2024-06-14 01:19:53'),
(96,35,'Odio odio vero aut sit.','Corporis nihil illum aperiam hic ut modi quia deleniti. Dolores accusamus assumenda voluptatem quia non perspiciatis numquam. Hic eos et quisquam laudantium quas a suscipit. Itaque illum esse debitis qui quas. Dolor et tenetur rerum magni fugiat quis.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(97,33,'Aut vel sunt aperiam eaque accusantium eius.','Sequi ea maxime ut neque voluptatibus. Dolorem velit omnis est dolores. <br />Consequuntur incidunt ullam quibusdam quisquam cum. <br />Velit mollitia eveniet delectus dolore ad asperiores. <br />Consequuntur sint sunt est nihil molestias repudiandae ratione.','\0','2024-06-14 01:12:53','2024-06-14 11:41:41'),
(98,30,'Illum aliquam corrupti voluptas soluta sit.','Nihil culpa aut qui et provident et voluptatem. Mollitia et dicta eos libero itaque sapiente sit libero. Saepe velit illo est voluptas occaecati.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(99,27,'Deleniti voluptatem eos perspiciatis voluptatem.','Cumque tenetur minima voluptate et aut. Quae eveniet est sit qui ut animi animi eius. Et ut nobis non rerum ea ratione.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(100,37,'Et dolor unde repellendus rerum tempora optio quam recusandae.','Molestias dolor perspiciatis ut sit excepturi odio. Veniam est dolor delectus numquam. Vel beatae cupiditate doloribus id ut similique. Minima alias aspernatur dolor et architecto error adipisci.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(101,28,'Consequatur sapiente incidunt at nihil illum id non.','Voluptatum illo amet quidem. Omnis aliquam eos aut voluptatem harum. Sed doloremque est deserunt expedita quis odit corporis. Ratione aperiam quis quidem. Ipsam et ipsam et numquam et.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(102,32,'Et rerum voluptatum vel et molestiae unde ullam.','Error quasi aliquid occaecati in. Magni corrupti magni eum praesentium. Esse consequatur impedit fugiat et minus est ea.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(103,33,'Et repellendus velit eligendi labore.','Labore eligendi molestiae ullam sed. Consectetur pariatur harum modi porro dolor doloremque consectetur. Omnis eius aspernatur vitae libero accusantium commodi aut et. Rerum magni debitis error eius voluptatem. Voluptatem nihil quos quia et aut.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(104,37,'Omnis quo magni non et.','Dolorum quo modi voluptatem perspiciatis voluptatem modi repellat accusamus. Odit officiis quaerat sint voluptas et beatae sint. Excepturi aperiam nulla molestias suscipit quibusdam et autem.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(105,36,'Dolorum enim recusandae adipisci.','Magnam fugit qui assumenda eaque. Aut eligendi pariatur aspernatur aliquid et officia. Alias dolor praesentium sed ex deleniti dolore voluptatum. Quis laborum rerum et aut ut autem.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(106,27,'Quaerat veritatis autem rerum ab ipsa aut eos.','In voluptas tenetur iusto sint. Consequatur architecto unde explicabo reiciendis. Optio sint commodi beatae a.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(107,27,'Ea enim eaque reprehenderit ut qui dignissimos vitae accusantium.','Deserunt molestias et dolorem veniam tempore. Laboriosam saepe illo modi incidunt qui. Molestiae temporibus quae et.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(108,25,'Omnis doloremque perspiciatis qui aliquam non.','Placeat mollitia suscipit similique recusandae neque. Perferendis ut hic qui esse amet. Non aperiam ut beatae fuga fugit voluptatem. Distinctio laboriosam sapiente aut eos iusto quia. Quaerat occaecati ipsam voluptatem id omnis.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(109,35,'Consectetur sint rem ea.','Iusto ipsam cumque inventore laudantium libero ad. Et enim magnam rem. Consequatur et ut dolores explicabo rerum fugit.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(110,28,'Minus labore harum et harum dolorum.','Adipisci possimus cupiditate esse laudantium sunt maiores provident. Pariatur deleniti quis porro eaque eos. Odio perferendis rerum minus voluptas eligendi. Necessitatibus sint sed explicabo quo sint ex expedita.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(111,32,'Iste explicabo eum ea consequatur.','Mollitia dolores et perspiciatis amet qui ea. Dolores qui et consequatur. Perferendis est est repellendus quasi exercitationem consequatur est.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(112,29,'Dolorem aliquam accusantium velit voluptatem.','Dolores numquam velit dignissimos quis ut et. <br />Dolor nulla blanditiis laborum rerum quod fugiat. <br />Saepe dolores commodi qui quisquam.','','2024-06-14 01:12:53','2024-06-14 13:42:24'),
(113,32,'Optio ducimus ut eaque.','Laboriosam vitae unde aut molestiae sint ad. Rerum nulla repudiandae nemo est dolor quibusdam. Sed voluptate eligendi fugit enim.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(114,34,'Qui facere officiis voluptate molestias consequatur est.','Velit et vel mollitia qui eligendi. Et id et non doloribus et et quo porro. Voluptate et saepe culpa alias.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(115,25,'Est voluptate est eius mollitia aut quidem.','Ea sed culpa est ad inventore. Soluta odio dolore dignissimos praesentium mollitia. Officiis odio voluptas et molestiae consectetur. Dolore quos voluptatem quae dicta illo.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(116,29,'Quia commodi suscipit eum et eum.','Deserunt ea quae quo. Maxime et harum consequuntur id. Consectetur omnis autem expedita. Id tempore dolor quisquam beatae est. In recusandae ea dolores.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(117,35,'Asperiores quaerat omnis blanditiis magnam consequuntur.','Sit aut accusamus qui. Optio dolorum earum quia laudantium officiis atque. Ut quia rerum accusantium. Deserunt quis suscipit occaecati.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(118,28,'Natus saepe sapiente repellendus voluptatem aut ut rerum vitae.','Perspiciatis consequatur est rerum provident vel totam et. Rerum tempora qui quia qui. Nemo sint eum id illo aliquam provident. Vel rem est laudantium eos doloremque. Perferendis voluptatem eum enim architecto adipisci.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(119,25,'Hic aliquam molestias aut et eum iusto sunt.','Atque molestiae deserunt voluptatem optio ut non nobis. Dolores voluptates nesciunt illum quam commodi. Asperiores fugit delectus ab est ut ut.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(120,37,'Est hic quasi quo odio et.','Non consectetur quidem enim unde eaque et. Eos vero fugit ex qui. Nesciunt voluptas quasi optio odio dolorem. Sed non sed explicabo saepe ea porro.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(121,30,'Dolore eum est fugiat esse maiores perferendis dolore.','Sit odio magni ducimus sed animi soluta natus. Expedita veniam quidem impedit aut quia. Quisquam est ut consequatur ipsum distinctio ipsam recusandae debitis. Quis pariatur ad perferendis maxime. Maxime et consectetur eum quasi vitae vel qui id.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(122,34,'Voluptas qui dolorem ut nulla incidunt.','Possimus nisi asperiores necessitatibus dolor. Totam qui odio iusto id nemo a ipsum.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(123,37,'Corporis suscipit pariatur corporis dolores.','Nulla autem est voluptatum officia. Voluptatum autem sunt eveniet voluptatum unde inventore nemo. Quaerat consequuntur nesciunt quibusdam et. Autem doloremque commodi eos aut placeat repudiandae animi.','\0','2024-06-14 01:12:53','2024-06-15 01:43:54'),
(124,33,'Atque veniam aliquam iusto aut rerum dicta possimus voluptas.','Rerum commodi et quos. Autem similique perferendis autem quidem dolore commodi. Et et quisquam aut excepturi perferendis doloribus. Eos enim eos officiis asperiores. Et porro odio laudantium qui in non ut.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(125,29,'Numquam dolor corrupti expedita numquam.','Iste veniam aliquam qui minima fuga tempora voluptas cum. Architecto assumenda odit est. Consectetur eaque dolorem et. Officia veniam quidem voluptas eaque autem accusantium quis.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(126,28,'Velit perspiciatis earum possimus maxime.','Neque quam dolorum mollitia soluta aut tenetur qui. Atque minima quia id quos nisi. Mollitia et dolorem dolorum quis.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(127,33,'Unde aut impedit quo.','Dolor laboriosam molestias adipisci dolor qui sint sit. Sed sed eligendi alias sit qui. Placeat ipsum maxime consequatur. Iure repellat exercitationem saepe neque sint ut.\r\n\r\n\r\nHi','\0','2024-06-14 01:12:53','2024-06-14 01:17:54'),
(128,27,'Occaecati qui sint dolor aut optio voluptatem ea.','Vel qui aliquam dolore consequuntur. Culpa qui itaque commodi est occaecati. Qui hic unde inventore qui officia ipsa nihil. Perferendis molestiae quod possimus soluta praesentium accusantium veniam hic.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(129,27,'Iste voluptatem consectetur omnis eos quas praesentium repellendus.','Ad voluptatibus praesentium provident rerum. Ducimus rem voluptatibus voluptas in. Similique necessitatibus dignissimos dolorem perferendis provident porro. Vitae ullam voluptatem voluptas ut eum.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(130,28,'Id sunt voluptate architecto et quae repellendus.','Vel in aliquid eum aspernatur alias. Laborum quas doloribus maxime sit corporis. Id numquam consequuntur fugiat placeat eius.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(131,37,'Id sit suscipit omnis quia voluptatum culpa.','Aut porro incidunt asperiores iure molestias aut. Dolores cupiditate ut reiciendis ullam. Praesentium deserunt assumenda quia est.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(132,34,'Soluta cupiditate porro tenetur sunt hic.','Dolorem sit natus ea. Illum labore est minima dolorum qui velit sint officiis. Commodi quia voluptatum voluptates error. Quo unde mollitia quas facere quibusdam in.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(133,29,'Harum ullam ipsam est sequi porro sit.','Maxime reiciendis veniam est quo. Et recusandae quod quidem qui vel blanditiis ex.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(134,32,'Sit tempore dignissimos vel.','Et hic aut libero est architecto ea aut. Incidunt in temporibus ea dolore. Quos praesentium qui dicta.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(135,35,'Vel numquam numquam nesciunt facere.','Quas voluptatem ut nihil sint. Ea ipsam vero odio temporibus. Aut magnam excepturi facilis alias quo optio omnis. Eum et accusantium eos aut optio quis cumque similique.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(136,36,'Aut eum enim est.','Et tenetur rerum consequatur facere necessitatibus aut ut necessitatibus. Tenetur qui distinctio tempora distinctio voluptatum illo voluptatem. Pariatur nihil et iure ratione a neque.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(137,34,'Modi similique sint delectus velit qui.','Eum et molestiae ullam ut ullam. Aliquam quia eius quod nesciunt. Qui soluta eos ratione voluptatem quo culpa tempore. Iure omnis dignissimos voluptatum sit eius et.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(138,30,'Quos sunt et nulla exercitationem.','Quas quia a fuga qui rem. Est voluptas dolor corrupti. Consequatur fugit laboriosam dolor nesciunt exercitationem. Enim in iure et qui quo dolores et sapiente.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(139,34,'Qui laborum facilis voluptatem sed velit optio tenetur.','Aut non atque quo quo aut unde voluptas cumque. Velit dolor enim et facilis repudiandae maiores harum dolor. Architecto aspernatur rem et fugiat veritatis consequuntur sunt est.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(140,33,'Aut odio enim magni.','Exercitationem quia fuga saepe dicta. Laboriosam natus quae minima veritatis ratione enim accusantium. Ratione debitis qui cum voluptate reprehenderit et ut. Laboriosam magni aperiam aut consequuntur temporibus vel.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(141,35,'Modi est veritatis voluptatum nisi.','Voluptatum et culpa voluptatem aliquam. Dignissimos harum provident corrupti velit eaque vel. Voluptatem voluptatem dolor vero est nihil tempore. Animi reprehenderit ea quis impedit ut ut eos.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(142,33,'Cupiditate harum veritatis autem autem similique et quia.','Ut consequatur alias aut qui. Beatae unde repudiandae aut. Fugit laudantium et quidem eveniet cum. Consectetur vel optio ut vitae sed voluptatum et.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(143,37,'Ea velit voluptas hic.','Commodi dolorem ea ut rerum saepe aliquid. Tenetur dolor odit nesciunt voluptas. Eum quisquam neque repudiandae voluptates maxime. Quibusdam corrupti reprehenderit quidem optio.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(144,25,'Quisquam autem aliquid magni culpa aut repudiandae quis.','Enim assumenda dolore consectetur perferendis et aut. Amet non occaecati reiciendis distinctio.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(145,26,'Eos ratione minima dolores provident maxime.','Quisquam excepturi odio maiores ducimus. Distinctio eveniet cumque officia quis eveniet eos. Quia aliquam ea et veritatis magni corrupti.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(146,30,'Repellat maxime culpa soluta quis enim.','Beatae voluptatem ipsa ea voluptatibus et sunt provident. Hic id est non. Ratione suscipit aliquid voluptas aperiam ea.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(147,30,'Ullam perferendis sed facilis qui odio optio repudiandae dolorum.','Id et exercitationem et minima ut consectetur accusamus nobis. Est nostrum quis aut ad qui. Aut cupiditate dolores enim.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(148,34,'Ut ullam cupiditate aut quisquam.','Et magnam dicta cumque illo qui voluptas. Corporis ducimus quae dolorem veniam laborum. Consequuntur harum ipsam velit.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(149,26,'Accusamus culpa libero voluptatem debitis dicta id at.','Illo sed sit odit quam occaecati explicabo recusandae quam. Dolorum expedita ea minima ea atque non natus. Iste quidem consequatur accusantium occaecati cum. Quaerat et aut optio consequatur.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(150,36,'Alias in blanditiis velit.','Sit assumenda aliquid nihil eligendi aut. Architecto dignissimos ad molestiae quis animi est vitae.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(151,35,'Dolorem accusantium expedita dolorem voluptas non.','Aut sint aliquam accusamus commodi. Id molestias quasi dolorem est. Nisi suscipit tempora reiciendis et. Ut qui quaerat tempore ducimus nobis architecto illo.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(152,34,'Est aut quibusdam officia non.','Sit iusto repudiandae sed officiis sed qui. Debitis ea in provident sunt sunt qui.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(153,29,'Rerum omnis tempora est ea consectetur temporibus amet adipisci.','A corporis facere et illum. Praesentium nobis dolores quibusdam voluptatem. Ducimus odit mollitia dolor. Laboriosam atque quo neque qui.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(154,29,'Velit in autem rem velit.','Aut nihil necessitatibus occaecati necessitatibus ut ea inventore animi. Mollitia vero dolore provident. Nobis et cumque voluptate et.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(155,31,'Nam accusantium minus architecto.','Laborum quia qui consequatur ullam est. Sunt voluptas et minima. Doloribus dolorem ut sint occaecati officiis.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(156,26,'Aspernatur magni consequatur exercitationem autem.','Consequatur fugiat labore id asperiores. Porro dolore voluptate omnis repellat nostrum iure aut. Magni dolores quod molestiae asperiores ipsum. Animi labore commodi delectus dicta facilis facilis.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(157,37,'Provident mollitia dolorem voluptate nostrum.','Repudiandae culpa molestiae voluptatum ducimus voluptatem est dolore. Iure harum quis voluptas ad. Eum assumenda atque laborum et.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(158,37,'Enim ipsa et sed fugit.','Ab quis architecto eaque itaque et nulla rem. Iusto id sint modi recusandae quae veniam dignissimos. Ab ut cumque aut nostrum labore provident facilis.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(159,27,'Sed explicabo non dolorem.','Laborum quia provident ea ullam et. Repudiandae rerum doloribus omnis officiis itaque. Autem omnis eius ut consequatur est voluptatem sit.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(160,27,'Veritatis rem qui et fuga voluptas.','Non mollitia molestiae sit sint et. Sed ut consequuntur rerum odit magnam tenetur. Dolor enim laborum blanditiis recusandae necessitatibus.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(161,26,'Eum earum labore placeat veritatis itaque sit impedit nulla.','Dolorem facilis suscipit accusamus cumque culpa et. Adipisci amet qui deleniti. Iusto perferendis blanditiis tempora dolorem repudiandae vel quae.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(162,30,'Harum explicabo quidem quibusdam.','Saepe dolor assumenda et ut. Dolores assumenda aliquid autem qui. Est sint sit nam assumenda maiores ea. Veniam odit ea consequatur quia veritatis molestiae.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(163,31,'Ut velit ratione officiis.','Dignissimos animi non illo ex mollitia ut hic repudiandae. Aut molestiae omnis non at facere.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(164,35,'Minima magni eos laboriosam expedita ipsam nobis.','Voluptatum aliquam aliquid et. Et qui eum eligendi quo fugit occaecati. Nostrum dolor accusantium at non. Illum consequatur unde dolor iure vitae distinctio.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(165,33,'Est rerum dignissimos et et.','Assumenda minima enim excepturi. Sunt ipsa molestias inventore velit. Animi est sit quo excepturi. Distinctio culpa et minus.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(166,27,'Quia magnam commodi veniam iure.','Debitis dolore accusantium maxime porro sed sunt sed. Vel quia architecto voluptate ducimus delectus aperiam repellendus et. Eos voluptas alias ipsam quas iste excepturi. Voluptatem et et est dolorum.','','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(167,28,'Laborum cumque voluptatem quia odio optio autem voluptatem.','Qui voluptas culpa at dolorem et qui aut aut. Odit dolorum nobis enim sapiente laudantium. Quis consequuntur molestias laboriosam. Aut et possimus sunt voluptatibus.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(168,34,'Dicta deserunt assumenda enim quos.','Quis impedit et fugit fugit. Dolorem exercitationem nemo ut adipisci illum est necessitatibus. Sed cumque est rem aut saepe est.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(169,29,'Ab unde explicabo voluptate asperiores quia.','Dolorum quod culpa totam odit distinctio soluta. Mollitia impedit aut praesentium distinctio laboriosam consequatur ut. Laborum omnis dolorem rerum eum. Tempora ut minus dolorum aut.','\0','2024-06-14 01:12:53','2024-06-14 01:12:53'),
(170,29,'Hi I am Test','Hi I am Test<br />Hi I am Test<br />Hi I am Test<br /><br />Hi I am Test<br />vol<br />Hi I am Test','\0','2024-06-14 13:24:19','2024-06-15 14:17:01'),
(171,37,'Hi I am Test','Hi I am Test !&lt;br /&gt;&#039;Test&#039;&lt;br /&gt;&lt;br /&gt;Hi I am Test','\0','2024-06-15 22:23:35','2024-06-15 22:37:31');
/*!40000 ALTER TABLE `notizbuches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('ZgzpDoBGKDRuzCa4g2PTmKpAu05QYSZfWz3Tihit',29,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXJhUmRNMDZoSDBOQk9JMGNwV1kzZHd6b2J1QVF5a0FWMzlPeHY5WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXZlX3NlYXJjaCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI5O30=',1718535971);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(25,'Kay Rice','madalyn.medhurst@example.org','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','68CMY2Vte1','2024-06-12 23:07:34','2024-06-12 23:07:34'),
(26,'Mrs. Amely Satterfield','dare.lavern@example.net','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','5MwibvxNj8','2024-06-12 23:07:34','2024-06-12 23:07:34'),
(27,'Kaleb McDermott PhD','crist.amparo@example.com','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','RFWx8L0aeD','2024-06-12 23:07:34','2024-06-12 23:07:34'),
(28,'Mckenna Wilkinson','larson.anastasia@example.org','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','YQ2bD3yLDI','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(29,'Meredith Heathcote','percy93@example.org','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','4xheDcH6mw22ShaiQulL7yRWuMnmSTzLusumUI6xbwLa9bmCvFxp1vJHdLxC','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(30,'Miss Dayna Steuber MD','verdie41@example.com','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','TzMjl9YLMl','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(31,'Mikel Haley Sr.','malvina.ferry@example.net','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','dQHZPauBBt','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(32,'Kennedi Hegmann','dwhite@example.org','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','TXkPjFb7gd','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(33,'Miss Kiara Dickinson','macey.gutmann@example.org','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','rITIkGNpxM','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(34,'Elmer Johns','kristy30@example.com','2024-06-12 23:07:34','$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','J0DXm7r0wz','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(35,'Albin Jaskolski','eva.hill@example.org',NULL,'$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','FYxoIfmzlJ','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(36,'Dr. Triston Gleichner','bauch.chester@example.net',NULL,'$2y$12$gHTIbWsuSGqaxtWAAYdgmuSJpkySxPhAnDY4Q5YnKbsAXjRIyWfeO','DUoKj9SCup','2024-06-12 23:07:35','2024-06-12 23:07:35'),
(37,'user1','user1@gmail.com','2024-06-13 14:11:00','$2y$12$Haxr5R3LNPitL5Euw5f/h.4vNkAqvTz9tCn9WOEtT0dyh.LNEf3Ne','M232vho1XY43LyCrEeUHXQIpoxbElQM4SSk87tuvOVzeaWdTjarmaGMnG9Pi','2024-06-13 14:11:00','2024-06-13 14:11:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 11:10:42
