# SQL Manager 2010 Lite for MySQL 4.6.0.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : l24cm


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

SET FOREIGN_KEY_CHECKS=0;

USE `l24cm`;

#
# Structure for the `content` table : 
#

CREATE TABLE `content` (
  `path` varchar(700) NOT NULL,
  `type` char(3) NOT NULL DEFAULT 'TXT',
  `content` varchar(64000) DEFAULT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for the `content` table  (LIMIT 0,500)
#

INSERT INTO `content` (`path`, `type`, `content`) VALUES 
  ('','TXT','{\"Text\":\"home pickle\",\"Copy\":\"\\u003cp\\u003ehello \\u003cstrong\\u003ehello \\u003cem\\u003ehello\\u003c/em\\u003e\\u003c/strong\\u003e\\u003c/p\\u003e\"}'),
  ('a/b/c/d','TXT','Hello'),
  ('a/x','TXT','Goodbye'),
  ('Home/Edit','TXT','editor'),
  ('Home/Test','TXT','{\"Text\":\"This is a test\",\"Copy\":\"\\u003cp\\u003eHere\\u0027s some \\u003cstrong\\u003etest \\u003c/strong\\u003ecopy\\u003c/p\\u003e\"}');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;