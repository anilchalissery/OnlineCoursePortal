-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 05:13 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(5) NOT NULL,
  `a_name` varchar(30) NOT NULL,
  `a_email` varchar(30) NOT NULL,
  `a_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'Anil Chalissery', 'anilchalissery@gmail.com', '4445');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `ans_id` int(6) NOT NULL,
  `i_id` int(10) NOT NULL,
  `q_id` varchar(6) NOT NULL,
  `answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`ans_id`, `i_id`, `q_id`, `answer`) VALUES
(1, 1, '1', 'plz do wait untill instructor approves ur registration'),
(2, 1, '1', 'try now'),
(3, 1, '2', 'no, currently there is fee  for suscribing courses  you only needed to be approved by the instructor for the availablity of resources'),
(4, 10, 'null', 'Yes,it will be'),
(5, 10, '3', 'yes , it will be available'),
(6, 11, '4', 'no,'),
(7, 1, '4', 'currently no'),
(8, 1, '3', 'yes'),
(9, 21, '3', 'yes '),
(10, 1, '5', 'no'),
(11, 1, '6', 'after course\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `certid` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `i_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`certid`, `s_id`, `c_id`, `i_id`) VALUES
(1, 1, 1, 1),
(2, 7, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(5) NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `about_course` varchar(250) NOT NULL,
  `i_id` int(10) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `datafile` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_name`, `about_course`, `i_id`, `duration`, `dept`, `datafile`) VALUES
(1, 'JSP', 'java servelt programing is done in netbeans', 1, '8 week', 'Computer Science', 'PaymentForm.pdf'),
(2, 'PHP', 'null', 2, '2 week', 'mca', 'ajijohnac@gmail.com.pdf'),
(4, 'operating system', 'ms linux', 5, '12week', 'mca', 'tax.jpg'),
(5, 'Python', 'Server Side Scr', 10, '6 week', 'Computer Science', 'DualCloudData.rar'),
(7, 'Differentials', 'super course', 1, '8 week', 'EEE', 'PaymentForm.pdf'),
(8, 'Rhcsa', 'Redhat certified System admin', 1, '4 weeks', 'Computer Science', 'DraftPrint.pdf'),
(9, 'Operational Research', 'the course is about Operation research', 11, '12week', 'Maths', 'screencapture-nationalskillsregistry-nasscom-pageflows-itp-itpRegistration-ITPQualificationInfoAction-do-2019-04-09-20_20_10.png'),
(10, 'mobile computing', 'course on mobile computing', 10, '4 weeks', 'CSE', 'fileprocessing.zip'),
(11, 'dot net', 'web development', 1, '2 week', 'Computer Science', 'ssc.pdf'),
(12, 'networks', 'relation about  routers and networks', 1, '6week', 'CSE', 'DualCloudData.rar'),
(13, 'iOS', 'course dealing with application development of iOS apps', 1, '2 week', 'CSE', 'index.html');

-- --------------------------------------------------------

--
-- Table structure for table `course_opted`
--

CREATE TABLE `course_opted` (
  `c_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `review` varchar(250) DEFAULT NULL,
  `co_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_opted`
--

INSERT INTO `course_opted` (`c_id`, `s_id`, `review`, `co_id`, `status`) VALUES
(4, 1, NULL, 2, 'Approved'),
(1, 2, NULL, 3, 'Approved'),
(2, 2, NULL, 4, 'Pending'),
(1, 1, 'superb coaching', 8, 'Approved'),
(4, 25, NULL, 9, 'Approved'),
(2, 25, NULL, 10, 'Pending'),
(8, 7, NULL, 11, 'Approved'),
(7, 13, NULL, 12, 'Approved'),
(4, 13, NULL, 13, 'Approved'),
(5, 14, NULL, 14, 'Pending'),
(5, 7, NULL, 15, 'Pending'),
(10, 10, NULL, 16, 'Pending'),
(2, 7, NULL, 17, 'Pending'),
(9, 25, NULL, 18, 'Pending'),
(8, 25, NULL, 19, 'Approved'),
(11, 7, NULL, 20, 'Approved'),
(1, 30, NULL, 21, 'Approved'),
(2, 30, NULL, 22, 'Pending'),
(4, 30, NULL, 23, 'Approved'),
(9, 32, NULL, 24, 'Pending'),
(13, 1, NULL, 25, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(5) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(4, 'Computer Science'),
(5, 'EEE'),
(6, 'Civil'),
(7, 'mechanical'),
(8, 'MCA'),
(10, 'CSE'),
(11, 'Mathamatics');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `i_id` int(5) NOT NULL,
  `i_name` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `i_mob` varchar(10) NOT NULL,
  `i_email` varchar(20) NOT NULL,
  `i_password` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `i_workInstitute` varchar(250) DEFAULT NULL,
  `i_wrkEmail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`i_id`, `i_name`, `gender`, `i_mob`, `i_email`, `i_password`, `status`, `i_workInstitute`, `i_wrkEmail`) VALUES
(1, 'Jaffer', 'Male', '9809526880', 'jaffer@gmail.com', '7412', 'Approved', 'IIT ,Kanpoor', 'mail@kanpoorIIT.com'),
(2, 'clinton s p', 'Male', '7896541784', 'cli@gm.hcom', '8997', 'Approved', 'Bharithiyar university', 'mail@bu.com'),
(5, 'ibi P S', 'Female', '7589741235', 'jibi@gmail.com', 'jibijibi', 'Approved', 'Sahrdaya Institute of Science and technogy ,thrissur', 'mail@sist.ae'),
(6, 'nikhil', 'Male', '7458962145', 'niki@gmail.com', '3102', 'Approved', 'IIT palakad', 'mail@palghatIIT.in'),
(7, 'Rajan p', 'Male', '9854785693', 'raj@gmail.com', '78965', 'Approved', 'Calicut university ', 'mail@calicutu.in'),
(9, 'tony stark', 'Male', '9999999999', '3ewsdr@wsde.com', '741258', 'Approved', 'Marvel Academy', 'mail@marvel.com'),
(10, 'Thor', 'Male', '7744112288', 'ax@gmail.com', '7412', 'Approved', 'Marvel Academy', 'mail@marvel.com'),
(11, 'Sujatha', 'Female', '9955886644', 'suju@re.com', '7412', 'Approved', 'Sahrdaya Institute of Science and technogy ,thrissur', 'mail@sist.ae'),
(12, 'Marvin', 'Male', '7896541236', 'marv@ssc.com', '7854', 'Approved', 'DIST ,angamaly', 'mail@DIST.com'),
(13, 'Shreya', 'Female', '8888222255', 'Shreya@singer.com', '74125', 'Approved', 'IIM delhi', 'mail@delhi.com'),
(14, 'Stheephan', 'Male', '7778889995', 'Steepy@yahoo.com', '77885544', 'Approved', 'Shanthinikethan ', 'mail@shathi.com'),
(15, 'Subrumani', 'Male', '8844775588', 'Subu@redhat.com', '77445588', 'Approved', 'SRM chennai', 'mail@srm.com'),
(17, 'Joseph', 'Male', '9845896580', 'jos@gmail.com', '8521', 'Approved', 'Oxford University', 'mail@oxford.uk'),
(18, 'Sujatha', 'Female', '7899544558', 'suju@re.com', '789', 'Approved', 'MG university', 'mail@mu.com'),
(20, 'valssa', 'Female', '8547965874', 'vals@gamil.com', '9874', 'Approved', 'st Marys thrissur', 'mail@stmarys.com'),
(21, 'shela', 'Female', '7845123695', 'shela@gmail.com', '0000', 'Approved', 'st Mount carmel ', 'mail@stmount.in'),
(22, 'vidya', 'Female', '7412589635', 'vidya@gmail.com', '0000', 'Approved', 'IIT calicut', 'mail@calicutIIT.in'),
(24, 'Charles Xavior', 'Male', '7111222555', 'charly@vidya.org', '9632', 'Approved', 'vidya nikethan', 'mail@vidya.org'),
(25, 'Catherine', 'Female', '7755669987', 'Kat@srm.com', 'asdf', 'Pending', 'SRM chennai', 'mail@srm.com');

-- --------------------------------------------------------

--
-- Table structure for table `intract`
--

CREATE TABLE `intract` (
  `chat_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `t_id` int(5) DEFAULT NULL,
  `question` varchar(250) NOT NULL,
  `reply` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intract`
--

INSERT INTO `intract` (`chat_id`, `s_id`, `t_id`, `question`, `reply`) VALUES
(2, 1, 1, 'how to get ceertified', 'by doing course at stipulated time');

-- --------------------------------------------------------

--
-- Table structure for table `optionsanswer`
--

CREATE TABLE `optionsanswer` (
  `oa_id` int(5) NOT NULL,
  `optiona` varchar(100) NOT NULL,
  `optionb` varchar(100) NOT NULL,
  `optionc` varchar(100) NOT NULL,
  `optiond` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `qp_id` int(11) NOT NULL,
  `q_no` int(5) DEFAULT NULL,
  `c_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `optionsanswer`
--

INSERT INTO `optionsanswer` (`oa_id`, `optiona`, `optionb`, `optionc`, `optiond`, `answer`, `qp_id`, `q_no`, `c_id`) VALUES
(1, 'reque', 'next', 'reds', 'reque', '3', 1, 1, 1),
(2, 'yhg', 'jjh', 'ikj', 'yhg', 'ijk', 2, 2, 1),
(3, 'post', 'next', 'request', 'post', 'a', 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(5) NOT NULL,
  `s_id` int(10) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `s_id`, `question`) VALUES
(1, 1, 'cant download study materials'),
(2, 7, 'is there some kind of payment for the subscription this course'),
(3, 7, 'Will the study materials be offline available if registered for this courses?'),
(4, 13, 'will there be any  subscription fee monthly?'),
(5, 32, 'Is ther a valadity for ceertifications'),
(6, 1, 'how are u getting certified');

-- --------------------------------------------------------

--
-- Table structure for table `questionpaper`
--

CREATE TABLE `questionpaper` (
  `qp_id` int(5) NOT NULL,
  `q_no` int(5) DEFAULT NULL,
  `Question` varchar(300) NOT NULL,
  `c_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionpaper`
--

INSERT INTO `questionpaper` (`qp_id`, `q_no`, `Question`, `c_id`) VALUES
(2, 1, 'kkh', 1),
(3, 2, 'gjjh', 1),
(4, 3, 'what function is used to recieve', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(15) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `s_mob` varchar(10) NOT NULL,
  `s_email` varchar(25) NOT NULL,
  `s_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `gender`, `s_mob`, `s_email`, `s_password`) VALUES
(1, 'Anil C A', 'Male', '9809526880', 'anil@gmail.com', '8523'),
(2, 'Clinton c s', 'Male', '9655874987', 'cs@csdesigns.com', '78912'),
(7, 'soyet K y', 'Male', '7147483647', 'soyet@sym.com', '7412'),
(9, 'vishnu', 'Male', '9748677159', 'vishnu@gmail.com', '9854'),
(10, 'tison', 'Male', '9568741233', 'tison@gmail.com', '9874'),
(11, 'fasil', 'Male', '8745693210', 'fas@gmail.com', '89654'),
(12, 'stibi', 'Male', '9567027475', 'atib@gmail.com', '7895'),
(13, 'Scarlet', 'Female', '7766554433', 'Scar@gmail.com', '2233'),
(14, 'Tony Stark', 'Male', '8943106080', 'tony@avenger.com', '2345'),
(15, 'Loki', 'Male', '9632587415', 'loki@asgaurd.com', '9632'),
(16, 'Caption', 'Male', '7412589632', 'cap@cap.com', '7854'),
(17, 'marvel', 'Male', '9852145896', 'marve@marva.com', '778855'),
(18, 'marvel', 'Male', '9852145896', 'marve@marva.com', '785'),
(19, 'Jacob', 'Male', '9852145877', 'jacob@marva.com', '789'),
(20, 'Jaquilin Max', 'Male', '9852785877', 'jaqMax@marva.com', 'wsa'),
(21, 'Sundari', 'Female', '9844785877', 'Princes@disney.com', '741'),
(22, 'Louis Philp', 'Male', '9999999999', 'Louis@lp.com', '101010'),
(23, 'Aster', 'Female', '8888999999', 'aster@lp.com', '7854'),
(24, 'Aster Ps', 'Male', '8888784999', 'asterps@louip.com', '654'),
(25, 'Sethu', 'Male', '8811111199', 'sethu@cbi.com', '0000'),
(26, 'Subramanyan', 'Male', '7845123654', 'subu@gmail.com', '8521'),
(27, 'Soyet', 'Female', '9655874987', 'soy@fm.com', '7896'),
(28, 'emy', 'Male', '7766554433', 'soyet23@sym.com', '7412'),
(29, 'ds', 'Male', '7766554433', 'anil345@gmail.com', '7854'),
(30, 'Harry', 'Male', '9658231456', 'harry@gmail.com', '4321'),
(31, 'Deepa k k', 'Female', '7777788888', 'deepa@gmail.com', '9632'),
(32, 'balan k nair', 'Male', '9996665558', 'bkn@gmail.com', '1236');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `q_no` int(5) NOT NULL,
  `Question` varchar(250) NOT NULL,
  `oa` varchar(250) NOT NULL,
  `ob` varchar(250) NOT NULL,
  `oc` varchar(250) NOT NULL,
  `od` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `c_id`, `q_no`, `Question`, `oa`, `ob`, `oc`, `od`, `answer`) VALUES
(3, 1, 1, 'what is jsp', 'java server packet', 'java service package', 'java session protocol', 'java server packet', '4'),
(4, 1, 2, 'what is jsp', 'java server packet', 'java service package', 'java session protocol', 'java server packet', '4'),
(5, 1, 3, 'what is jsp', 'java server packet', 'java service package', 'java session protocol', 'java server packet', '4'),
(6, 1, 4, 'what function is used to recie', 'qwe', 'rew', 'asd', 'qwe', '2'),
(7, 1, 5, 'what function is used to recie', 'qwe', 'rew', 'asd', 'qwe', '2'),
(8, 1, 6, 'is jsp java', 'yes', 'no', 'sometimes', 'yes', '2'),
(9, 5, 1, 'is python server scripting language', 'yes', 'no', 'sometimes', 'yes', '3'),
(10, 8, 1, 'what is redhat', 'hat colored red', 'linux distribution', 'server', 'hat colored red', '3'),
(11, 8, 2, 'mkdir is used for', 'remove directory', 'list directory', 'format disks', 'remove directory', '4'),
(12, 12, 1, 'LAN stands for', 'Local Administrated Network', 'Level A Network', 'Local Area Network', 'none of these', '3'),
(13, 13, 1, 'what function is used to recie', 'yes', 'rew', 'ikj', 'response', '4');

-- --------------------------------------------------------

--
-- Table structure for table `testresults`
--

CREATE TABLE `testresults` (
  `tr_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `score` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testresults`
--

INSERT INTO `testresults` (`tr_id`, `s_id`, `c_id`, `score`) VALUES
(1, 1, 1, 6),
(2, 7, 8, 1),
(3, 1, 13, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `certified`
--
ALTER TABLE `certified`
  ADD PRIMARY KEY (`certid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `course_opted`
--
ALTER TABLE `course_opted`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`i_id`);

--
-- Indexes for table `intract`
--
ALTER TABLE `intract`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `optionsanswer`
--
ALTER TABLE `optionsanswer`
  ADD PRIMARY KEY (`oa_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `questionpaper`
--
ALTER TABLE `questionpaper`
  ADD PRIMARY KEY (`qp_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `testresults`
--
ALTER TABLE `testresults`
  ADD PRIMARY KEY (`tr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `ans_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `certified`
--
ALTER TABLE `certified`
  MODIFY `certid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `course_opted`
--
ALTER TABLE `course_opted`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `i_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `intract`
--
ALTER TABLE `intract`
  MODIFY `chat_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `optionsanswer`
--
ALTER TABLE `optionsanswer`
  MODIFY `oa_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questionpaper`
--
ALTER TABLE `questionpaper`
  MODIFY `qp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testresults`
--
ALTER TABLE `testresults`
  MODIFY `tr_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
