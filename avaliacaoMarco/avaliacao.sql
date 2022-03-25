/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `dangers`;
CREATE TABLE `dangers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acesso` varchar(150) NOT NULL,
  `ativo` varchar(1) DEFAULT 'S',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `phinxlog`;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `papel` varchar(50) NOT NULL,
  `ativo` varchar(1) DEFAULT 'S',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siape` varchar(2) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `ativo` varchar(1) DEFAULT 'S',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siape` (`siape`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `dangers` (`id`, `acesso`, `ativo`, `created`, `modified`, `role_id`) VALUES
(1, '/users/add', 'S', '2022-03-10 23:53:00', '2022-03-10 23:53:00', '1');
INSERT INTO `dangers` (`id`, `acesso`, `ativo`, `created`, `modified`, `role_id`) VALUES
(2, '/users/index', 'S', '2022-03-10 23:53:12', '2022-03-10 23:53:12', '1');
INSERT INTO `dangers` (`id`, `acesso`, `ativo`, `created`, `modified`, `role_id`) VALUES
(4, '/users/index', 'S', '2022-03-10 23:54:17', '2022-03-10 23:57:16', '2');
INSERT INTO `dangers` (`id`, `acesso`, `ativo`, `created`, `modified`, `role_id`) VALUES
(6, '/dangers/add', 'S', '2022-03-10 23:57:32', '2022-03-10 23:57:32', '1'),
(7, '/dangers/index', 'S', '2022-03-10 23:57:45', '2022-03-10 23:57:45', '1'),
(8, '/dangers/edit', 'S', '2022-03-10 23:57:52', '2022-03-10 23:57:52', '1'),
(9, '/dangers/view', 'S', '2022-03-10 23:58:08', '2022-03-10 23:58:08', '1'),
(10, '/roles/add', 'S', '2022-03-10 23:58:45', '2022-03-10 23:58:45', '1'),
(11, '/roles/edit', 'S', '2022-03-10 23:58:51', '2022-03-10 23:58:51', '1'),
(12, '/roles/view', 'S', '2022-03-10 23:58:59', '2022-03-10 23:58:59', '1'),
(13, '/roles/index', 'S', '2022-03-10 23:59:13', '2022-03-10 23:59:13', '1'),
(14, '/users/delete', 'S', '2022-03-10 23:59:32', '2022-03-10 23:59:32', '1'),
(15, '/roles/delete', 'S', '2022-03-10 23:59:39', '2022-03-10 23:59:39', '1'),
(16, '/dangers/delete', 'S', '2022-03-10 23:59:52', '2022-03-10 23:59:52', '1'),
(18, '/users/edit', 'S', '2022-03-10 23:59:52', '2022-03-10 23:59:52', '2'),
(19, '/users/view', 'S', '2022-03-10 23:53:12', '2022-03-10 23:53:12', '1'),
(20, '/users/edit', 'S', '2022-03-10 23:53:12', '2022-03-10 23:53:12', '1');

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220310232103, 'CreateRoles', '2022-03-10 23:33:48', '2022-03-10 23:33:48', 0);
INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220310232113, 'CreateDangers', '2022-03-10 23:33:48', '2022-03-10 23:33:48', 0);
INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20220310232125, 'CreateUsers', '2022-03-10 23:33:48', '2022-03-10 23:33:49', 0);

INSERT INTO `roles` (`id`, `papel`, `ativo`, `created`, `modified`) VALUES
(1, 'Administrador', 'S', '2022-03-10 23:34:40', '2022-03-10 23:34:40');
INSERT INTO `roles` (`id`, `papel`, `ativo`, `created`, `modified`) VALUES
(2, 'Usuário', 'S', '2022-03-10 23:54:04', '2022-03-10 23:54:04');


INSERT INTO `users` (`id`, `siape`, `nome`, `password`, `ativo`, `created`, `modified`, `role_id`) VALUES
(1, '01', 'Raul', '$2y$10$YdBrjpl1xQR4baP/8Ovdae.oUgGpNj1RVS5XLS1SCx4pHWrlb3Ini', 'S', '2022-03-10 23:44:01', '2022-03-10 23:44:01', '1');
INSERT INTO `users` (`id`, `siape`, `nome`, `password`, `ativo`, `created`, `modified`, `role_id`) VALUES
(2, '02', 'Claudemir', '$2y$10$c6kC3hMFhwyv6MzBDWChn.0dbQtpdZOjORyL86PCFj8sOma9Ka2XO', 'S', '2022-03-11 00:00:20', '2022-03-11 01:41:31', '2');
INSERT INTO `users` (`id`, `siape`, `nome`, `password`, `ativo`, `created`, `modified`, `role_id`) VALUES
(4, '03', 'Álvaro Tavares Cecatto', '$2y$10$nHqyQDZtYZDBDHH7p79nbeWIwZIme2QWumq.dEKPFeZvUgIr5fwxG', 'S', '2022-03-11 01:31:45', '2022-03-11 01:31:45', '1');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;