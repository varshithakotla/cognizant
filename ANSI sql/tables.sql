insert into users values(1,'alice johnson','alice@example.com','new york','2024-12-01');
insert into users values(2,'Bob Smith','bob@example.com','Los Angeles','2024-12-05');
insert into users values(3,'Charlie Lee','charlie@example.com','Chicago','2024-12-10');
insert into users values(4,'Diana King','diana@example.com','New York','2025-01-15');
insert into users values(5,'Ethan Hunt','ethan@example.com','Los Angeles','2025-02-01');

INSERT INTO events VALUES(1,'tech innovators meetup','A meetup for tech enthusiasts','net york','2025-06-10 10:00:00', '2025-06-10 16:00:00', 'upcoming', 1);
INSERT INTO events VALUES(2,'al&ml conference','Conference on AI and ML advancements','chicago','2025-05-15 09:00:00','2025-05-15 17:00:00','completed',3);
INSERT INTO events VALUES(3,'Frontend Development Bootcamp','Hands-on training on frontend tech','los angeles', '2025-07-01 10:00:00', '2025-07-03 16:00:00','upcoming', 2);

INSERT INTO sessions VALUES (1,1,'Opening Keynote','Dr. Tech','2025-06-10 10:00:00','2025-06-10 11:00:00');
INSERT INTO sessions VALUES (2,1,'Future of Web Dev','alice johnson','2025-06-10 11:15:00','2025-06-10 12:30:00');
INSERT INTO sessions VALUES (3,2,'AI in Healthcare','charlie Lee','2025-05-15 09:30:00','2025-05-15 11:00:00');
INSERT INTO sessions VALUES (4,3,'Intro to HTML5','Bob Smith','2025-07-01 10:00:00','2025-07-01 12:00:00');

INSERT INTO registrations VALUES(1, 1, 1, '2025-05-01');
INSERT INTO registrations VALUES(2, 2, 1, '2025-05-02');
INSERT INTO registrations VALUES(3, 3, 2, '2025-04-30');
INSERT INTO registrations VALUES(4, 4, 2, '2025-04-28');
INSERT INTO registrations VALUES(5, 5, 3, '2025-06-15');

INSERT INTO feedback VALUES (1,3,2,4,'Great insights!','2025-05-16');
INSERT INTO feedback VALUES (2,4,2,5,'Very informative.','2025-05-16');
INSERT INTO feedback VALUES (3,2,1,3,'Could be better.','2025-06-11');

INSERT INTO resources VALUES (1,1,'pdf','https://portal.com/resources/tech_meetup_agenda.pdf','2025-05-01 10:00:00');
INSERT INTO resources VALUES (2,2,'image','https://portal.com/resources/ai_poster.jpg','2025-04-20 09:00:00');
INSERT INTO resources VALUES (3,3,'link','https://portal.com/resources/html5_docs','2025-06-25 15:00:00');