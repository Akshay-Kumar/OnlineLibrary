CREATE DATABASE BookDB

USE BookDB

CREATE TABLE [dbo].[TblBook](
	[ISBN] [varchar](10) PRIMARY KEY NOT NULL,
	[bookTitle] [varchar](100) NULL,
	[authorName] [varchar](200) NULL,
	[description] [varchar](500) NULL,
	[publication] [varchar](100) NULL,
	[edition] [int] NULL,
	[category] [varchar](50) NULL,
	[bookURL] [varchar](300) NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[pages] [int] NULL,
	[keywords] [varchar](500) NULL,
	[popularityCount] [int] NULL)
	
CREATE TABLE [dbo].[TblCatalog](
	[bookId] [int] IDENTITY(101,1) PRIMARY KEY   NOT NULL,
	[ISBN] [varchar](10) NULL,
	[status] [varchar](50) NULL)
	
	
ALTER TABLE [dbo].[TblCatalog]
	ADD FOREIGN KEY (ISBN) REFERENCES [dbo].[TblBook](ISBN)


INSERT INTO [dbo].[TblBook] VALUES('0123456789','Let Us C','Yashwant Kanethkar','Book about learning C language from beginning',
'BPB',2012,'Education','http://quest.ksetindia.com/images/LUC8.jpg',250,10,300,'Let,C,C#,Let Us C,yash,yashwant,kanethkar,BPB',0)

INSERT INTO [dbo].[TblBook] VALUES('1234567890','Professional C# 2008','Christian Nagel, Bill Evjen, Jay Glynn',
'Book about learning C# 2008 language for professional','Wrox',2013,'Education','http://www.vibno.com/userfiles/image/Book%20Covers/Professional%20C%23.jpg',3000,4,2000,'C# 2008,C# Professional,Wrox,Nagel,Evjen,Glynn,Watson,Skinner',0)

INSERT INTO [dbo].[TblBook] VALUES('2345678901','Beginning ASP.NET 4.5.1 in C#','Jason N. Gaylord, Christian Wenz, Pranav Rastogi, Todd Miranda, Scott Hanselman',
'Book on ASP.NET language for Nerds','Wrox',2012,'Education','http://cdn.slidesharecdn.com/ss_thumbnails/wrox-beginningaspdotnet-2-0withcsharp-2006-121214215145-phpapp02-thumbnail-4.jpg',250,6,300,'ASP.NET,Wrox,Jason,Gaylord,Wenz,Rastogi,Miranda,Hanselman',0)

INSERT INTO [dbo].[TblBook] VALUES('3456789012','Five Point Someone','Chetan Bhagat',
'What not to do at IIT','Rupa & Co.',2004,'Novel','http://upload.wikimedia.org/wikipedia/en/e/ee/Five_Point_Someone-What_not_to_do_at_IIT.jpg',95,3,210,'Five,Someone,Chetan,Bhagat,Five Point Someone,5 point',0)

INSERT INTO [dbo].[TblBook] VALUES('4567890123','Object Oriented Programming with C++ [4e]','E. Balagurusamy',
'C language for Beginners','Tata McGraw-Hill',2013,'Education','http://www.techbharata.in/cms/sites/default/files/images/DSC03612.JPG',250,8,300,'OOP,OOPs,C++,Balaguruswamy',0)

INSERT INTO [dbo].[TblBook] VALUES('5678901234','Fifty Shades of Grey','E. L. James',
'Romance novel','Vintage Books',2013,'Literature','http://upload.wikimedia.org/wikipedia/en/5/5e/50ShadesofGreyCoverArt.jpg',122,11,170,'Romance,shades,grey,fifty shades,james',0)

INSERT INTO [dbo].[TblBook] VALUES('6789012345','Steve Jobs','Walter Isaacson',
'Most selling Bibliography of Steve Jobs','Simon & Schuster',2013,'Bibliography','http://img85.imageshack.us/img85/6484/7b40c61fca2d36452dbc193.jpg',300,8,400,'steve,jobs,apple,bibliography,bib',0)

INSERT INTO [dbo].[TblBook] VALUES('7890123456','The Abilene Trail','Ralph Compton,Dusty Richards',
'Young orphans Jed and Tim Strange are hounded by a posse for a murder they didnt commit','Highbridge Company',2012,'Fiction','http://www.workman.com/is/pgrow/products/covers/9781565118089.jpg',1320,12,250,'Abilene,Ralph,Compton,Dusty,Richards',0)

INSERT INTO [dbo].[TblBook] VALUES('8901234567','The Buddha and the Terrorist','Satish Kumar',
'Should we talk to terrorists? The story ends with a dramatic trial that speaks to the victims of terrorism','Algonquin Books',2009,'Novel','http://img85.imageshack.us/img85/6484/7b40c61fca2d36452dbc193.jpg',450,6,320,'Buddha,Terrorist,Satish,Algonquin',0)

