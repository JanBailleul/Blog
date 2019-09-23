SHOW GRANTS;
CREATE USER 'janb1234'@'localhost';

USE Blog;

create table blog.Msg
(
	PK int NOT NULL UNIQUE AUTO_INCREMENT,
	Name varchar(25) null,
	Msg varchar(1500) null,
	ThreadNr varchar(100) NOT NULL,
	TM TIMESTAMP not null
);

ALTER TABLE Msg
ADD constraint PK primary key (PK);

CREATE TABLE profile
(
    PK_profile int UNIQUE NOT NULL AUTO_INCREMENT,
    login_name varchar(25),
    login_secondNm varchar(25),
    nickname varchar(25),
    emailAddrs varchar(25)
);

ALTER TABLE blog.profile
ADD constraint PK_profile primary key (PK_profile);

CREATE TABLE login
(
    PK_login int(11) UNIQUE NOT NULL AUTO_INCREMENT,
    userName varchar(15),
    pass varchar(15)
);

ALTER TABLE blog.login
ADD constraint PK_login primary key (PK_login);

CREATE TABLE email
(
    PK_email int UNIQUE NOT NULL AUTO_INCREMENT,
    nick varchar(25) NOT NULL,
    emailADD varchar(25) NOT NULL,
    msg varchar(1500) NOT NULL,
    TM TIMESTAMP NOT NULL
);

ALTER TABLE email
ADD constraint PK_email primary key (PK_email);



INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (1, 'janb', 'As of today, there''s a new option in this Blog for Blog writers: you can insert Blog-messages into the database for Blog-messages.
You can easily insert messages, as well as reading and deleting (later) messages out of this databases. There will be later on other options: cookies for storing your ID, and using safe connections with encryption to store your ID for doing work on this website.
See you later.)', 'General', '2019-09-16 10:54:11');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (2, 'janb', 'Uptil now, there have been certain modifications to the Java EE/JSP-code of this website. Graphically, there have now arrived the Message boxes, the left menubox, the buttons, ...
Later there have been added to the code, the smaller message boxes, and the grey-''line'' behind the frontal figuring components. This is to give a certain sense of graphical decorative element.', 'General', '2019-09-16 10:54:11');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (3, 'janb', 'Hello,
Nowadays most Blog offer you an insight into the work of a Blog-writer. Now you can assume to be heard by this particular Blog-Writer, via sending an email to this Bloggie.
Easy and simple, it is just HTML-email, via which you can reach your favourite Bloggie.', 'General', '2019-09-16 10:54:11');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (4, 'janb', 'Today, to start with, I implemented a method for deleting Blog-messages from this Blog. You can now delete messages, such as when they are not intended for further reading.
E.g. when you want to let them no longer being read, such as when they''re used for testing the Blog.
See you for later modifications of the code, later on this day a cookie-file software-method. I want to use on of these methods for implementing a login system with username, used in the entire website!
', 'General', '2019-09-16 10:54:12');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (5, 'janb', 'Testing the new Cookie-method to transfer NameId to all pages.
I have made steps in the good direction. We see for later today to finish that work.', 'General', '2019-09-16 10:54:12');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (6, 'janb', 'Testing for new database and new code for message-table!', 'General', '2019-09-16 13:07:58');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (7, 'janb', 'Whenever ther''s something new in the Java area of development, I am happy to discuss that trough in a new topic on this Java Blog. Such like: logging in on the website via a MySQL-database-driven login system.


This will be implemented in the next hours, I have a small version prepared. All I have to do is to write the database-handling code for communicating with this database. Whenever it''s ready, you''ll know!', 'Specific new Threads', '2019-09-16 13:59:11');
INSERT INTO blog.msg (PK, Name, Msg, ThreadNr, TM) VALUES (8, 'guest', 'Hello!


Nice looking website, with a lot of options. I find it usefull to read. It is interesting to be discussing Java JSP-specific information in this way!', 'General', '2019-09-20 13:56:40');





INSERT INTO blog.login (PK_login, userName, pass) VALUES (1, 'janb', 'janb0123');
INSERT INTO blog.login (PK_login, userName, pass) VALUES (2, 'test', 'test');
INSERT INTO blog.login (PK_login, userName, pass) VALUES (3, 'writer01', 'writer0123');
INSERT INTO blog.login (PK_login, userName, pass) VALUES (4, 'guest', 'guest');

INSERT INTO blog.profile (PK_profile, login_name, login_secondNm, nickname, emailAddrs) VALUES (1, 'Jan', 'Bailleul', 'janb', 'jan.bailleul2@gmail.com');
INSERT INTO blog.profile (PK_profile, login_name, login_secondNm, nickname, emailAddrs) VALUES (2, 'N/a', 'N/a', 'test', 'N/a');
INSERT INTO blog.profile (PK_profile, login_name, login_secondNm, nickname, emailAddrs) VALUES (3, 'N/a', 'N/a', 'writer01', 'N/a');
INSERT INTO blog.profile (PK_profile, login_name, login_secondNm, nickname, emailAddrs) VALUES (4, 'N/a', 'N/a', 'guest', 'N/a');

INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (1, 'janb', 'jan.bailleul2@gmail.com', 'Just testing!', '2019-09-23 14:48:30');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (2, 'janb', 'jan.bailleul2@gmail.com', 'Just testing!', '2019-09-23 14:59:26');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (3, 'guest', 'jan.bailleul2@gmail.com', 'Hi there! I read your message on this Blog...', '2019-09-23 14:59:52');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (4, 'guest', 'jan.bailleul2@gmail.com', 'Hi there, about your email!', '2019-09-23 15:02:26');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (5, 'guest', 'jan.bailleul2@gmail.com', 'Hi there, about your email!', '2019-09-23 15:03:34');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (6, 'guest', 'jan.bailleul2@gmail.com', 'Hi and hello to you to!', '2019-09-23 15:03:52');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (7, 'guest', 'jan.bailleul2@gmail.com', 'Hi and hello to you to!', '2019-09-23 15:06:39');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (8, 'guest', 'jan.bailleul2@gmail.com', 'Hi there, about your email!', '2019-09-23 15:06:40');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (9, 'guest', 'jan.bailleul2@gmail.com', 'Hi there! I read your message on this Blog...', '2019-09-23 15:06:41');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (10, 'janb', 'jan.bailleul2@gmail.com', 'Just testing!', '2019-09-23 15:06:42');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (11, 'janb', 'jan.bailleul2@gmail.com', 'Quick testing Testing!', '2019-09-23 15:06:43');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (12, 'janb', 'jan.bailleul2@gmail.com', 'Quick test of this emailprogram', '2019-09-23 15:06:44');
INSERT INTO blog.email (PK_email, nick, emailADD, msg, TM) VALUES (13, 'guest', 'jan.bailleul2@gmail.com', 'Hi there!', '2019-09-23 15:07:06');
