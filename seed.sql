use edusync ;

INSERT INTO roles (label)
VALUES ('Admin'),
        ('Prof'),
        ('Student');

INSERT INTO users (firstname , lastname , email , password , roles_id) VALUES
('bilal' , 'khaidoume' , 'bkhaidoume@gmail.com' , SHA2('bilal123' , 256), 1),

('hamza' , 'abalagh' , 'abhamza@gmail.com' , SHA2('hmiiza123' , 256) , 2),
('houssam' , 'l9iirch' , 'l9iirch@gmail.com' , SHA2('l9iirch123' , 256) , 2),

('ammar' , 'khaidoume' , 'ammar@gmail.com' , SHA2('ammar123' , 256) , 3),
('khawla' , 'boulahrouf' , 'khawlabl@gmail.com' , SHA2('khawla123' , 256) , 3),
('ayoub' , 'leader' , 'leader@gmail.com' , SHA2('ayoub123' , 256) , 3),
('abdellah' , 'mahmoudi' , 'abdellah@gmail.com' , SHA2('abdellah123' , 256) , 3);


INSERT INTO courses (title, description, total_hours, user_id) VALUES
('Développement Web', 'HTML, CSS, JavaScript, PHP', 120, 2),   
('Base de Données', 'MySQL, conception, normalisation', 80, 2), 
('UI/UX Design', 'Figma, maquettage, prototypage', 60, 3), 
('DevOps', 'Docker, CI/CD, Linux', 100, 3);

INSERT INTO classes (name , classrom_number) VALUES
('Développeur Web 2026', 101),
('Designer UI/UX 2026', 102),
('DevOps Engineer 2026', 103);


INSERT INTO students (date_of_birth, student_number, classes_id, users_id) VALUES
('2000-03-15', 'STU-001', 1, 4),  
('1999-07-22', 'STU-002', 1, 5),  
('2001-11-05', 'STU-003', 2, 6),  
('2000-01-30', 'STU-004', 3, 7); 

INSERT INTO enrollments (enrolled_at, status, students_id, courses_id) VALUES
('2026-01-10', 'Actif',   1, 2),  
('2026-01-10', 'Actif',   1, 3),  
('2026-01-12', 'Actif',   2, 2),  
('2026-01-15', 'Terminé', 2, 3),  
('2026-01-20', 'Actif',   3, 3),  
('2026-02-01', 'Actif',   4, 3); 

