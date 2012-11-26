SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

drop table auth_codes;
CREATE TABLE `auth_codes` (
  `code` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `redirect_uri` varchar(200) NOT NULL,
  `expires` varchar(200) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

drop table access_tokens;
CREATE TABLE `access_tokens` (
  `oauth_token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` varchar(200) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oauth_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

drop table refresh_tokens;
CREATE TABLE `refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(40) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` varchar(200) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


drop table clients;
CREATE TABLE `clients` (
  `client_id` varchar(40) NOT NULL,
  `client_secret` varchar(20) NOT NULL,
  `redirect_uri` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;