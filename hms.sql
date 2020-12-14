SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Mehedi Hasan Sani', 'mehedi.hasan.sani@g.bracu.ac.bd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pat_name` varchar(190) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `pat_dob` date NOT NULL,
  `app_date` date NOT NULL,
  `doc_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `pat_name`, `gender`, `pat_dob`, `app_date`, `doc_id`) VALUES
(2, 'Jamil Khan', 'male', '2020-12-06', '2020-11-30', 6);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `speciality` varchar(199) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `speciality`, `phone`, `address`) VALUES
(4, 'Dr. John', 'Medicine', '01708009328', '23232 - Mirpur'),
(5, 'Dr. Cena', 'Cardiology', '12213236', '3408 - Gulshan'),
(6, 'Dr. Dwayne Johnson', 'Radiology', '01708009327', '3408 - Gulshan');
COMMIT;

