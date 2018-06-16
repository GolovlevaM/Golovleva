USE test;

DROP TABLE IF EXISTS book;

CREATE TABLE book (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  author varchar(100) NOT NULL,
  isbn varchar(20) NOT NULL,
  printYear INT(11) NOT NULL,
  readAlready TINYINT(1) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Cracking the Coding Interview: 6th Edition","I am not a recruiter. I am a software engineer. And as such, I know what it's like to be asked to whip up brilliant algorithms on the spot and then write flawless code on a whiteboard.", "Laakmann McDowell Gayle","978-0984782857", 2008, 0);

/*2*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Pro Spring 5","Master Spring basics and core topics, and share the authors’ insights and real–world experiences with remoting, Hibernate, and EJB.", "Cosmina Iuliana","978-1484228074", 2017, 0);

/*3*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Head First Java, 2nd Edition","Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain.", "Sierra Kathy","978-0596009205", 2005, 0);

/*4*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Java: A Beginner's Guide, Sixth Edition","Fully updated for Java Platform, Standard Edition 8 (Java SE 8), Java: A Beginner's Guide, Sixth Edition.", "Schildt Herbert","978-0071809252", 2014, 0);

/*5*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Beginning Programming with Java For Dummies","Beginning Programming with Java For Dummies, 4th Edition is a comprehensive guide to learning one of the most popular programming languages.", "Burd Barry","978-0735619673", 2012, 0);

/*6*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Code Complete: A Practical Handbook of Software Construction, Second Edition","Widely considered one of the best practical guides to programming, Steve McConnell’s original CODE COMPLETE has been helping developers write better software for more than a decade.", "McConnell Steve","978-0735619678", 2004, 0);

/*7*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Head First Design Patterns","At any given moment, someone struggles with the same software design problems you have.", "Freeman Elisabeth","978-0596007126", 2004, 0);

/*8*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Rapid Development","Steve McConnell is recognized as one of the premier authors and voices in the development community.", "McConnell Steve","978-0072850604", 2003, 0);

/*9*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Design Patterns: Elements of Reusable Object-Oriented Software","Design Patterns is a modern classic in the literature of object-oriented development, offering timeless and elegant solutions to common problems in software design.", "Gamma Erich","978-0201633610", 1994, 0);

/*10*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Applied Cryptography: Protocols, Algorithms, and Source Code","Cryptographic techniques have applications far beyond the obvious uses of encoding and decoding information.", "Schneier Bruce","978-0471128458", 1995, 0);

/*11*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Agile Software Development: Principles, Patterns and Practices","Written by a software developer for software developers, this book is a unique collection of the latest software development methods.", "Robert C. Martin","978-0135974445", 2002, 0);

/*12*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Joel on Software","Joel Spolsky is a globally recognized expert on the software development process.", "Spolsky Joel","978-1590593899", 2004, 0);

/*13*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Peopleware: Productive Projects and Teams (2nd Edition)","Demarco and Lister demonstrate that the major issues of software development are human, not technical.", "DeMarco Tom","978-0932633439", 1999, 0);

/*14*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("The Mythical Man-Month, Anniversary Edition (2nd Edition)","To my surprise and delight, The Mythical Man-Month continues to be popular after twenty years.", "P. Brooks Frederick","978-0201835953", 1995, 0);

/*15*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Refactoring: Improving the Design of Existing Code","Your class library works, but could it be better? Refactoring: Improving the Design of Existing Code shows how refactoring can make object-oriented code simpler and easier to maintain.", "Fowler Martin","978-0201485677", 1999, 0);

/*16*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Agile Estimating and Planning","Traditional, deterministic approaches to planning and estimating simply don't cut it on the slippery slopes of today's dynamic, change-driven projects.", "Cohn Mike","978-0131479418", 2005, 0);

/*17*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Writing Effective Use Cases","Alistair Cockburn's Writing Effective Use Cases is an approachable, informative, and very intelligent treatment of an essential topic of software design.", "Cockburn Alistair","978-0201702255", 2000, 0);

/*18*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Object-Oriented Software Construction (2nd Edition)","This is, quite simply, the definitive reference on the most important development in software technology for the last 20 years: object-orientation.", "Meyer Bertrand","978-0136291558", 1997, 0);

/*19*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("User Stories Applied: For Agile Software Development","Thoroughly reviewed and eagerly anticipated by the agile community, User Stories Applied offers a requirements process that saves time, eliminates rework, and leads directly to better software.", "Cohn Mike","978-0321205681",2004, 0);

/*20*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Patterns of Enterprise Application Architecture","The practice of enterprise application development has benefited from the emergence of many new enabling technologies.", "Fowler Martin","978-0321127426", 2002, 0);

/*21*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Mastering Regular Expressions","Regular expressions are an extremely powerful tool for manipulating text and data. They are now standard features in a wide range of languages and popular tools, including Perl, Python, Ruby, Java, VB.NET and C#.", "Friedl Jeffrey","978-0596528126", 2006, 0);

/*22*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("The Pragmatic Programmer: From Journeyman to Master"," Ward Cunningham Straight from the programming trenches, The Pragmatic Programmer cuts through the increasing specialization and technicalities of modern software development to examine the core.", "Hunt Andrew","978-0201616224", 1999, 0);

/*23*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Applying UML and Patterns (3rd Edition)","This book makes learning UML enjoyable and pragmatic by incrementally introducing it as an intuitive language for specifying the artifacts of object analysis and design.", "Larman Craig","978-0131489066", 2004, 0);

/*24*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("Software Security: Building Security In","Beginning where the best-selling book Building Secure Software left off, Software Security teaches you how to put software security into practice.", "McGraw Gary","978-0321356703", 2006, 0);

/*25*/
INSERT INTO book (title, description,author, isbn, printYear, readAlready) VALUE ("The Deadline: A Novel About Project Management","His most recent work is a pair of speculative novels, A Ruby Beam of Light and Airship Nation. Together they make up part of his series Dark World Chronicles.", "DeMarco Tom","978-0932633392", 1997, 0);