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
    dest_user varchar(25) NOT NULL,
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

INSERT INTO blog.email (PK_email, nick, dest_user, msg, TM) VALUES (1, 'janb', 'guest', 'Hi there, janb. Just testing this account + email option: I have know the option to discuss through this methods!', '2019-09-24 09:20:21');
INSERT INTO blog.email (PK_email, nick, dest_user, msg, TM) VALUES (5, 'janb', 'guest', 'Hi there, being a motivated reader of this website, I will be reading more of this!', '2019-09-24 09:35:24');
INSERT INTO blog.email (PK_email, nick, dest_user, msg, TM) VALUES (8, 'guest', 'janb', 'Hi there, I read all of your emails to me ...', '2019-09-24 13:19:12');
INSERT INTO blog.email (PK_email, nick, dest_user, msg, TM) VALUES (10, 'janb', 'guest', 'Hello back to you! I read all of your Blog-messages, and ...', '2019-09-24 14:13:58');