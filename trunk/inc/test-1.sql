-- phpMyAdmin SQL Dump
-- version 2.11.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2009 at 07:31 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobtype`
--

DROP TABLE IF EXISTS `jobtype`;
CREATE TABLE IF NOT EXISTS `jobtype` (
  `job_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set utf8 collate utf8_slovenian_ci NOT NULL,
  `description` text character set utf8 collate utf8_slovenian_ci NOT NULL,
  PRIMARY KEY  (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jobtype`
--


-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `log_id` int(11) NOT NULL auto_increment,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `person_id` int(11) NOT NULL,
  `jobtype_id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `note` text collate utf8_slovenian_ci NOT NULL,
  PRIMARY KEY  (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `log`
--


-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
CREATE TABLE IF NOT EXISTS `persons` (
  `id_person` int(11) NOT NULL auto_increment,
  `first` varchar(255) collate utf8_slovenian_ci NOT NULL,
  `last` varchar(255) character set ucs2 collate ucs2_slovenian_ci NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(255) collate utf8_slovenian_ci NOT NULL,
  `passwd` varchar(255) collate utf8_slovenian_ci NOT NULL,
  PRIMARY KEY  (`id_person`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id_person`, `first`, `last`, `id_role`, `username`, `passwd`) VALUES
(3, 'Uros', 'Gabrovec', 1, 'uros', 'vili123');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_role` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set utf8 collate utf8_slovenian_ci NOT NULL,
  PRIMARY KEY  (`id_role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `roles`
--

