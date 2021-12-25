-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 03:10 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `better`
--

-- --------------------------------------------------------

--
-- Table structure for table `contain`
--

CREATE TABLE `contain` (
  `cartId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE `own` (
  `clientId` int(11) NOT NULL,
  `addressId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `addressId` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` smallint(6) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`addressId`, `address`, `zip`, `city`, `country`) VALUES
(18, '18 alley', 18000, 'orleans', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Tenzin', 'tenzin', 'tenzin@gmail.com', 'bad5f33780c42f2588878a9d07405083', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `quantity` smallint(6) NOT NULL,
  `date_cart` date DEFAULT NULL,
  `image` varchar(32) NOT NULL,
  `courseId` int(11) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `sessionId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Programming Language'),
(2, 'Frontend Frameworks'),
(3, 'Backend Language'),
(4, 'Beginner'),
(5, 'Web Design'),
(6, 'Full Stack');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `courseId` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `imageSize` int(10) NOT NULL,
  `imageType` varchar(5) NOT NULL,
  `promoId` int(11) DEFAULT NULL,
  `tutorId` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `courseType` tinyint(4) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`courseId`, `courseName`, `image`, `imageSize`, `imageType`, `promoId`, `tutorId`, `catId`, `price`, `courseType`, `description`) VALUES
