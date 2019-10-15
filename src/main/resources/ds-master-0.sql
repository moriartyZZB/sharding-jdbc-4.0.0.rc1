/*
SQLyog Enterprise v12.5.0 (64 bit)
MySQL - 5.7.15-log : Database - ds-master-0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ds-master-0` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ds-master-0`;

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` int(11) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `t_user_0` */

DROP TABLE IF EXISTS `t_user_0`;

CREATE TABLE `t_user_0` (
  `id` bigint(20) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sharding_id` bigint(20) DEFAULT NULL,
  KEY `idx-username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_user_1` */

DROP TABLE IF EXISTS `t_user_1`;

CREATE TABLE `t_user_1` (
  `id` bigint(20) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sharding_id` bigint(20) DEFAULT NULL ,
  KEY `idx-username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_user_2` */

DROP TABLE IF EXISTS `t_user_2`;

CREATE TABLE `t_user_2` (
  `id` bigint(20) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sharding_id` bigint(20) DEFAULT NULL,
  KEY `idx-username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_user_3` */

DROP TABLE IF EXISTS `t_user_3`;

CREATE TABLE `t_user_3` (
  `id` bigint(20) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sharding_id` bigint(20) DEFAULT NULL ,
  KEY `idx-username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `t_user_4` */

DROP TABLE IF EXISTS `t_user_4`;

CREATE TABLE `t_user_4` (
  `id` bigint(20) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `sharding_id` bigint(20) DEFAULT NULL ,
  KEY `idx-username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
