/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_acarsdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` varchar(11) NOT NULL DEFAULT '0',
  `flightnum` varchar(11) NOT NULL DEFAULT '0',
  `pilotname` varchar(100) NOT NULL DEFAULT '',
  `aircraft` varchar(12) NOT NULL DEFAULT '',
  `lat` varchar(15) NOT NULL DEFAULT '0',
  `lng` varchar(15) NOT NULL DEFAULT '0',
  `heading` smallint(6) NOT NULL DEFAULT '0',
  `alt` varchar(6) NOT NULL DEFAULT '0',
  `gs` int(11) NOT NULL DEFAULT '0',
  `depicao` varchar(4) NOT NULL DEFAULT '',
  `depapt` varchar(255) NOT NULL DEFAULT '',
  `arricao` varchar(4) NOT NULL DEFAULT '',
  `arrapt` text NOT NULL DEFAULT '',
  `deptime` time NOT NULL DEFAULT '00:00:00',
  `timeremaining` varchar(6) NOT NULL DEFAULT '0',
  `arrtime` time NOT NULL DEFAULT '00:00:00',
  `route` text NOT NULL DEFAULT '',
  `route_details` text NOT NULL DEFAULT '',
  `distremain` varchar(6) NOT NULL DEFAULT '',
  `phasedetail` varchar(255) NOT NULL DEFAULT '',
  `online` varchar(10) NOT NULL DEFAULT '',
  `messagelog` text NOT NULL DEFAULT '',
  `lastupdate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `client` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pilotid` (`pilotid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_activityfeed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '0',
  `refid` bigint(20) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(100) NOT NULL DEFAULT '',
  `submitdate` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pilotid` (`pilotid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_adminlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '',
  `datestamp` datetime NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_aircraft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icao` varchar(4) NOT NULL DEFAULT '',
  `name` varchar(12) NOT NULL DEFAULT '',
  `fullname` varchar(50) NOT NULL DEFAULT '',
  `registration` varchar(30) NOT NULL DEFAULT '',
  `downloadlink` text NOT NULL DEFAULT '',
  `imagelink` text NOT NULL DEFAUALT '',
  `range` varchar(15) NOT NULL DEFAULT '0',
  `weight` varchar(15) NOT NULL DEFAULT '0',
  `cruise` varchar(15) NOT NULL DEFAULT '0',
  `maxpax` float NOT NULL DEFAULT '0',
  `maxcargo` float NOT NULL DEFAULT '0',
  `minrank` int(11) NOT NULL DEFAULT '0',
  `ranklevel` int(11) NOT NULL DEFAULT '0',
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_airlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_airports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icao` varchar(5) NOT NULL DEFAULT '',
  `iata` varchar(10) NOT NULL DEFAULT '',
  `name` text NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `region` varchar(50) NOT NULL DEFAULT '',
  `tz` varchar(50) NOT NULL DEFAULT '',
  `elevation` int(11) NOT NULL DEFAULT '0',
  `lat` float NOT NULL DEFAULT '0',
  `lng` float NOT NULL DEFAULT '0',
  `hub` smallint(6) NOT NULL DEFAULT '0',
  `fuelprice` float NOT NULL DEFAULT '0',
  `chartlink` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `icao` (`icao`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_awards` (
  `awardid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `descrip` varchar(100) NOT NULL DEFAULT '',
  `image` text NOT NULL DEFAULT '',
  PRIMARY KEY (`awardid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_awardsgranted` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `awardid` int(11) NOT NULL DEFAULT '',
  `pilotid` int(11) NOT NULL DEFAULT '',
  `dateissued` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_bids` (
  `bidid` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '0',
  `routeid` int(11) NOT NULL DEFAULT '0',
  `dateadded` date NOT NULL DEFAULT '',
  PRIMARY KEY (`bidid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_customfields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) NOT NULL DEFAULT '',
  `fieldname` varchar(75) NOT NULL DEFAULT '',
  `value` text NOT NULL DEFAULT '',
  `type` varchar(25) NOT NULL DEFAULT 'text',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `showonregister` smallint(6) NOT NULL DEFAULT '0',
  `required` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `fieldname` (`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `link` text,
  `image` text,
  `hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_expenselog` (
  `dateadded` int(11) NOT NULL DEFAULT '',
  `name` varchar(25) NOT NULL DEFAULT '',
  `type` varchar(2) NOT NULL DEFAULT '',
  `cost` float NOT NULL DEFAULT '',
  KEY `dateadded` (`dateadded`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `cost` float NOT NULL DEFAULT '',
  `fixed` int(11) NOT NULL DEFAULT '0',
  `type` varchar(1) NOT NULL DEFAULT 'M',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_fieldvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '',
  `pilotid` int(11) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phpvms_fieldvalues_ibfk_1` (`fieldid`),
  KEY `phpvms_fieldvalues_ibfk_2` (`pilotid`),
  CONSTRAINT `phpvms_fieldvalues_ibfk_1` FOREIGN KEY (`fieldid`) REFERENCES `phpvms_customfields` (`fieldid`) ON DELETE CASCADE,
  CONSTRAINT `phpvms_fieldvalues_ibfk_2` FOREIGN KEY (`pilotid`) REFERENCES `phpvms_pilots` (`pilotid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_financedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` int(11) NOT NULL DEFAULT '',
  `year` int(11) NOT NULL DEFAULT '',
  `data` text NOT NULL DEFAULT '',
  `total` float NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_fuelprices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icao` varchar(4) NOT NULL DEFAULT '',
  `lowlead` float NOT NULL DEFAULT '',
  `jeta` float NOT NULL DEFAULT '',
  `dateupdated` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_groupmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `pilotid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `phpvms_groupmembers_ibfk_1` (`groupid`),
  KEY `phpvms_groupmembers_ibfk_2` (`pilotid`),
  CONSTRAINT `phpvms_groupmembers_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `phpvms_groups` (`groupid`) ON DELETE CASCADE,
  CONSTRAINT `phpvms_groupmembers_ibfk_2` FOREIGN KEY (`pilotid`) REFERENCES `phpvms_pilots` (`pilotid`) ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `permissions` varchar(25) NOT NULL DEFAULT '',
  `core` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '',
  `pirepid` int(11) NOT NULL DEFAULT '0',
  `paysource` tinyint(4) NOT NULL DEFAULT '',
  `paytype` int(11) NOT NULL DEFAULT '3',
  `amount` float(7,2) NOT NULL DEFAULT '0.00',
  `submitdate` datetime NOT NULL DEFAULT '',
  `modifieddate` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pilot_id` (`pilotid`),
  KEY `pirepid` (`pirepid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_navdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(7) NOT NULL DEFAULT '',
  `title` varchar(25) NOT NULL DEFAULT '',
  `airway` varchar(7) DEFAULT NULL,
  `airway_type` varchar(1) DEFAULT NULL,
  `seq` int(11) NOT NULL DEFAULT '',
  `loc` varchar(4) NOT NULL DEFAULT '',
  `lat` float(8,6) NOT NULL DEFAULT '',
  `lng` float(9,6) NOT NULL DEFAULT '',
  `freq` varchar(7) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `airway` (`airway`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(30) NOT NULL DEFAULT '',
  `body` text NOT NULL DEFAULT '',
  `postdate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `postedby` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pages` (
  `pageid` int(11) NOT NULL AUTO_INCREMENT,
  `pagename` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(30) NOT NULL DEFAULT '',
  `order` smallint(6) NOT NULL DEFAULT '0',
  `postedby` varchar(50) NOT NULL DEFAULT '',
  `postdate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `enabled` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `pagename` (`pagename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pilots` (
  `pilotid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) NOT NULL DEFAULT '',
  `lastname` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `code` char(3) NOT NULL DEFAULT '',
  `location` varchar(32) NOT NULL DEFAULT '',
  `hub` varchar(4) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(32) NOT NULL DEFAULT '',
  `bgimage` varchar(30) NOT NULL DEFAULT '',
  `lastlogin` date NOT NULL DEFAULT '1970-01-01',
  `totalflights` int(11) NOT NULL DEFAULT '0',
  `totalhours` float NOT NULL DEFAULT '0',
  `totalpay` float NOT NULL DEFAULT '0',
  `payadjust` float DEFAULT '0',
  `transferhours` float NOT NULL DEFAULT '0',
  `rankid` int(11) NOT NULL DEFAULT '0',
  `rank` varchar(32) NOT NULL DEFAULT 'New Hire',
  `ranklevel` int(11) NOT NULL DEFAULT '0',
  `confirmed` smallint(5) unsigned NOT NULL DEFAULT '0',
  `retired` smallint(6) NOT NULL DEFAULT '0',
  `joindate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastpirep` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `lastip` varchar(25) DEFAULT '',
  `comment` text,
  PRIMARY KEY (`pilotid`),
  KEY `code` (`code`),
  KEY `rank` (`rank`),
  CONSTRAINT `phpvms_pilots_ibfk_1` FOREIGN KEY (`code`) REFERENCES `phpvms_airlines` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pirepcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pirepid` int(11) NOT NULL DEFAULT '',
  `pilotid` int(11) NOT NULL DEFAULT '',
  `comment` text NOT NULL DEFAULT '',
  `postdate` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `phpvms_pirepcomments_ibfk_1` (`pirepid`),
  CONSTRAINT `phpvms_pirepcomments_ibfk_1` FOREIGN KEY (`pirepid`) REFERENCES `phpvms_pireps` (`pirepid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pirepfields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(25) NOT NULL DEFAULT '',
  `type` varchar(25) NOT NULL DEFAULT '',
  `options` text NOT NULL DEFAULT '',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pireps` (
  `pirepid` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '0',
  `code` char(3) NOT NULL DEFAULT '',
  `flightnum` varchar(10) NOT NULL DEFAULT '0',
  `depicao` varchar(4) NOT NULL DEFAULT '',
  `arricao` varchar(4) NOT NULL DEFAULT '',
  `route` text NOT NULL DEFAULT 'DCT',
  `route_details` text NOT NULL DEFAULT '',
  `aircraft` varchar(12) NOT NULL DEFAULT '',
  `flighttime` varchar(10) NOT NULL DEFAULT '',
  `flighttime_stamp` time NOT NULL DEFAULT '',
  `distance` smallint(6) NOT NULL DEFAULT '0',
  `landingrate` float NOT NULL DEFAULT '0',
  `submitdate` datetime NOT NULL DEFAULT '1970-01-01 01:01:01',
  `modifieddate` datetime NOT NULL DEFAULT '',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `log` text NOT NULL DEFAULT '',
  `load` int(11) NOT NULL DEFAULT '',
  `fuelused` float NOT NULL DEFAULT '0',
  `fuelunitcost` float NOT NULL DEFAULT '0',
  `fuelprice` float NOT NULL DEFAULT '1.50',
  `price` float NOT NULL DEFAULT '',
  `flighttype` varchar(1) NOT NULL DEFAULT 'P',
  `gross` float NOT NULL DEFAULT '0',
  `pilotpay` float NOT NULL DEFALT '',
  `paytype` tinyint(1) NOT NULL DEFAULT '1',
  `expenses` float NOT NULL DEFAULT '',
  `expenselist` blob NOT NULL DEFAULT '',
  `revenue` float NOT NULL DEFAULT '',
  `source` varchar(25) NOT NULL DEFAULT '',
  `exported` tinyint(4) NOT NULL DEFAULT '',
  `rawdata` text NOT NULL DEFAULT '',
  PRIMARY KEY (`pirepid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_pirepvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '',
  `pirepid` int(11) NOT NULL DEFAULT '',
  `value` text NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_ranks` (
  `rankid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` varchar(32) NOT NULL DEFAULT '',
  `rankimage` text NOT NULL DEFAULT '',
  `minhours` smallint(6) NOT NULL DEFAULT '0',
  `payrate` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`rankid`),
  UNIQUE KEY `rank` (`rank`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) NOT NULL DEFAULT '',
  `flightnum` varchar(10) NOT NULL DEFAULT '0',
  `depicao` varchar(4) NOT NULL DEFAULT '',
  `arricao` varchar(4) NOT NULL DEFAULT '',
  `route` text NOT NULL DEFAULT 'DCT',
  `route_details` text NOT NULL DEFAULT '',
  `aircraft` text NOT NULL DEFAULT '',
  `flightlevel` varchar(6) NOT NULL DEFAULT '',
  `distance` float NOT NULL DEFAULT '0',
  `deptime` varchar(15) NOT NULL DEFAULT '',
  `arrtime` varchar(15) NOT NULL DEFAULT '',
  `flighttime` float NOT NULL DEFAULT '0',
  `daysofweek` varchar(7) NOT NULL DEFAULT '0123456',
  `week1` varchar(7) NOT NULL DEFAULT '0123456',
  `week2` varchar(7) NOT NULL DEFAULT '0123456',
  `week3` varchar(7) NOT NULL DEFAULT '0123456',
  `week4` varchar(7) NOT NULL DEFAULT '0123456',
  `price` float NOT NULL DEFAULT '',
  `payforflight` float NOT NULL DEFAULT '0',
  `flighttype` varchar(1) NOT NULL DEFAULT 'P',
  `timesflown` int(11) NOT NULL DEFAULT '0',
  `notes` text NOT NULL DEFAULT '',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `bidid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `depicao` (`depicao`),
  KEY `flightnum` (`flightnum`),
  KEY `depicao_arricao` (`depicao`,`arricao`),
  KEY `code` (`code`),
  KEY `idx_code_flightnum` (`code`,`flightnum`),
  CONSTRAINT `phpvms_schedules_ibfk_1` FOREIGN KEY (`code`) REFERENCES `phpvms_airlines` (`code`) ON UPDATE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pilotid` int(11) NOT NULL DEFAULT '',
  `ipaddress` varchar(25) NOT NULL DEFAULT '',
  `logintime` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendlyname` varchar(25) NOT NULL DEFAULT '',
  `name` varchar(25) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(150) NOT NULL DEFAULT '',
  `core` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phpvms_updates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `lastupdate` datetime NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