(1, 'SASS', 'upload/dc1e29c222.jpg', 36292, 'jpg', NULL, 3, 1, '11.99', 0, 'Sass (short for syntactically awesome style sheets) is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets (CSS). SassScript is the scripting language itself.\r\n\r\nSass consists of two syntaxes. The original syntax, called &quot;the indented syntax,&quot; uses a syntax similar to Haml. It uses indentation to separate code blocks and newline characters to separate rules. The newer syntax, &quot;SCSS&quot; (Sassy CSS), uses block formatting like that of CSS. It uses braces to denote code blocks and semicolons to separate rules within a block. The indented syntax and SCSS files are traditionally given the extensions .sass and .scss, respectively.'),
(2, 'MERN', 'upload/ed011a9516.jpg', 24761, 'jpg', NULL, 3, 6, '14.99', 0, 'MERN stands for MongoDB, Express, React, Node, after the four key technologies that make up the stack.\r\n\r\nMongoDB - document database\r\nExpress(.js) - Node.js web framework\r\nReact(.js) - a client-side JavaScript framework\r\nNode(.js) - the premier JavaScript web server\r\n\r\n\r\nExpress and Node make up the middle (application) tier. Express.js is a server-side web framework, and Node.js the popular and powerful JavaScript server platform. Regardless of which variant you choose, ME(RVA)N is the ideal approach to working with JavaScript and JSON, all the way through.'),
(3, 'MEAN', 'upload/f7734f5f05.png', 57185, 'png', NULL, 1, 6, '14.99', 0, 'MEAN (MongoDB, Express.js, AngularJS (or Angular), and Node.js)[1] is a free and open-source JavaScript software stack for building dynamic web sites and web applications.[2]\r\n\r\nBecause all components of the MEAN stack support programs that are written in JavaScript, MEAN applications can be written in one language for both server-side and client-side execution environments.\r\n\r\nThough often compared directly to other popular web development stacks such as the LAMP stack, the components of the MEAN stack are higher-level including a web application presentation layer and not including an operating system layer'),
(25, 'HTML', 'upload/c2721c6255.jpg', 33587, 'jpg', NULL, 1, 4, '9.99', 1, 'The HyperText Markup Language, or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\n\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.'),
(26, 'CSS', 'upload/b3e1df6ade.jpg', 67186, 'jpg', NULL, 3, 4, '9.99', 1, 'Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.\r\n\r\nCSS is designed to enable the separation of presentation and content, including layout, colors, and fonts.'),
(27, 'Javascript', 'upload/156a23e2d3.jpg', 52531, 'jpg', NULL, 3, 1, '11.99', 0, 'JavaScript  often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled and multi-paradigm. It has dynamic typing, prototype-based object-orientation and first-class functions.'),
(28, 'React Js', 'upload/4e05b83b1e1.jpg', 14904, 'jpg', NULL, 2, 2, '13.99', 0, 'React (also known as React.js or ReactJS) is a free and open-source front-end JavaScript library for building user interfaces based on UI components. It is maintained by Meta (formerly Facebook) and a community of individual developers and companies.'),
(29, 'PHP', 'upload/7a71c432da.png', 64200, 'png', NULL, 1, 3, '11.99', 0, 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994.'),
(30, 'React Native', 'upload/ecab34e253.jpg', 64955, 'jpg', NULL, 2, 2, '11.99', 0, 'React Native is an open-source UI software framework created by Meta Platforms, Inc. It is used to develop applications for Android, Android TV, iOS, macOS, tvOS, Web, Windows and UWP by enabling developers to use the React framework along with native platform capabilities.'),
(31, 'Bootstrap', 'upload/38f08b0ef8.jpg', 19862, 'jpg', NULL, 4, 2, '7.99', 1, 'Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components.'),
(33, 'Python', 'upload/952c9eea67.jpg', 39054, 'jpg', NULL, 4, 1, '13.99', 1, 'Python is an interpreted high-level general-purpose programming language. Its design philosophy emphasizes code readability with its use of significant indentation. Its language constructs as well as its object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.'),
(53, 'WordPress', 'upload/6317f81eaa.jpg', 33401, 'jpg', NULL, 4, 4, '9.99', 1, 'WordPress (WP, WordPress.org) is a free and open-source content management system (CMS) written in PHP and paired with a MySQL or MariaDB database. Features include a plugin architecture and a template system, referred to within WordPress as Themes. WordPress was originally created as a blog-publishing system but has evolved to support other web content types including more traditional mailing lists and forums, media galleries, membership sites, learning management systems (LMS) and online stores. One of the most popular content management system solutions in use, WordPress is used by 42.8% of the top 10 million websites as of October 2021.'),
(61, 'MEVN', 'upload/75ea2713a9.jpg', 47436, 'jpg', NULL, 1, 6, '14.99', 0, 'The acronym MEVN stands for MongoDB, Express.js, VueJS, Node.js.\r\n\r\nMEVN stack is the open-source JavaScript software stack that has emerged as a new and evolving way to build powerful and dynamic web applications. Its software components can be used to effectively design frontend and backend development and improve the functionality of your website or app.'),
(62, 'Typescript', 'upload/d084829926.png', 139360, 'png', NULL, 3, 1, '11.99', 1, 'TypeScript is a programming language developed and maintained by Microsoft. It is a strict syntactical superset of JavaScript and adds optional static typing to the language. TypeScript is designed for the development of large applications and transcompiles to JavaScript. As TypeScript is a superset of JavaScript, existing JavaScript programs are also valid TypeScript programs.'),
(63, 'SQL', 'upload/212067dcc9.png', 77377, 'png', NULL, 2, 3, '9.99', 1, 'S-Q-L, &quot;sequel&quot;; Structured Query Language) is a domain-specific language used in programming and designed for managing data held in a relational database management system (RDBMS), or for stream processing in a relational data stream management system (RDSMS). It is particularly useful in handling structured data, i.e. data incorporating relations among entities and variables. SQL offers two main advantages over older read–write APIs such as ISAM or VSAM. Firstly, it introduced the concept of accessing many records with one single command. Secondly, it eliminates the need to specify how to reach a record, e.g. with or without an index.'),
(64, 'C#', 'upload/0d38f11118.jpg', 103095, 'jpg', NULL, 2, 1, '13.99', 1, 'C# is a general-purpose, multi-paradigm programming language. C# encompasses static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines.\r\nC# was designed by Anders Hejlsberg from Microsoft in 2000 and was later approved as an international standard by Ecma (ECMA-334) in 2002 and ISO (ISO/IEC 23270) in 2003. Microsoft introduced C# along with .NET Framework and Visual Studio, both of which were closed-source.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `clientId` int(11) NOT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `addressId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`clientId`, `customerName`, `email`, `phone`, `password`, `addressId`) VALUES
(13, 'cassini junior', 'finagof937@pactdog.com', 758071040, '202cb962ac59075b964b07152d234b70', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocode`
--

CREATE TABLE `tbl_promocode` (
  `promoId` int(11) NOT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tutor`
--

CREATE TABLE `tbl_tutor` (
  `tutorId` int(11) NOT NULL,
  `tutorName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tutor`
--

INSERT INTO `tbl_tutor` (`tutorId`, `tutorName`) VALUES
(1, 'Colt Steele'),
(2, 'Maximilian Schwarzmüller'),
(3, 'Jonas Schmedtmann'),
(4, 'Angela Yu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contain`
--
ALTER TABLE `contain`
  ADD PRIMARY KEY (`cartId`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`clientId`,`addressId`),
  ADD KEY `addressId` (`addressId`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`addressId`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`courseId`),
  ADD KEY `promoId` (`promoId`),
  ADD KEY `tutorId` (`tutorId`),
  ADD KEY `categoryId` (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`clientId`),
  ADD KEY `addressId` (`addressId`);

--
-- Indexes for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  ADD PRIMARY KEY (`promoId`);

--
-- Indexes for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  ADD PRIMARY KEY (`tutorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `own`
--
ALTER TABLE `own`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `addressId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_promocode`
--
ALTER TABLE `tbl_promocode`
  MODIFY `promoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tutor`
--
ALTER TABLE `tbl_tutor`
  MODIFY `tutorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contain`
--
ALTER TABLE `contain`
  ADD CONSTRAINT `contain_ibfk_1` FOREIGN KEY (`cartId`) REFERENCES `tbl_cart` (`cartId`),
  ADD CONSTRAINT `contain_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `tbl_course` (`courseId`);

--
-- Constraints for table `own`
--
ALTER TABLE `own`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `tbl_customer` (`clientId`),
  ADD CONSTRAINT `own_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `tbl_address` (`addressId`);

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `tbl_course` (`courseId`);

--
-- Constraints for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD CONSTRAINT `tbl_course_ibfk_1` FOREIGN KEY (`promoId`) REFERENCES `tbl_promocode` (`promoId`),
  ADD CONSTRAINT `tbl_course_ibfk_2` FOREIGN KEY (`tutorId`) REFERENCES `tbl_tutor` (`tutorId`),
  ADD CONSTRAINT `tbl_course_ibfk_3` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
