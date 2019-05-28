-- phpMyAdmin SQL Dump
-- version 3.3.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2017 at 12:07 PM
-- Server version: 5.1.49
-- PHP Version: 5.3.28

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


--
-- Database: `sandvigbookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookauthors`
--

DROP TABLE IF EXISTS `bookauthors`;
CREATE TABLE `bookauthors` (
  `AuthorID` int(11) NOT NULL AUTO_INCREMENT,
  `nameF` varchar(15) NOT NULL,
  `nameL` varchar(15) NOT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `bookauthors`
--

INSERT INTO `bookauthors` (`AuthorID`, `nameF`, `nameL`) VALUES
(1, 'Jason', 'Gilmore'),
(2, 'David', 'Sklar'),
(3, 'Luke', 'Welling'),
(4, 'Laura', 'Thomson'),
(5, 'Steve', 'Krug'),
(6, 'Ben', 'Forta'),
(8, 'Jakob', 'Nielsen'),
(9, 'Hoa', 'Loranger'),
(11, 'Alan', 'Beaulieu'),
(12, 'Jesse', 'Liberty'),
(13, 'Dan', 'Hurwitz'),
(14, 'Michele E.', 'Davis'),
(15, 'John A.', 'Phillips'),
(16, 'Jeffrey', 'Friedl'),
(17, 'Michael J.', 'Hernandez'),
(18, 'John L.', 'Viescas'),
(22, 'Stephan', 'Walther'),
(23, 'Andrew', 'Watt'),
(25, 'Kevin', 'Tatroe'),
(26, 'Rasmus', 'Lerdorf'),
(27, 'Peter', 'MacIntyre'),
(29, 'Matthew', 'MacDonald'),
(30, 'Julian', 'Templeman'),
(32, 'Hugh E.', 'Williams'),
(33, 'David', 'Lane'),
(34, 'Robin', 'Nixon'),
(35, 'Ethan', 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `bookauthorsbooks`
--

DROP TABLE IF EXISTS `bookauthorsbooks`;
CREATE TABLE `bookauthorsbooks` (
  `ISBN` varchar(15) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  PRIMARY KEY (`ISBN`,`AuthorID`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookauthorsbooks`
--

INSERT INTO `bookauthorsbooks` (`ISBN`, `AuthorID`) VALUES
('1590595521', 1),
('0596005601', 2),
('0672326728', 3),
('0672326728', 4),
('0321344758', 5),
('0672325675', 6),
('0321350316', 8),
('0321350316', 9),
('0596007272', 11),
('059600916X', 12),
('059600916X', 13),
('0596101104', 14),
('0596101104', 15),
('0596528124', 16),
('0201433362', 17),
('0201433362', 18),
('0672328232', 22),
('0764574892', 23),
('0596006810', 25),
('0596006810', 26),
('0596006810', 27),
('1590595726', 29),
('1590595726', 30),
('0596005431', 33),
('007184158X', 34),
('1491918667', 34),
('1491914912', 35);

-- --------------------------------------------------------

--
-- Table structure for table `bookcategories`
--

DROP TABLE IF EXISTS `bookcategories`;
CREATE TABLE `bookcategories` (
  `CategoryID` int(4) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(20) NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bookcategories`
--

INSERT INTO `bookcategories` (`CategoryID`, `CategoryName`) VALUES
(1, 'PHP'),
(2, 'MySQL'),
(3, 'Web Usability'),
(4, 'SQL'),
(5, 'ASP.NET'),
(6, 'Regular Expressions'),
(8, 'Morse Code'),
(9, 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `bookcategoriesbooks`
--

DROP TABLE IF EXISTS `bookcategoriesbooks`;
CREATE TABLE `bookcategoriesbooks` (
  `CategoryID` int(4) NOT NULL,
  `ISBN` varchar(15) NOT NULL,
  PRIMARY KEY (`CategoryID`,`ISBN`),
  KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookcategoriesbooks`
--

INSERT INTO `bookcategoriesbooks` (`CategoryID`, `ISBN`) VALUES
(9, '007184158X'),
(4, '0201433362'),
(3, '0321344758'),
(3, '0321350316'),
(1, '0596005431'),
(2, '0596005431'),
(1, '0596005601'),
(1, '0596006810'),
(4, '0596007272'),
(5, '059600916X'),
(1, '0596101104'),
(2, '0596101104'),
(6, '0596528124'),
(4, '0672325675'),
(1, '0672326728'),
(2, '0672326728'),
(5, '0672328232'),
(6, '0764574892'),
(9, '1491914912'),
(1, '1491918667'),
(2, '1491918667'),
(4, '1491918667'),
(1, '1590595521'),
(2, '1590595521'),
(5, '1590595726');

-- --------------------------------------------------------

--
-- Table structure for table `bookdescriptions`
--

DROP TABLE IF EXISTS `bookdescriptions`;
CREATE TABLE `bookdescriptions` (
  `ISBN` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(8000) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `pubdate` varchar(25) NOT NULL,
  `edition` varchar(5) NOT NULL,
  `pages` varchar(5) NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `strTitle` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdescriptions`
--

INSERT INTO `bookdescriptions` (`ISBN`, `title`, `description`, `price`, `publisher`, `pubdate`, `edition`, `pages`) VALUES
('007184158X', 'JavaScript: 20 Lessons to Successful Web Development', '<p>Based on the author''s successful online courses, this complete, integrated learning tool provides easy-to-follow lessons that feature clear explanations, sample code and exercises, and video tutorials. Each lesson is designed to take you less than an hour to complete.</p>  <I>JavaScript: 20 Lessons to Successful Web Development</I> covers the basics, including variables, operators, arrays, objects, and values. Next, you''ll learn how to use conditional statements, work with multidimensional arrays, manipulate objects, handle errors, manage cookies, use Ajax, and much more. Together, the book and almost five hours of video training make learning JavaScript easier than ever!</p>  <p>Ready-to-use code at www.mhprofessional.com</p>', '37.99', 'New Riders Press', 'January 15, 2015', '1', '256'),
('0201433362', 'SQL Queries for Mere Mortals: A Hands-On Guide to Data Manipulation in SQL ', '<P> <I>SQL Queries for Mere Mortals</I> <I>&reg;</I> has earned worldwide praise as the clearest, simplest tutorial on writing effective SQL queries. The authors have updated this hands-on classic to reflect new SQL standards and database applications and teach valuable new techniques.</P>  <P style="MARGIN: 0px">&nbsp;</P>  <P style="MARGIN: 0px">Step by step, John L. Viescas and Michael J. Hernandez guide you through creating reliable queries for virtually any modern SQL-based database. They demystify all aspects of SQL query writing, from simple data selection and filtering to joining multiple tables and modifying sets of data.</P>  <P style="MARGIN: 0px">&nbsp;</P>  <P style="MARGIN: 0px">Three brand-new chapters teach you how to solve a wide range of challenging SQL problems. You&rsquo;ll learn how to write queries that apply multiple complex conditions on one table, perform sophisticated logical evaluations, and think &ldquo;outside the box&rdquo; using unlinked tables.</P>  <P style="MARGIN: 0px">&nbsp;</P>  <P style="MARGIN: 0px">Coverage includes</P>  <P style="MARGIN: 0px">-- Getting started: understanding what relational databases are, and ensuring that your database structures are sound</P>  <P style="MARGIN: 0px">-- SQL basics: using SELECT statements, creating expressions, sorting information with ORDER BY, and filtering data using WHERE</P>  <P style="MARGIN: 0px">-- Summarizing and grouping data with GROUP BY and HAVING clauses</P>  <P style="MARGIN: 0px">-- Drawing data from multiple tables: using INNER JOIN, OUTER JOIN, and UNION operators, and working with subqueries</P>  <P style="MARGIN: 0px">-- Modifying data sets with UPDATE, INSERT, and DELETE statements Advanced queries: complex NOT and AND, conditions, if-then-else using CASE, unlinked tables, driver tables, and more</P>  <P style="MARGIN: 0px">&nbsp;</P>  <P style="MARGIN: 0px">Practice all you want with downloadable sample databases for today&rsquo;s versions of Microsoft Office Access, Microsoft SQL Server, and the open source MySQL database. Whether you&rsquo;re a DBA, developer, user, or student, there&rsquo;s no better way to master SQL.</P>  ', '26.94', 'Addison-Wesley Professional', 'June 21, 2014', '3', '792'),
('0321344758', 'Don''t Make Me Think', '<p>Usability design is one of the most important--yet often least attractive--tasks for a Web developer. In <em>Don''t Make Me Think</em>, author Steve Krug lightens up the subject with good humor and excellent, to-the-point examples.</p><p> The title of the book is its chief personal design premise. All of the  tips, techniques, and examples presented revolve around users being  able to surf merrily through a well-designed site with minimal  cognitive strain. Readers will quickly come to agree with many of the  book''s assumptions, such as &quot;We don''t read pages--we scan them&quot; and &quot;We  don''t figure out how things work--we muddle through.&quot; Coming to grips  with such hard facts sets the stage for Web design that then produces  topnotch sites.</p><p> Using an attractive mix of full-color screen  shots, cute cartoons and diagrams, and informative sidebars, the book  keeps your attention and drives home some crucial points. Much of the  content is devoted to proper use of conventions and content layout, and  the &quot;before and after&quot; examples are superb. Topics such as the wise use  of rollovers and usability testing are covered using a consistently  practical approach.</p><p> This is the type of book you can blow  through in a couple of evenings. But despite its conciseness, it will  give you an expert''s ability to judge Web design. You''ll never form a  first impression of a site in the same way again. <em>--Stephen W. Plain</em></p><p> <strong>Topics covered:</strong> </p><ul>  <li>User patterns </li>  <li>Designing for scanning </li>  <li>Wise use of copy </li>  <li>Navigation design </li>  <li>Home page layout </li>  <li>Usability testing</li></ul>', '35.00', 'New Riders Press', 'Aug. 18, 2005', '2', '224'),
('0321350316', 'Prioritizing Web Usability', '<p>In 2000, Jakob Nielsen, the world''s leading expert on Web usability, published a book that changed how people think about the Web - Designing Web Usability (New Riders). Many applauded. A few jeered. But everyone listened. The best-selling usability guru is back and has revisited his classic guide, joined forces with Web usability consultant Hoa Loranger, and created an updated companion book that covers the essential changes to the Web and usability today. Prioritizing Web Usability is the guide for anyone who wants to take their Web site(s) to next level and make usability a priority! Through the authors'' wisdom, experience, and hundreds of real-world user tests and contemporary Web site critiques, you''ll learn about site design, user experience and usability testing, navigation and search capabilities, old guidelines and prioritizing usability issues, page design and layout, content design, and more!</p>', '50.00', 'New Riders Press', 'April 20, 2006', '1', '432'),
('0596005431', 'Web Database Applications with PHP & MySQL', '<p> There are many reasons for serving up dynamic content from a web  site: to offer an online shopping site, create customized information  pages for users, or just manage a large volume of content through a  database. Anyone with a modest knowledge of HTML and web site  management can learn to create dynamic content through the PHP  programming language and the MySQL database. This book gives you the  background and tools to do the job safely and reliably. <em>Web Database Applications with PHP and MySQL</em>,  Second Edition thoroughly reflects the needs of real-world  applications. It goes into detail on such practical issues as  validating input (do you know what a proper credit card number looks  like?), logging in users, and using templates to give your dynamic web  pages a standard look. But this book goes even further. It shows how  JavaScript and PHP can be used in tandem to make a user''s experience  faster and more pleasant. It shows the correct way to handle errors in  user input so that a site looks professional. It introduces the vast  collection of powerful tools available in the PEAR repository and shows  how to use some of the most popular tools. Even while it serves as an  introduction to new programmers, the book does not omit critical tasks  that web sites require. For instance, every site that allows updates  must handle the possibility of multiple users accessing data at the  same time. This book explains how to solve the problem in detail with  locking. Through a sophisticated sample application--Hugh and Dave''s  Wine Store--all the important techniques of dynamic content are  introduced. Good design is emphasized, such as dividing logic from  presentation. The book introduces PHP 5 and MySQL 4.1 features, while  providing techniques that can be used on older versions of the software  that are still in widespread use. This new edition has been redesigned  around the rich offerings of PEAR. Several of these, including the  Template package and the database-independent query API, are fully  integrated into examples and thoroughly described in the text. Topics  include:</p><ul>  <li>Installation and configuration of Apache, MySQL, and PHP on Unix&reg;, Windows&reg;, and Mac OS&reg; X systems</li>  <li>Introductions to PHP, SQL, and MySQL administration</li>  <li>Session management, including the use of a custom database for improved efficiency</li>  <li>User input validation, security, and authentication</li>  <li>The PEAR repository, plus details on the use of PEAR DB and Template classes</li>  <li>Production of PDF reports</li></ul>', '44.95', 'O''Reilly Media', 'May 16, 2004', '2', '680'),
('0596005601', 'Learning PHP 5', '<p>PHP has gained a following among non-technical web designers who need  to add interactive aspects to their sites. Offering a gentle learning  curve, PHP is an accessible yet powerful language for creating dynamic  web pages. As its popularity has grown, PHP''s basic feature set has  become increasingly more sophisticated. Now PHP 5 boasts advanced  features--such as new object-oriented capabilities and support for XML  and Web Services--that will please even the most experienced web  professionals while still remaining user-friendly enough for those with  a lower tolerance for technical jargon. If you''ve wanted to try your  hand at PHP but haven''t known where to start, then <em>Learning PHP 5</em> is the book you need. If you''ve wanted to try your hand at PHP but haven''t known where to start, then <em>Learning PHP 5</em> is the book you need. With attention to both PHP 4 and the new PHP  version 5, it provides everything from a explanation of how PHP works  with your web server and web browser to the ins and outs of working  with databases and HTML forms. Written by the co-author of the popular <em>PHP Cookbook</em>, this book is for intelligent (but not necessarily highly-technical) readers. <em>Learning PHP 5</em> guides you through every aspect of the language you''ll need to master  for professional web programming results. This book provides a hands-on  learning experience complete with exercises to make sure the lessons  stick. <em>Learning PHP 5</em> covers the following topics, and more:</p><ul>  <li>How PHP works with your web browser and web server</li>  <li>PHP language basics, including data, variables, logic and looping</li>  <li>Working with arrays and functions</li>  <li>Making web forms</li>  <li>Working with databases like MySQL</li>  <li>Remembering users with sessions</li>  <li>Parsing and generating XML</li>  <li>Debugging</li></ul><p>Written by David Sklar, coauthor of the <em>PHP Cookbook</em> and an instructor in PHP, this book offers the ideal classroom learning  experience whether you''re in a classroom or on your own. From learning  how to install PHP to designing database-backed web applications, <em>Learning PHP 5</em> will guide you through every aspect of the language you''ll need to master to achieve professional web programming results.</p>', '29.95', 'O''Reilly Media', 'July 2004', '1', '348'),
('0596006810', 'Programming PHP', '<p><em>Programming PHP</em>, 2nd Edition, is the authoritative guide to  PHP 5 and is filled with the unique knowledge of the creator of PHP  (Rasmus Lerdorf) and other PHP experts. When it comes to creating  websites, the PHP scripting language is truly a red-hot property. In  fact, PHP is currently used on more than 19 million websites,  surpassing Microsoft''s ASP .NET technology in popularity. Programmers  love its flexibility and speed; designers love its accessibility and  convenience. </p><p> As the industry standard book on PHP, all of the  essentials are covered in a clear and concise manner. Language syntax  and programming techniques are coupled with numerous examples that  illustrate both correct usage and common idioms. With style tips and  practical programming advice, this book will help you become not just a  PHP programmer, but a <em>good</em> PHP programmer. <em>Programming PHP, Second Edition</em> covers everything you need to know to create effective web applications with PHP. Contents include:</p><ul>  <li>Detailed information on the basics of the PHP language, including data types, variables, operators, and flow control statements</li>  <li>Chapters outlining the basics of functions, strings, arrays, and objects</li>  <li>Coverage of common PHP web application techniques, such as form processing and validation, session tracking, and cookies</li>  <li>Material  on interacting with relational databases, such as MySQL and Oracle,  using the database-independent PEAR DB library and the new PDO Library</li>  <li>Chapters that show you how to generate dynamic images, create PDF files, and parse XML files with PHP</li>  <li>Advanced  topics, such as creating secure scripts, error handling, performance  tuning, and writing your own C language extensions to PHP</li>  <li>A handy quick reference to all the core functions in PHP and all the standard extensions that ship with PHP</li></ul>', '26.39', 'O''Reilly Media', 'April 1, 2006', '2', '521'),
('0596007272', 'Learning SQL', '<p>SQL (Structured Query Language) is a standard programming language for  generating, manipulating, and retrieving information from a relational  database. If you''re working with a relational database--whether you''re  writing applications, performing administrative tasks, or generating  reports--you need to know how to interact with your data. Even if you  are using a tool that generates SQL for you, such as a reporting tool,  there may still be cases where you need to bypass the automatic  generation feature and write your own SQL statements.</p><p> To help you attain this fundamental SQL knowledge, look to <em>Learning SQL</em>, an introductory guide to SQL, designed primarily for developers just cutting their teeth on the language. </p><p> <em>Learning SQL</em> moves you quickly through the basics and then on to some of the more  commonly used advanced features. Among the topics discussed: </p><ul>  <li>The history of the computerized database </li>  <li>SQL  Data Statements--those used to create, manipulate, and retrieve data  stored in your database; example statements include select, update,  insert, and delete </li>  <li>SQL Schema Statements--those used to create database objects, such as tables, indexes, and constraints </li>  <li>How data sets can interact with queries </li>  <li>The importance of subqueries </li>  <li>Data conversion and manipulation via SQL''s built-in functions </li>  <li>How conditional logic can be used in Data Statements</li></ul><p>Best of all, <em>Learning SQL</em> talks to you in a real-world manner, discussing various platform  differences that you''re likely to encounter and offering a series of  chapter exercises that walk you through the learning process. Whenever  possible, the book sticks to the features included in the ANSI SQL  standards. This means you''ll be able to apply what you learn to any of  several different databases; the book covers MySQL, Microsoft SQL  Server, and Oracle Database, but the features and syntax should apply  just as well (perhaps with some tweaking) to IBM DB2, Sybase Adaptive  Server, and PostgreSQL.</p><p> Put the power and flexibility of SQL to work. With <em>Learning SQL</em> you can master this important skill and know that the SQL statements you write are indeed correct.</p>', '34.95', 'O''Reilly Media', 'August 22, 2005', '1', '289'),
('059600916X', 'Programming ASP.NET', '<p>Suitable for most any programmer who wants to master ASP.NET with an eye toward real-world development, <em>Programming ASP.NET</em> is an excellent resource that mixes good coverage of APIs with actual  programming techniques and advice using Visual Basic .NET and C#. The  combination places it in the forefront of currently available titles on  ASP.NET.</p><p>Written in part by veteran computer author Jesse Liberty,  this book offers an excellent mix of coverage of important ASP.NET  features that you will absolutely need to use for real-world  programming. Readers with previous ASP experience will appreciate early  sections that compare an older ASP sample with the new ASP.NET to  highlight what''s new and improved, with good explanation of the ASP.NET  event model. The pace of this book is just excellent. The authors first  move through the essentials, like basic ASP Web controls and data  binding, before delving into data-driven applications using the  (slightly complicated) ASP.NET database APIs. It also helps that the  authors let you use Notepad (or another text editor) to create your  ASP.NET programs first. (Later, they cover the details of Visual Studio  .NET, pointing out how this tool can sometimes make it difficult to see  where your code is generated.) There''s also coverage of debugging and  tracing techniques.</p><p>Standout sections on the calendar, <em>Repeater</em>, <em>DataList</em>, and <em>DataGrid</em> controls (all presented in good detail) will help you master these  important controls. Coverage of techniques and support for validating  user input in Web pages will also help you use these essential features.</p><p>The  author''s well-measured tutorial on Web services (much touted by  Microsoft) is as good as any. Their demos (using a well-traveled  example of a stock ticker server) will show you what all the fuss is  about. They cut through the hype here and manage to show why Web  services are a potentially better way toward distributed computing.  Later sections look at deployment, configuration, and performance (as  well as caching) options that you''ll need to deploy and run your  ASP.NET programs successfully. Coverage of security options in .NET  rounds out the tour of what you''ll need to create real applications.</p><p>Illustrated throughout with samples from VB .NET and C#, <em>Programming ASP.NET</em> is a worthy addition to the O''Reilly lineup and one of the best  available titles for learning ASP.NET. The authors have achieved an  excellent balance of practical, hands-on examples and essential  programming techniques with the most important APIs and features, all  without getting bogged down in the richness and complexity of .NET  itself. <em>--Richard Dragan</em> </p><p> <strong>Topics covered:</strong> Introduction to the .NET platform and ASP.NET; basic programs in HTML;  ASP and ASP.NET compared; events in ASP.NET (application, session,  page, and control events); HTML and ASP controls compared; basic ASP  controls APIs (including in-depth coverage of calendar support); code  behind forms; using the Visual Studio .NET IDE; tracing, debugging, and  error handling; validation controls in ASP.NET (including built-in and  custom validators, plus regular expression support); basic data-binding  techniques; list and <em>DataGrid</em> controls; ADO.NET tutorial (basic APIs and programming techniques); calling stored procedures; updating database records; <em>Repeater</em> and <em>DataList</em> controls used with ADO.NET; custom ASP.NET controls (including derived,  composite, and full custom controls); overview of Web services  (including SOAP, WSDL, and other standards); creating and consuming a  sample Web service for a stock ticker; ASP.NET caching techniques  explained (including fragment and object caching); security options in  ASP.NET for authentication, authorization, and impersonation;  configuration and deployment options in ASP.NET (including XCOPY  deployment); and an appendix with a quick tutorial on database design. </p>', '49.95', 'O''Reilly Media', 'October 1, 2005', '3', '930'),
('0596101104', 'Learning PHP and MySQL', '<p> The PHP scripting language and MySQL open source database are quite  effective independently, but together they make a simply unbeatable  team. When working hand-in-hand, they serve as the standard for the  rapid development of dynamic, database-driven websites. This  combination is so popular, in fact, that it''s attracting many  programming newbies who come from a web or graphic design background  and whose first language is HTML. If you fall into this ever-expanding  category, then this book is for you.</p>', '29.99', 'O''Reilly Media', 'une 1, 2006', '1', '359'),
('0596528124', 'Mastering Regular Expressions  ', '<p>Regular expressions are an extremely powerful tool for manipulating  text and data. They are now standard features in a wide range of  languages and popular tools, including Perl, Python, Ruby, Java, VB.NET  and C# (and any language using the .NET Framework), PHP, and MySQL.</p><p> If you don''t use regular expressions yet, you will discover in this  book a whole new world of mastery over your data. If you already use  them, you''ll appreciate this book''s unprecedented detail and breadth of  coverage. If you think you know all you need to know about regular  expressions, this book is a stunning eye-opener.</p><p> As this book  shows, a command of regular expressions is an invaluable skill. Regular  expressions allow you to code complex and subtle text processing that  you never imagined could be automated. Regular expressions can save you  time and aggravation. They can be used to craft elegant solutions to a  wide range of problems. Once you''ve mastered regular expressions,  they''ll become an invaluable part of your toolkit. You will wonder how  you ever got by without them.</p><p> Yet despite their wide  availability, flexibility, and unparalleled power, regular expressions  are frequently underutilized. Yet what is power in the hands of an  expert can be fraught with peril for the unwary. <em>Mastering Regular Expressions</em> will help you navigate the minefield to becoming an expert and help you optimize your use of regular expressions. </p><p> <em>Mastering Regular Expressions</em>,  Third Edition, now includes a full chapter devoted to PHP and its  powerful and expressive suite of regular expression functions, in  addition to enhanced PHP coverage in the central &quot;core&quot; chapters.  Furthermore, this edition has been updated throughout to reflect  advances in other languages, including expanded in-depth coverage of  Sun''s <em>java.util.regex</em> package, which has emerged as the standard Java regex implementation.Topics include:</p><ul>  <li>A comparison of features among different versions of many languages and tools</li>  <li>How the regular expression engine works</li>  <li>Optimization (major savings available here!)</li>  <li>Matching just what you want, but not what you don''t want</li>  <li>Sections and chapters on individual languages</li></ul><p> Written in the lucid, entertaining tone that makes a complex, dry topic  become crystal-clear to programmers, and sprinkled with solutions to  complex real-world problems, <em>Mastering Regular Expressions</em>, Third Edition offers a wealth information that you can put to immediate use.</p>', '44.99', 'O''Reilly Media', 'August 8, 2006', '3', '515'),
('0672325675', 'Teach Yourself SQL in 10 Minutes', '<p><em>Sams Teach Yourself SQL in 10 Minutes</em> has established itself as  the gold standard for introductory SQL books, offering a fast-paced  accessible tutorial to the major themes and techniques involved in  applying the SQL language. Forta''s examples are clear and his writing  style is crisp and concise. As with earlier editions, this revision  includes coverage of current versions of all major commercial SQL  platforms. New this time around is coverage of MySQL, and PostgreSQL.  All examples have been tested against each SQL platform, with  incompatibilities or platform distinctives called out and explained.</p>', '14.99', 'Sams', 'April 7, 2004', '3', '256'),
('0672326728', 'PHP & MySQL Web Development', '<p>The PHP server-side scripting language and the MySQL database  management system (DBMS) make a potent pair. Both are open-source  products--free of charge for most purposes--remarkably strong, and  capable of handling all but the most enormous transaction loads. Both  are supported by large, skilled, and enthusiastic communities of  architects, programmers, and designers. <em>PHP and MySQL Web Development</em> introduces readers (who are assumed to have little or no experience  with the title subjects) to PHP and MySQL for the purpose of creating  dynamic Internet sites. It teaches the same skills as introductory  Active Server Pages (ASP) and ColdFusion books--technologies that  address the same niche.</p><p> Authors Luke Welling and Laura Thomson''s  technique aims to get readers going on their own projects as soon as  possible. They present easily digestible sections on specific technical  processes--&quot;Accessing array contents&quot; and &quot;Using encryption with PHP&quot;  are two examples. Each section centers on a sample program that strips  the task at hand down to its essentials, enabling the reader to fit the  process into his or her own solutions as required. Tables that list  options and other nuggets of reference material appear as well, but the  many examples and the authors'' commentary on them take center stage.</p><p> For reference material on MySQL, have a look at Paul DuBois''s <em><a href="http://www.amazon.com/exec/obidos/ASIN/0735709211/$%7B0%7D">MySQL</a></em>. On the PHP side, <em><a href="http://www.amazon.com/exec/obidos/ASIN/0735709971/$%7B0%7D">Web Application Development with PHP 4.0</a></em> is excellent. <em>--David Wall</em></p><p> <strong>Topics covered:</strong> </p><ul>  <li>The MySQL database server (for both Unix and Windows) </li>  <li>Accessing MySQL databases through PHP scripting (the letters don''t really stand for anything) </li>  <li>Database creation and modification </li>  <li>PHP tricks in order of increasing complexity--everything from basic SQL queries to secure transactions for commerce </li>  <li>Authentication </li>  <li>Network connectivity </li>  <li>Session management </li>  <li>Content customization</li></ul>', '32.99', 'Sams', 'September 29, 2004', '3', '984'),
('0672328232', 'ASP.NET 2.0 Unleashed', '<p><em>ASP.NET 2.0 Unleashed&nbsp;</em>is a revision of the best-selling <em>ASP.NET Unleashed, </em>by Microsoft Software Legend <strong>Stephen Walther</strong>. It<strong>&nbsp;</strong>covers  virtually all features of ASP.NET 2.0&nbsp;including more than 50 new  controls, personalization, master pages, and web parts. All code  samples are presented in VB and C#. Throughout the more than&nbsp;2,000  pages, you will be shown how to develop state-of-the-art Web  applications using Microsoft''s latest development tools. This resource  is guaranteed to be used as a&nbsp;reference guide&nbsp;over and over! </p>', '59.99', 'Sams', 'June 6, 2006', '1', '1992'),
('0764574892', 'Beginning Regular Expressions', '<p>Regular expressions help users and developers to find and manipulate  text more effectively and efficiently. In addition, regular expressions  are supported by many scripting languages, programming languages, and  databases. This example-rich tutorial helps debunk the traditional  reputation of regular expressions as being cryptic. It explains the  various parts of a regular expression pattern, what those parts mean,  how to use them, and common pitfalls to avoid when writing regular  expressions. With chapters on using regular expressions with popular  Windows platform software including databases, cross platform scripting  languages, and programming languages, you''ll learn to make effective  use of the power provided by regular expressions once you fully  comprehend their strengths and potential. What you will learn from this  book -Fundamental concepts of regular expressions and how to write them  -How to break down a text manipulation problem into component parts so  you can then logically construct a regular expression pattern -How to  use regular expressions in several scripting and programming languages  and software packages -The variations that exist among regular  expression dialects -Reusable, real-world working code that can be used  to solve everyday regular expression problems Who this book is for:  This book is for developers who need to manipulate text but are new to  regular expressions. Some basic programming or scripting experience is  useful but not required.</p>', '39.99', 'Wrox', 'February 4, 2005', '1', '768'),
('1491914912', 'Learning JavaScript: JavaScript Essentials for Modern Application Development', '<p>This is an exciting time to learn JavaScript. Now that the latest JavaScript specification&#8212;ECMAScript 6.0 (ES6)&#8212;has been finalized, learning how to develop high-quality applications with this language is easier and more satisfying than ever. This practical book takes programmers (amateurs and pros alike) on a no-nonsense tour of ES6, along with some related tools and techniques.</p><p>Author Ethan Brown (<i>Web Development with Node and Express</i>) not only guides you through simple and straightforward topics (variables, control flow, arrays), but also covers complex concepts such as functional and asynchronous programming. You&#8217;ll learn how to create powerful and responsive web applications on the client, or with Node.js on the server.</p><ul><li>Use ES6 today and transcompile code to portable ES5</li><li>Translate data into a format that JavaScript can use</li><li>Understand the basic usage and mechanics of JavaScript functions</li><li>Explore objects and object-oriented programming</li><li>Tackle new concepts such as iterators, generators, and proxies</li><li>Grasp the complexities of asynchronous programming</li><li>Work with the Document Object Model for browser-based apps</li><li>Learn Node.js fundamentals for developing server-side applications</li></ul>', '30.02', 'O''Reilly Media', 'March 5, 2016', '3', '358'),
('1491918667', ' Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5', '    <p>         This book is for people who wish to learn how to create effective and dynamic websites. This may include webmasters or graphic designers who are already creating static websites but wish to take their skills to the next level, as well as high school and college students, recent graduates, and self-taught individuals. In fact, anyone ready to learn the fundamentals behind the Web 2.0 technology known as Ajax will obtain a thorough grounding in all of these core technologies: PHP, MySQL, JavaScript, CSS, and HTML5, and learn the basics of the jQuery library too.     </p>      <h5>         Assumptions This Book Makes     </h5>      <p>         This book assumes that you have a basic understanding of HTML and can at least put together a simple, static website, but does not assume that you have any prior knowledge of PHP, MySQL, JavaScript, CSS, or HTML5â€”although if you do, your progress through the book will be even quicker.     </p>', '27.86', 'O''Reilly Media', 'December 14, 2014', '4', '812'),
('1590595521', 'Beginning PHP and MySQL 5', '<p> <em>Beginning PHP 5 and MYSQL: From Novice to Professional</em> offers a comprehensive introduction to two of the most popular Web  application building technologies on the planet: the scripting language  PHP and the MySQL database server. This book will not only expose you  to the core aspects of both technologies, but will provide valuable  insight into how they are used in unison to create dynamic data-driven  Web applications.</p><p><em>Beginning PHP 5 and MYSQL</em> explains the  new features of the latest releases of the world&rsquo;s most popular Open  Source Web development technologies: MySQL 4 database server and PHP 5  scripting language. This book explores the benefits, extensive new  features, and advantages of the object-oriented PHP 5, and how it can  be used in conjunction with MySQL 4 to create powerful dynamic Web  sites. </p><p> This is the perfect book for the Web designer,  programmer, hobbyist, or novice that wants to learn how to create  applications with PHP 5 and MySQL 4, and is a great entrance point for  Apress&rsquo;s extensive spectrum of PHP books planned for 2004.</p>', '44.99', 'Apress', 'January 23, 2006', '1', '952'),
('1590595726', 'Beginning ASP.NET 2.0 in C#', '<p><em>Beginning ASP.NET 2.0 in C# 2005: From Novice to Professional</em> steers you through the maze of ASP.NET web programming concepts. You  will learn language and theory simultaneously, mastering the core  techniques necessary to develop good coding practices and enhance your  skill set.</p><p>This book provides thorough coverage of ASP.NET,  guiding you from beginning to advanced techniques, such as querying  databases from within a web page and performance-tuning your site.  You''ll find tips for best practices and comprehensive discussions of  key database and XML principles.</p><p>The book also emphasizes the  invaluable coding techniques of object orientation and code-behind,  which will enable you to build real-world websites instead of just  scraping by with simplified coding practices. By the time you finish  this book, you will have mastered the core techniques essential to  professional ASP.NET developers.</p>', '49.99', 'Apress', 'January 27, 2006', '1', '1184');

