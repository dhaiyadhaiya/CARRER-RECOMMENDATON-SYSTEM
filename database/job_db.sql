-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2023 at 03:43 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `job_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cr_alumni`
--

CREATE TABLE `cr_alumni` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `desig` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_alumni`
--

INSERT INTO `cr_alumni` (`id`, `name`, `mobile`, `email`, `dept`, `year`, `company`, `desig`, `uname`, `pass`) VALUES
(1, 'Suresh', 7367745336, 'suresh@gmail.com', 'CSE', '2013', 'CTS', 'Software Engineer', '1201', '1234'),
(2, 'Nisha', 8856466532, 'nisha@gmail.com', 'CSE', '2014', 'Wipro', 'PHP Developer', '1301', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cr_company`
--

CREATE TABLE `cr_company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `service` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mark1` double NOT NULL,
  `mark2` double NOT NULL,
  `dept` varchar(20) NOT NULL,
  `mark3` double NOT NULL,
  `arrear` int(11) NOT NULL,
  `clear` int(11) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `extra_cur` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `income` double NOT NULL,
  `jobtype` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_company`
--

INSERT INTO `cr_company` (`id`, `name`, `mobile`, `email`, `address`, `city`, `service`, `gender`, `mark1`, `mark2`, `dept`, `mark3`, `arrear`, `clear`, `sport`, `extra_cur`, `skill`, `income`, `jobtype`, `uname`, `pass`) VALUES
(1, 'TCS', 9843382038, 'tcs@info.com', '11,Nungampakkam', 'Chennai', 'Software Development', 'Any', 60, 60, 'BE CSE', 6, 0, 0, 'Cricket', 'Seminar Participated', 'Web Design', 200000, 'None', '', ''),
(2, 'Wipro', 9945633246, 'team@wipro.com', 'Adayar', 'Chennai', 'Software Development', 'Any', 0, 0, 'Any', 0, 0, 0, 'Cricket', 'Seminar Participated', 'Java', 300000, 'None', '', ''),
(3, 'HCL', 8832166438, 'info@hcl.in', 'DS Nagar', 'Pondicherry', 'Electrical & Hardware', 'Male', 60, 60, 'Any', 9, 1, 1, 'Cricket', 'Seminar', 'Harware', 300000, 'None', '', ''),
(4, 'Infosys', 8832166439, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Male', 50, 50, 'Any', 8.5, 0, 0, 'Cricket', 'x', 'PHP', 200000, 'None', '', ''),
(5, 'Tata Consultancy Services', 8832166440, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Male', 70, 70, 'Any', 6.5, 0, 0, 'Cricket', 'x', 'PHP', 200000, 'None', '', ''),
(6, 'Tech Mahindra', 8832166441, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Male', 60, 60, 'Any', 7.5, 0, 0, 'Foot Ball', 'x', 'PHP', 200000, 'None', '', ''),
(7, 'Oracle Financial Services Software', 8832166442, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 80, 80, 'Any', 8.6, 0, 0, 'x', 'x', 'PHP,Web Design', 200000, 'None', '', ''),
(8, 'Larsen & Toubro Infotech', 8832166443, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 6.2, 1, 0, 'x', 'x', 'PHP,Web Design', 200000, 'None', '', ''),
(9, 'Mphasis', 8832166444, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 85, 85, 'Any', 7.1, 0, 0, 'x', 'x', 'PHP,Web Design', 200000, 'None', '', ''),
(10, 'Mindtree', 8832166445, 'xx@info.com', 'DS Nagar', 'Chennai', 'Software Development', 'Any', 60, 60, 'Any', 7.3, 0, 0, 'x', 'x', 'PHP', 200000, 'None', '', ''),
(11, 'Accel Frontline', 8832166446, 'xx@info.com', 'DS Nagar', 'Chennai', 'Software Development', 'Any', 60, 60, 'Any', 5.3, 0, 0, 'x', 'x', 'Java', 200000, 'None', '', ''),
(12, '3i Infotech', 8832166447, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 5.5, 1, 0, 'x', 'x', 'Java', 200000, 'None', '', ''),
(13, 'Atom Technologies', 8832166448, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 75, 75, 'Any', 7.5, 1, 0, 'x', 'x', 'Multimedia', 200000, 'None', '', ''),
(14, 'Blue Star Infotech', 8832166449, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 80, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(15, 'C-DAC', 8832166450, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 50, 50, 'Any', 70, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(16, 'CMC Limited', 8832166451, 'xx@info.com', 'DS Nagar', 'New Delhi', 'Software Development', 'Any', 60, 60, 'Any', 80, 1, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(17, 'Coforge', 8832166452, 'xx@info.com', 'DS Nagar', 'Noida', 'Software Development', 'Any', 60, 60, 'Any', 70, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(18, 'Cybage', 8832166453, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 60, 60, 'Any', 80, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(19, 'Cyient', 8832166454, 'xx@info.com', 'DS Nagar', 'Hyderabad', 'Software Development', 'Any', 60, 60, 'Any', 85, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(20, 'Datamatics', 8832166455, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 75, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(21, 'Eclerx', 8832166456, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(22, 'Firstsource', 8832166457, 'xx@info.com', 'DS Nagar', 'Kolkata ', 'Software Development', 'Any', 90, 90, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(23, 'Gateway TechnoLabs', 8832166458, 'xx@info.com', 'DS Nagar', 'Ahmedabad ', 'Software Development', 'Any', 55, 55, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(24, 'Godrej Infotech', 8832166459, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 74, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(25, 'Honeywell', 8832166460, 'xx@info.com', 'DS Nagar', 'Madurai', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(26, 'HSBC GLT India', 8832166461, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'Seminar', 'x', 200000, 'None', '', ''),
(27, 'KPIT Technologies', 8832166462, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 85, 85, 'Any', 60, 1, 0, 'x', 'Seminar', 'Multimedia', 200000, 'None', '', ''),
(28, 'Mastek', 8832166463, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 65, 65, 'Any', 60, 0, 0, 'x', 'Seminar', 'Multimedia', 200000, 'None', '', ''),
(29, 'Melstar Information Technologies', 8832166464, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'Seminar', 'Python', 200000, 'None', '', ''),
(30, 'Microland', 8832166465, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 85, 85, 'Any', 60, 0, 0, 'x', 'Seminar', 'Python', 200000, 'None', '', ''),
(31, 'Microsoft', 8832166466, 'xx@info.com', 'DS Nagar', 'Hyderabad', 'Software Development', 'Any', 95, 95, 'Any', 90, 0, 0, 'x', 'Seminar', 'Python', 200000, 'None', '', ''),
(32, 'Mistral Solutions', 8832166467, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 60, 60, 'Any', 60, 1, 0, 'x', 'Seminar', 'PHP', 200000, 'None', '', ''),
(33, 'Monsoon Multimedia', 8832166468, 'xx@info.com', 'DS Nagar', 'Noida', 'Software Development', 'Any', 60, 60, 'Any', 60, 1, 0, 'x', 'x', 'PHP', 200000, 'None', '', ''),
(34, 'Nucleus Software Exports', 8832166469, 'xx@info.com', 'DS Nagar', 'Noida', 'Software Development', 'Any', 90, 90, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(35, 'Onward Technologies', 8832166470, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(36, 'Oswald Labs', 8832166471, 'xx@info.com', 'DS Nagar', 'Delhi', 'Software Development', 'Any', 60, 60, 'Any', 60, 1, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(37, 'Persistent Systems', 8832166472, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 86, 86, 'Any', 60, 1, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(38, 'Quest Global', 8832166473, 'xx@info.com', 'DS Nagar', 'Thiruvananthapuram', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(39, 'Ramco Systems', 8832166474, 'xx@info.com', 'DS Nagar', 'Chennai', 'Software Development', 'Any', 75, 75, 'Any', 90, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(40, 'Rediff.com', 8832166475, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 75, 1, 0, 'Cricket', 'x', 'x', 200000, 'None', '', ''),
(41, 'Samsung India Software Centre', 8832166476, 'xx@info.com', 'DS Nagar', 'Noida', 'Software Development', 'Any', 60, 60, 'Any', 85, 0, 0, 'Cricket', 'x', 'x', 200000, 'None', '', ''),
(42, 'Sasken Technologies', 8832166477, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 60, 60, 'Any', 60, 0, 0, 'Cricket', 'x', 'x', 200000, 'None', '', ''),
(43, 'Sonata Software', 8832166478, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 60, 60, 'Any', 65, 0, 0, 'Cricket', 'x', 'x', 200000, 'None', '', ''),
(44, 'SPAN Infotech (India) Pvt. Ltd.', 8832166479, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 60, 60, 'Any', 74, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(45, 'Tata Interactive Systems', 8832166480, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 78, 0, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(46, 'Thoughtworks', 8832166481, 'xx@info.com', 'DS Nagar', 'Bangalore', 'Software Development', 'Any', 50, 50, 'Any', 88, 1, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(47, 'UST', 8832166482, 'xx@info.com', 'DS Nagar', 'Chennai', 'Software Development', 'Any', 60, 60, 'Any', 86, 1, 0, 'x', 'x', 'x', 200000, 'None', '', ''),
(48, 'WNS Global Services', 8832166483, 'xx@info.com', 'DS Nagar', 'Mumbai', 'Software Development', 'Any', 60, 60, 'Any', 58, 0, 0, 'x', 'x', 'Python', 200000, 'None', '', ''),
(49, 'Zensar Technologies', 8832166484, 'xx@info.com', 'DS Nagar', 'Pune', 'Software Development', 'Any', 65, 65, 'Any', 64, 0, 0, 'x', 'Seminar', 'Python', 200000, 'None', '', ''),
(50, 'Zoho Corporation', 8832166485, 'xx@info.com', 'DS Nagar', 'Chennai', 'Software Development', 'Any', 90, 90, 'MCA', 85, 1, 1, 'Foot Ball', 'Drawing', 'CAD Design', 300000, 'Private Job', '', ''),
(51, 'Xyz', 8562471220, 'xyz@gmail.com', '45,xy nagar', 'Chennai', 'Software', 'Any', 80, 90, 'BE CSE', 8, 0, 0, 'Foot Ball', 'Music', 'Multimedia', 0, 'None', 'xyz', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cr_mark`
--