INSERT INTO [dbo].[TblBook] VALUES('9012345678','It Always Seems Impossible Until Its Done.','Kathryn Petras,Ross Petras','Pursuing a dream is hard work, but the right words delivered at the right time—by people who’ve been there and done that—can give us just the motivation we need.',
'Workman Publishing',2014,'Motivational','http://www.workman.com/is/pgrow/products/covers/9780761179887.jpg',550,7,375,'impossible,kathryn,ross,petras,workman,motivational',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111111','Cracking The Coding Interview: 150 Programming Questions And Solutions 5th Edition ','Gayle Laakmann McDowell',
'The book helps people aspiring to work in the sector by preparing them for the questions that may be asked in the interview.','Pothi.com',2011,'Professional','http://d202m5krfqbpi5.cloudfront.net/books/1348904954l/12544648.jpg',488,6,508,'Gayle,McDowell,coding,Laakmann,programming,interview',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111112','Data Structures and Algorithms Made Easy 2nd Edition','Narasimha Karumanchi',
'Powerful reference guide that covers the subject of Data Structures and Algorithms in detail','CareerMonk Publications',2011,'Computer Science','http://img6a.flixcart.com/image/book/8/1/3/data-structures-and-algorithms-made-easy-data-structure-and-algorithmic-puzzles-400x400-imadgfdhphfsvwfg.jpeg',344,9,429,'C, Data structure,Karumanchi,made easy',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111113','OCA Oracle Database SQL Certified Expert Exam Guide (Exam 1Z0-047) (With CD-ROM) 1st Edition ','Steve O''Hearn',
'It is aimed at serving as a guidebook for the aspirants of the OCA Oracle Database SQL Certification Exam.','Tata McGraw - Hill Education',2010,'Professional','http://d202m5krfqbpi5.cloudfront.net/books/1348128859l/5909323.jpg',559,5,804 ,'Database,oracle,steve,oca,ohearn,certification,expert',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111114','Lean in: Women, Work and the will to Lead ','Sheryl Sandberg',
'It is a book that was written as a result of a TED conference in 2010, which revolved around the discussion that there are very few women in leadership position','WH Allen',2013,'Business and Managemaent','http://d202m5krfqbpi5.cloudfront.net/books/1364250803l/16071764.jpg',315,4,256,'Sandberg,women empowerment,TED,Sheryl,leadership',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111115','The C Programming Language : Ansi C Version 2 Edition ','Brian W. Kernighan, Dennis M. Ritchie',
'The book was written to reflect the standards definition for the C Programming language','PHI Learning',2013,'Computer Science','http://upload.wikimedia.org/wikipedia/commons/thumb/9/95/The_C_Programming_Language,_First_Edition_Cover_(2).svg/1000px-The_C_Programming_Language,_First_Edition_Cover_(2).svg.png',142,6,284,'Dennis,C,ansi c,ritchie,Kernighan,k&r',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111116','.NET Interview Questions 6th Edition ','Shivprasad Koirala',
'It enables project leads and company seniors to gain a thorough understanding of important project management interview concepts.','BPB Publication',2011,'Professional','http://bpbonline.com/images/product/books/c6ed210f7d65b3bfdaee77eed4c42191.jpg',197,3,250,'.NET,Shivprasad,interview,koirala,bpb',0)

INSERT INTO [dbo].[TblBook] VALUES('1111111117','Head First SQL 1st Edition ','Lynn Beighley',
'It is a one-of-its-kind guide to SQL, the leading programming language used in data management systems.','O''Reilly',2011,'Professional','http://ebookcube.com/wp-content/uploads/2013/09/Head-First-SQL-ebookcube.com-001.jpg',500,2,636,'SQl,head first,Beighley,Lynn,O''Reilly',0)


INSERT INTO [dbo].[TblBook] VALUES('1111111118','Professional Android 4 Application Development','Reto Meier',
'If you''re an experienced developer, you can start creating robust mobile Android apps right away with this professional guide to Android 4 application development.','Wiley India',2013,'Professional','http://cdn.androidpolice.com/wp-content/uploads/2012/04/Pro-Android-4-App-Dev.jpg',388,4,864,'android,android development,wiley,kitkat,jellybean',0)


INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('0123456789','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1234567890','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1234567890','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1234567890','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1234567890','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('2345678901','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('3456789012','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('3456789012','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('3456789012','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('4567890123','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('5678901234','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('6789012345','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('7890123456','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('8901234567','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('9012345678','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111111','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111112','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111113','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111113','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111113','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111113','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111113','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111114','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111114','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111114','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111114','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111115','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111116','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111116','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111116','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111117','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111117','True')

INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111118','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111118','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111118','True')
INSERT INTO [dbo].[TblCatalog](ISBN,status) VALUES('1111111118','True')

