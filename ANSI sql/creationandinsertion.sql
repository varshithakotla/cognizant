CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL
);

INSERT INTO Users VALUES(1,'Alice Johnson','alice@example.com','New York','2024-12-01');
insert into Users values(2,'Bob Smith','bob@example.com','Los Angeles','2024-12-05');
insert into Users values(3,'Charlie Lee','charlie@example.com','Chicago','2024-12-10');
insert into Users values(4,'Diana King','diana@example.com','New York','2025-01-15');
insert into Users values(5,'Ethan Hunt','ethan@example.com','Los Angeles','2025-02-01');

CREATE TABLE Events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    city VARCHAR(100) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    status ENUM('upcoming', 'completed', 'cancelled'),
    organizer_id INT,
    FOREIGN KEY (organizer_id)
        REFERENCES Users (user_id)
);

insert into events values(1,'Tech Innovators Meetup','A meetup for tech enthusiasts','New York','2025-06-10 10:00:00', '2025-06-10 16:00:00', 'upcoming', 1);
insert into events values(2,'AI&ML Conference','Conference on AI and ML advancements','Chicago','2025-05-15 09:00:00','2025-05-15 17:00:00','completed',3);
insert into events values(3,'Frontend Development Bootcamp','Hands-on training on frontend tech','Los Angeles', '2025-07-01 10:00:00', '2025-07-03 16:00:00','upcoming', 2);


CREATE TABLE Sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    title VARCHAR(200) NOT NULL,
    speaker_name VARCHAR(100) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO sessions VALUES (1,1,'Opening Keynote','Dr. Tech','2025-06-10 10:00:00','2025-06-10 11:00:00');
INSERT INTO sessions VALUES (2,1,'Future of Web Dev','alice johnson','2025-06-10 11:15:00','2025-06-10 12:30:00');
INSERT INTO sessions VALUES (3,2,'AI in Healthcare','charlie Lee','2025-05-15 09:30:00','2025-05-15 11:00:00');
INSERT INTO sessions VALUES (4,3,'Intro to HTML5','Bob Smith','2025-07-01 10:00:00','2025-07-01 12:00:00');

CREATE TABLE Registrations (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    event_id INT,
    registration_date DATE NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

INSERT INTO Registrations VALUES (1, 1, 1, '2025-05-01');
INSERT INTO Registrations VALUES(2, 2, 1, '2025-05-02');
INSERT INTO Registrations VALUES(3, 3, 2, '2025-04-30');
INSERT INTO Registrations VALUES(4, 4, 2, '2025-04-28');
INSERT INTO Registrations VALUES(5, 5, 3, '2025-06-15');

	