CREATE TABLE `cr_mark` (
  `id` int(11) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `marks` varchar(100) NOT NULL,
  `percent` double NOT NULL,
  `num_arrear` int(11) NOT NULL,
  `clear_arr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_mark`
--

INSERT INTO `cr_mark` (`id`, `regno`, `semester`, `marks`, `percent`, `num_arrear`, `clear_arr`) VALUES
(1, '101', 5, '93,98,87,85,81,90', 91.1666666666667, 0, 0),
(2, '102', 5, '56,88,74,66,34,58', 62.6666666666667, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cr_register`
--

CREATE TABLE `cr_register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY  (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_register`
--

INSERT INTO `cr_register` (`id`, `name`, `mobile`, `email`, `address`, `uname`, `pass`) VALUES
(1, 'Varun', 8529637415, 'varun@gmail.com', '43,FF', 'varun', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cr_student`
--

CREATE TABLE `cr_student` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `school1` varchar(50) NOT NULL,
  `mark1` double NOT NULL,
  `school2` varchar(30) NOT NULL,
  `mark2` double NOT NULL,
  `father` varchar(20) NOT NULL,
  `occu` varchar(30) NOT NULL,
  `jobtype` varchar(20) NOT NULL,
  `location` varchar(30) NOT NULL,
  `income` double NOT NULL,
  `mother` varchar(20) NOT NULL,
  `occu2` varchar(30) NOT NULL,
  `jobtype2` varchar(20) NOT NULL,
  `location2` varchar(30) NOT NULL,
  `income2` double NOT NULL,
  `mark` double NOT NULL,
  `sport` varchar(200) NOT NULL,
  `extra_cur` varchar(200) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `arrear` int(11) NOT NULL,
  `clear` int(11) NOT NULL,
  `company` text NOT NULL,
  `cgpa` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_student`
--

INSERT INTO `cr_student` (`id`, `name`, `gender`, `dob`, `mobile`, `email`, `dept`, `year`, `uname`, `pass`, `address`, `city`, `school1`, `mark1`, `school2`, `mark2`, `father`, `occu`, `jobtype`, `location`, `income`, `mother`, `occu2`, `jobtype2`, `location2`, `income2`, `mark`, `sport`, `extra_cur`, `skill`, `arrear`, `clear`, `company`, `cgpa`) VALUES
(1, 'Raju', 'Male', '12-12-1997', 9934621654, 'raju@gmail.com', 'BE CSE', '2018-2022', '101', '1234', '22,SS Nagar', 'Trichy', 'SDBHS', 85.64, 'SDBHS', 88, 'Suresh', 'Manager', 'Government Job', 'Madurai', 300000, 'Radha', 'x', 'x', 'x', 0, 91.16666667, 'Cricket,Tennis,Foot Ball', 'Seminar Participated,Drawing,Music', 'CAD Design,Multimedia,Java', 0, 0, 'TCS, Wipro, HCL, Infosys', 9.01),
(2, 'Vishal', 'Male', '10-11-1997', 8866733546, 'vishal@gmail.com', 'BE CSE', '2018-2022', '102', '1234', '4/312, MG Colony', 'Madurai', 'GGS', 85.73, 'GGS', 88.64, 'Raju', 'Farmer', 'Private', 'Tanjore', 200000, 'Sara', 'x', 'x', 'x', 0, 62.66666667, 'Cricket', 'x', 'x', 1, 1, 'HCL', 9.02),
(3, 'Aarthi', 'Female', '18-04-1999', 7664530011, 'Aarthi1@gmail.com', 'BE EEE', '2018-2019', '103', '1234', '2/29A , AD street\nVeesanam(Po),\nNamakkal(Dt)', 'Namakkal', 'SSA', 78.24, 'SSA', 82.3, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 56.3, 'Tennis', 'x', 'x', 3, 2, '', 8.24),
(4, 'Abirami', 'Female', '11-11-1998', 7664530012, 'Abirami2@gmail.com', 'MCA', '2018-2019', '104', '1234', '6/237 , AD street\nMarurpatty(Po),\nNamakkal(Dt)', 'Namakkal', 'BBP', 67.45, 'BBP', 69.5, 'x', 'x', 'x', 'x', 100000, 'x', 'x', 'x', 'x', 0, 78.3, 'Tennis', 'x', 'x', 1, 1, '', 7.1),
(5, 'Akhilesh kumar', 'Male', '10-02-1998', 7664530013, 'Akhileshkumar3@gmail.com', 'BE ECE', '2018-2019', '105', '1234', 'Malsalame Chhote Nagla, \nAdarshcolony, \nPatna (Cit', 'Patna', 'SSB', 88.34, 'SSB', 90.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 89.6, 'Tennis', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.3),
(6, 'Anitha', 'Female', '02-07-1999', 7664530014, 'Anitha4gmail.com4@gmail.com', 'BE CSE', '2018-2019', '106', '1234', '26/64,OOrpuram Colony,\nVasalurpatty(Po),\nKollihlls', 'Namakkal', 'BBG', 80.67, 'BBG', 76.8, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.2, 'Cricket', 'x', 'x', 0, 0, 'TCS, Wipro', 8.49),
(7, 'Arthi', 'Female', '27-04-1999', 7664530015, 'Arthi5@gmail.com', 'MBA', '2018-2019', '107', '1234', '3/77, Pallar street, \nVaragur, \nNamakkal.', 'Namakkal', 'HSS', 90.25, 'HSS', 91.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 91.3, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 9.5),
(8, 'Ashwani kumar', 'Male', '21-12-1998', 7664530016, 'Ashwanikumar6@gmail.com', 'BE CIVIL', '2018-2019', '108', '1234', 'Villchandan bag,\nMunger(PO),\nPS.Kashimbazar,Munger', 'Munger', 'GHHS', 56.7, 'GHHS', 60.4, 'x', 'x', 'x', 'x', 180000, 'x', 'x', 'x', 'x', 0, 78.3, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 5.97),
(9, 'Bhuvaneshwari', 'Female', '26-10-1998', 7664530017, 'Bhuvaneshwari7@gmail.com', 'BE MECH', '2018-2019', '109', '1234', '28,Kaliyappanoor,\nCollectorate(PO),\nThanthonimalai', 'Karur', 'GHHS', 66.4, 'GHHS', 72.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 75.7, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 6.99),
(10, 'Boopathi', 'Male', '25-07-1997', 7664530018, 'Boopathi8@gmail.com', 'BE EEE', '2018-2019', '110', '1234', '36,Pillaiyankovil theru,\nA.S.Pettai,Namakkal(DT)', 'Namakkal', 'GHHS', 78.3, 'GHHS', 84.6, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 89.3, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 8.24),
(11, 'Dharmadurai', 'Male', '03-06-1998', 7664530019, 'Dharmadurai9@gmail.com', 'MBA', '2018-2019', '111', '1234', '5/45,Boyer Street,\nAkkiyampatty(Vill),\nSenthamanga', 'Namakkal', 'BPHS', 78.32, 'BPHS', 72.8, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 70.3, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 8.24),
(12, 'Dhineshkumar', 'Male', '23-10-1998', 7664530020, 'Dhineshkumar10@gmail.com', 'MCA', '2018-2019', '112', '1234', '6/52,Kashpakudi,\nPunjaikalakurichi(PO),\nKarur(DT)', 'Karur', 'BPHS', 92.56, 'BPHS', 85.3, 'x', 'x', 'x', 'x', 300000, 'x', 'x', 'x', 'x', 0, 88.4, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.74),
(13, 'Elisa', 'Female', '11-07-1999', 7664530021, 'Elisa11@gmail.com', 'BE MECH', '2018-2019', '113', '1234', '22/3,karupukovil street,\nDevaseri,Vadipatti,\nMadur', 'Madurai', 'BPHS', 67.3, 'BPHS', 73.5, 'x', 'x', 'x', 'x', 280000, 'x', 'x', 'x', 'x', 0, 79.3, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 7.08),
(14, 'Gowshika', 'Female', '16-09-1998', 7664530022, 'Gowshika12@gmail.com', 'BE EEE', '2018-2019', '114', '1234', '1/3,Manakkadu,\nPiranthagam(Po),\nParamathi Velur(TK', 'Namakkal', 'SJHS', 87.54, 'SJHS', 84.2, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 80.8, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 9.21),
(15, 'Haripriya', 'Female', '22-04-1999', 7664530023, 'Haripriya13@gmail.com', 'BE ECE', '2018-2019', '115', '1234', '1/87,Anna Nagar,\nRangappan Nayakenpalayam,\nErnapur', 'Namakkal', 'SJHS', 91.45, 'SJHS', 94.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.7, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 9.63),
(16, 'Jayasurya', 'Male', '15-07-1999', 7664530024, 'Jayasurya14@gmail.com', 'MCA', '2018-2019', '116', '1234', '4/37-3, Pachyee kovil thottam, \nChinnamuthalipatty', 'Namakkal', 'SJHS', 87.45, 'SJHS', 89.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.5, 'Tennis', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.21),
(17, 'Jeevith', 'Male', '17-01-1999', 7664530025, 'Jeevith15@gmail.com', 'MBA', '2018-2019', '117', '1234', 'J/59,CR Camp,\nParamathi Velur,\nNamakkal(Dt).', 'Namakkal', 'SJHS', 75.33, 'SJHS', 79.6, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 85.7, 'Tennis', 'x', 'x', 0, 0, 'Wipro', 7.93),
(18, 'Jeevitha', 'Female', '13-03-1999', 7664530026, 'Jeevitha16@gmail.com', 'BE CSE', '2018-2019', '118', '1234', '2/86,Arunthathiyar Street,\nKuppampalayam,Pothupatt', 'Namakkal', 'SKHS', 78.6, 'SKHS', 83.4, 'x', 'x', 'x', 'x', 130000, 'x', 'x', 'x', 'x', 0, 75.8, 'Cricket,Tennis', 'x', 'x', 0, 0, 'TCS, Wipro', 8.27),
(19, 'Kavitha', 'Female', '24-06-1999', 7664530027, 'Kavitha17@gmail.com', 'MBA', '2018-2019', '119', '1234', '3/92, chetti street, \nVadakaraiathhur, \nP.Velur (T', 'Namakkal', 'SKHS', 90.2, 'SKHS', 91.4, 'x', 'x', 'x', 'x', 120000, 'x', 'x', 'x', 'x', 0, 94.5, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'Wipro', 9.49),
(20, 'Keerthana', 'Female', '10-01-2000', 7664530028, 'Keerthana18@gmail.com', 'MCA', '2018-2019', '120', '1234', '1/176,A Perumal kovil street, \nValayapatti, Mohanu', 'Mohanur', 'SKHS', 84.76, 'SKHS', 81.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 89.4, 'x', 'x', 'x', 0, 0, 'Wipro', 8.92),
(21, 'Krishna prasad', 'Male', '08-11-1999', 7664530029, 'Krishnaprasad19@gmail.com', 'BE EEE', '2018-2019', '121', '1234', '33B2, K.K.P.street,\n H.Spettai, Namakkal(Dt)', 'Namakkal', 'SKHS', 91.23, 'SKHS', 92.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.4, 'x', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.6),
(22, 'Krishna veni', 'Female', '07-11-1998', 7664530030, 'Krishnaveni20@gmail.com', 'BE MECH', '2018-2019', '122', '1234', '3/18,Akkalampatti,\nNamagiripettai(PO),\nRasipuram,N', 'Namakkal', 'SKHS', 87.45, 'SKHS', 89.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 92.7, 'x', 'x', 'x', 0, 0, 'Wipro', 9.21),
(23, 'Maheshwar kumar', 'Male', '23-11-1998', 7664530031, 'Maheshwarkumar21@gmail.com', 'BE CIVIL', '2018-2019', '123', '1234', '6/203,Nethaji Nagar,\nTrichy Road Namakkal(Dt)', 'Namakkal', 'SKHS', 65.67, 'SKHS', 69.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 70.6, 'x', 'x', 'x', 1, 1, '', 6.91),
(24, 'Manikandan', 'Male', '15-05-1999', 7664530032, 'Manikandan22@gmail.com', 'BE CSE', '2018-2019', '124', '1234', '40,Fatfima theatre street,\n Ganthi Nagar,\nAllinaga', 'Theni', 'SKHS', 78.9, 'SKHS', 76.3, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 74.4, 'Tennis', 'x', 'x', 0, 0, 'TCS, Wipro', 8.31),
(25, 'Manisha', 'Female', '19-07-1999', 7664530033, 'Manisha23@gmail.com', 'BE CSE', '2018-2019', '125', '1234', '2/573,Pallar Street,\nN.Kosavampatty,\nNamakkal(Dt)', 'Namakkal', 'CFHS', 82.54, 'CFHS', 84.2, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 87.1, 'Cricket,Tennis', 'x', 'x', 0, 0, 'TCS, Wipro', 8.69),
(26, 'Mani', 'Male', '15-01-1998', 7664530034, 'Mani24@gmail.com', 'ECE', '2018-2019', '126', '1234', '2/16, Mela street,\nMaruthavanchery, Nannilam (TK),', 'Thiruvarur', 'CFHS', 83.54, 'CFHS', 87.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.7, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro, Infosys', 8.79),
(27, 'Mohammed aarif', 'Male', '25-08-1999', 7664530035, 'Mohammed@gmail.com', 'BE EEE', '2018-2019', '127', '1234', '6/203,Nethaji Nagar,\nTrichy Road Namakkal(Dt)', 'Namakkal', 'CFHS', 76.75, 'CFHS', 79.4, 'x', 'x', 'x', 'x', 270000, 'x', 'x', 'x', 'x', 0, 83.6, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 8.08),
(28, 'Nikhil kumar', 'Male', '13-03-1998', 7664530036, 'Nikhil@gmail.com', 'BE CSE', '2018-2019', '128', '1234', '10/152,Veerapuram street, \nSengattupatti(PO), \nThu', 'Trichy', 'CFHS', 92.45, 'CFHS', 91.4, 'x', 'x', 'x', 'x', 250000, 'x', 'x', 'x', 'x', 0, 79.6, 'x', 'x', 'x', 0, 0, 'TCS, Wipro, HCL, Infosys', 9.73),
(29, 'Nithya devi', 'Female', '03-01-2000', 7664530037, 'Nithyadevi@gmail.com', 'BE MECH', '2018-2019', '129', '1234', '4/722, Nagarajapuram,\nVasathapuram(PO), \nNamakkal(', 'Namakkal', 'CFHS', 54.67, 'CFHS', 58.6, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 64.5, 'x', 'x', 'x', 0, 0, 'Wipro', 5.75),
(30, 'Parthiban', 'Male', '30-06-1998', 7664530038, 'Parthiban@gmail.com', 'BE EEE', '2018-2019', '130', '1234', '10/152,Veerapuram street, \nSengattupatti(PO), \nThu', 'Trichy', 'BBHS', 76.4, 'BBHS', 80.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 78.6, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 8.04),
(31, 'Periyakaruppan', 'Male', '20-07-1999', 7664530039, 'Periyakaruppan@gmail.com', 'BE ECE', '2018-2019', '131', '1234', 'North street,\n Melaachanampatti, \nViruveetu(PO), \n', 'Dindugal', 'BBHS', 78.5, 'BBHS', 83.2, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 84.5, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'Wipro', 8.26),
(32, 'Poovarasan', 'Male', '17-12-1998', 7664530040, 'Poovarasan@gmail.com', 'BE CSE', '2018-2019', '132', '1234', '2/92, Saralakkadu, \nSengapalli,Palappatti(PO), \nPa', 'Namakkal', 'BBHS', 84.56, 'BBHS', 87.6, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 89.7, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'TCS, Wipro, Infosys', 8.9),
(33, 'Prasanth', 'Male', '05-05-1999', 7664530041, 'Prasanth@gmail.com', 'BE CIVIL', '2018-2019', '133', '1234', '27/C,Nadupalayam,Emoor(Po),\nThanthonimalai,Karur(D', 'Karur', 'BPHS', 67.8, 'BPHS', 75.3, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 75.9, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'Wipro', 7.14),
(34, 'Prathipa', 'Female', '04-03-1999', 7664530042, 'Prathipa@gmail.com', 'MCA', '2018-2019', '134', '1234', '8/112,Vilaram street,\nPerumperppupatti,Semmedu,\nNa', 'Namakkal', 'BPHS', 89.3, 'BPHS', 93.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 92.8, 'x', 'x', 'x', 0, 0, 'Wipro', 9.4),
(35, 'Praveena', 'Female', '12-02-1999', 7664530043, 'Praveena@gmail.com', 'EEE', '2018-2019', '135', '1234', '2/555,Ramalingam Nagar,\nN.Kosavampatty(Po),\nNamakk', 'Namakkal', 'BPHS', 93.4, 'BPHS', 89.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 86.7, 'x', 'x', 'x', 0, 0, 'Wipro', 9.83),
(36, 'Praveena', 'Female', '01-06-1999', 7664530044, 'Praveena@gmail.com', 'MBA', '2018-2019', '136', '1234', '48,Karaipasupathipalayam, \nNanjaikalakurichi(PO),\n', 'Karur', 'SJHS', 92.3, 'SJHS', 88.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 89.7, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 9.72),
(37, 'Rajeshkumar', 'Male', '26-08-1998', 7664530045, 'Rajeshkumar@gmail.com', 'BE CSE', '2018-2019', '137', '1234', '3,Kamatchiamman kovil street, \nNorth steet, \nkarur', 'Karur', 'GKHS', 92.12, 'GKHS', 93.1, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 90.5, 'Cricket,Tennis', 'x', 'x', 0, 0, 'TCS, Wipro, HCL, Infosys', 9.7),
(38, 'Rohini', 'Female', '05-03-1998', 7664530046, 'Rohini@gmail.com', 'BE EEE', '2018-2019', '138', '1234', '21/15, V.P Kovil street,\nMelathiruppanthuruthi,\nTh', 'Thanjavur', 'GKHS', 84.3, 'GKHS', 81.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 86.6, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 8.87),
(39, 'Rohit kumar', 'Male', '19-08-1996', 7664530047, 'Rohitkumar@gmail.com', 'BE ECE', '2018-2019', '139', '1234', 'Karmalichak ,Patna City,\nBegampur(PO), \nBypass(PS)', 'Patna', 'BPHS', 78.4, 'BPHS', 74.5, 'x', 'x', 'x', 'x', 160000, 'x', 'x', 'x', 'x', 0, 78.9, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro', 8.25),
(40, 'Santhana kumar', 'Male', '05-06-1998', 7664530048, 'Santhanakumar@gmail.com', 'BE MECH', '2018-2019', '140', '1234', '1/4,Thamotharanpattinam,Vattanam(Po).\nThiruvatanai', 'Ramanathapuram', 'SJHS', 79.4, 'SJHS', 75.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 75.9, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 8.36),
(41, 'Santhiya', 'Female', '12-06-1999', 7664530049, 'Santhiya@gmail.com', 'BE CIVIL', '2018-2019', '141', '1234', '4/145,Kachinampatty Pirivu,\nEliavanour(PO),\nAravak', 'Karur', 'GHHS', 87.4, 'GHHS', 82.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 84.5, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 9.2),
(42, 'Selvaraj', 'Male', '19-05-1999', 7664530050, 'Selvaraj@gmail.com', 'MBA', '2018-2019', '142', '1234', '37,Sengunthapuram,\n6th Cross,Karur(Dt)', 'Karur', 'GHHS', 76.5, 'GHHS', 77.4, 'x', 'x', 'x', 'x', 143000, 'x', 'x', 'x', 'x', 0, 79.3, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 8.05),
(43, 'Shalini', 'Female', '12-12-1999', 7664530051, 'Shalini@gmail.com', 'MCA', '2018-2019', '143', '1234', '3/15,Gudi Street,\nKumara Gowndanpatti(PO),\nNamakka', 'Namakkal', 'GHHS', 79.5, 'GHHS', 90.3, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 92.5, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 8.37),
(44, 'Sindhuja', 'Female', '11-03-1999', 7664530052, 'Sindhuja@gmail.com', 'BE EEE', '2018-2019', '144', '1234', '2/398, Pallar street,\nN.Kosavampatty(PO),\nNamakkal', 'Namakkal', 'GHHS', 76.3, 'GHHS', 80.4, 'x', 'x', 'x', 'x', 150000, 'x', 'x', 'x', 'x', 0, 81.3, 'Cricket', 'x', 'x', 0, 0, 'Wipro', 8.03),
(45, 'Suguna', 'Female', '09-06-1999', 7664530053, 'Suguna@gmail.com', 'BE CSE', '2018-2019', '145', '1234', '5/990,Sambalkolikadu, \nPethanayakanpatty,Kamaraja ', 'Namakkal', 'BPHS', 87.5, 'BPHS', 90.2, 'x', 'x', 'x', 'x', 100000, 'x', 'x', 'x', 'x', 0, 87.3, 'Cricket', 'x', 'x', 0, 0, 'TCS, Wipro', 9.21),
(46, 'Sukumar', 'Male', '28-12-1998', 7664530054, 'Sukumar@', 'BE EEE', '2018-2019', '146', '1234', '2/161A,Vinayakar Street,\nSemmadaipalayam,\nPeriyaso', 'Namakkal', 'SJHS', 88.7, 'SJHS', 91.4, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 91.6, 'Cricket', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.34),
(47, 'Surya', 'Male', '14-07-1997', 7664530055, 'Surya@gmail.com', 'BE EEE', '2018-2019', '147', '1234', '1/4,Thamotharanpattinam,Vattanam(Po).\nThiruvatanai', 'Namakkal', 'SJHS', 89.5, 'SJHS', 81.2, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 86.2, 'Cricket,Tennis', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.42),
(48, 'Susmitha', 'Female', '15-05-1996', 7664530056, 'Susmitha@gmail.com', 'BE CSE', '2018-2019', '148', '1234', '2/16, Mela street,\nMaruthavanchery, Nannilam (TK),', 'Thanjavur', 'VMHS', 90.2, 'VMHS', 86.7, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 80.3, 'x', 'x', 'x', 0, 0, 'TCS, Wipro', 9.49),
(49, 'Tamilselvi', 'Female', '20-06-1995', 7664530057, 'Tamilselvi@gmail.com', 'BE ECE', '2018-2019', '149', '1234', '60/113B, Middle street, \nUzhavarpatty, \nKuppuchipa', 'Namakkal', 'VMHS', 69.4, 'VMHS', 73.5, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 75.4, 'Cricket,Tennis,Foot Ball', 'x', 'x', 2, 1, '', 7.31),
(50, 'Venkateswaran', 'Male', '09-01-1999', 7664530058, 'Venkateswaran@gmail.com', 'BE MECH', '2018-2019', '150', '1234', '5/158, Rajapattinam(south),\nNirmuilkutti(PO), \nVal', 'Salem', 'VMHS', 90.4, 'VMHS', 84.3, 'x', 'x', 'x', 'x', 200000, 'x', 'x', 'x', 'x', 0, 73.2, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'Wipro, HCL, Infosys', 9.52),
(51, 'Vinothini', 'Female', '02-03-1999', 7664530059, 'Vinothini@gmail.com', 'BE MECH', '2018-2019', '151', '1234', '143 Erupaithoppu,\nseeplapudhur,\nTrichy-621207.', 'Trichy', 'MHS', 92.3, 'MHS', 94.3, 'x', 'x', 'x', 'x', 130000, 'x', 'x', 'x', 'x', 0, 90.6, 'Cricket,Tennis,Foot Ball', 'x', 'x', 0, 0, 'Wipro', 9.72);

-- --------------------------------------------------------

--
-- Table structure for table `cr_subject`
--

CREATE TABLE `cr_subject` (
  `id` int(11) NOT NULL,
  `scode` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `semester` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cr_subject`
--

INSERT INTO `cr_subject` (`id`, `scode`, `subject`, `semester`, `dept`) VALUES
(1, 'S1', 'Java', 5, 'BE CSE'),
(2, 'S2', 'Web Design', 5, 'BE CSE'),
(3, 'S3', 'Mobile Computing', 5, 'BE CSE'),
(4, 'S4', 'Computer Architecture', 5, 'BE CSE'),
(5, 'S5', 'Hardware', 5, 'BE CSE'),
(6, 'S6', 'Networking', 5, 'BE CSE');
