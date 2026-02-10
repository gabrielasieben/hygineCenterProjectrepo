PRAGMA foreign_keys = ON;

-- insertion of visitors
INSERT INTO visitor
VALUES (0, 'W', 1999, '20.02.2024', 'Jenny');

INSERT INTO visitor
VALUES (1, 'W', 1987, '10.04.2024', 'Maria'),
(2, 'M', 2002, '03.01.2026', 'John'),
(3, 'M', 1997, '16.07.2023', 'Malthe'),
(4, 'W', 2001, '07.09.2024', 'Vera'),
(5, 'M', 1999, '23.02.2024', 'Manuel'),
(6, 'M', 1988, '23.02.2024', 'Mike'),
(7, 'M', 2004, '15.03.2023', 'Max'),
(8, 'M', 1999, '20.02.2024', 'Samuel'),
(9, 'W', 1996, '03.06.2025', 'Jackie'),
(10, 'M', 2005, '27.06.2024', 'Noel'),
(11, 'W', 2000, '09.10.2024', 'Amy'),
(12, 'W', 1993, '12.08.2025', 'Nora'),
(13, 'W', 1970, '19.02.2024', 'Becky'),
(14, 'M', 1973, '13.12.2025', 'Tom');

PRAGMA table_info(volunteer);

-- insertion of volunteers
INSERT INTO volunteer 
VALUES (0, 'musterfrau@email.com', 'Christina', '0123435566'),
(1, 'eemal@email.com', 'Ursula', '013452777766'),
(2, 'macks34@email.com', 'Christ', '012335566'),
(3, 'musten@email.com', 'Manfred', '0123435566'),
(4, 'mhakle@email.com', 'Tina', '04444435566'),
(5, 'mussine@email.com', 'Ben', '0177775566');

PRAGMA table_info(article_giveaway);

-- insertion of articles
INSERT INTO article
VALUES (0, 20, 'Pants', 'Clothes'),
(1, 35, 'T-shirt', 'Clothes'),
(2, 13, 'Showergel', 'Hygine'),
(3, 100, 'Thoothbrush', 'Hygine'),
(4, 20, 'Towel', 'Hygine'),
(5, 30, 'Shoes', 'Clothes');

-- insertion articles giveaway
INSERT INTO article_giveaway 
VALUES (0, 2, 3, '16.07.2023'),
(1, 4, 7, '15.04.2023'),
(2, 3, 7, '15.04.2023'),
(3, 1, 7, '15.04.2023'),
(4, 2, 9, '03.09.2025'),
(5, 0, 12, '24.10.2025'),
(6, 4, 14, '15.12.2025'),
(7, 3, 13, '08.04.2024'),
(8, 1, 10, '27.06.2024'),
(9, 2, 10, '27.06.2024'),
(10, 2, 4, '07.09.2024');

-- insertion of services
INSERT INTO service 
VALUES (0, 'showering', 10),
(1, 'washing machine', 30),
(2, 'article giveaway', 15),
(3, 'sinks', 10); 

-- insertion of services used
INSERT INTO service_use
VALUES (0, '16.07.2023', 2, 3),
(1, '15.04.2023', 2, 7),
(2, '03.09.2025', 2, 9),
(3, '24.10.2025', 2, 12),
(4, '15.12.2025', 2, 14), 
(5, '08.04.2024', 2, 13),
(6, '27.06.2024', 2, 10),
(7, '07.09.2024', 2, 4),
(8, '16.07.2023', 0, 3),
(9, '15.04.2023', 1, 7),
(10, '03.09.2025', 3, 9),
(11, '03.09.2025', 0, 5);

PRAGMA table_info(workplan);

-- insertion of the workplan
INSERT INTO workplan 
VALUES (0, 0, '15.04.2023'),
(1, 1, '16.07.2023'),
(2, 2, '15.03.2023'),
(3, 3, '19.02.2024'),
(4, 4, '23.02.2024'),
(5, 5, '08.04.2024'),
(6, 0, '10.04.2024'),
(7, 1, '20.02.2024'),
(8, 2, '07.09.2024'),
(9, 3, '27.06.2024'),
(10, 4, '09.10.2024'),
(11, 5, '12.08.2025'),
(12, 0, '03.01.2026'),
(13, 1, '03.06.2025'),
(14, 2, '13.12.2025'),
(15, 3, '24.10.2025'),
(16, 4, '15.12.2025'),
(17, 5, '03.09.2025');

