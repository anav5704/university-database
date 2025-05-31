-- @block 
-- COMPANY
DROP TABLE IF EXISTS COMPANY;
CREATE TABLE IF NOT EXISTS COMPANY (
    COMPANY_CODE INT PRIMARY KEY,
    COMPANY_NAME VARCHAR(100)
);
-- @block 
-- QUALIFICATION
DROP TABLE IF EXISTS QUALIFICATION;
CREATE TABLE IF NOT EXISTS QUALIFICATION (
    QUALIFICATION_CODE INT PRIMARY KEY,
    QUALIFICATION_DESCRIPTION VARCHAR(255)
);

-- @block 
-- COURSE
DROP TABLE IF EXISTS COURSE;
CREATE TABLE IF NOT EXISTS COURSE (
    COURSE_CODE INT PRIMARY KEY,
    COURSE_DESCRIPTION VARCHAR(255),
    COURSE_FEE DECIMAL(10, 2),
    QUALIFICATION_CODE INT,
    FOREIGN KEY (QUALIFICATION_CODE) REFERENCES QUALIFICATION(QUALIFICATION_CODE)
);

-- @block 
-- PREREQUISITE
DROP TABLE IF EXISTS PREREQUISITE;
CREATE TABLE IF NOT EXISTS PREREQUISITE (
    COURSE_CODE INT,
    QUALIFICATION_CODE INT,
    PRIMARY KEY (COURSE_CODE, QUALIFICATION_CODE),
    FOREIGN KEY (COURSE_CODE) REFERENCES COURSE(COURSE_CODE),
    FOREIGN KEY (QUALIFICATION_CODE) REFERENCES QUALIFICATION(QUALIFICATION_CODE)
);

-- @block 
-- SESSION
DROP TABLE IF EXISTS SESSION;
CREATE TABLE IF NOT EXISTS SESSION (
    SESSION_CODE INT PRIMARY KEY,
    SESSION_START_DATE DATE,
    SESSION_FEE DECIMAL(10, 2),
    COURSE_CODE INT,
    FOREIGN KEY (COURSE_CODE) REFERENCES COURSE(COURSE_CODE)
);

-- @block 
-- CANDIDATE
DROP TABLE IF EXISTS CANDIDATE;
CREATE TABLE IF NOT EXISTS CANDIDATE (
    CANDIDATE_CODE INT PRIMARY KEY,
    CANDIDATE_FNAME VARCHAR(50),
    CANDIDATE_LNAME VARCHAR(50)
);

-- @block 
-- ENROLLMENT
DROP TABLE IF EXISTS ENROLLMENT;
CREATE TABLE IF NOT EXISTS ENROLLMENT (
    SESSION_CODE INT,
    CANDIDATE_CODE INT,
    ENROLLMENT_DATE DATE,
    ENROLLMENT_FEE_PAYMENT DECIMAL(10, 2),
    PRIMARY KEY (SESSION_CODE, CANDIDATE_CODE),
    FOREIGN KEY (SESSION_CODE) REFERENCES SESSION(SESSION_CODE),
    FOREIGN KEY (CANDIDATE_CODE) REFERENCES CANDIDATE(CANDIDATE_CODE)
);

-- @block 
-- EDUCATION
DROP TABLE IF EXISTS EDUCATION;
CREATE TABLE IF NOT EXISTS EDUCATION (
    QUALIFICATION_CODE INT,
    CANDIDATE_CODE INT,
    EDUCATION_EARNED_DATE DATE,
    PRIMARY KEY (QUALIFICATION_CODE, CANDIDATE_CODE),
    FOREIGN KEY (QUALIFICATION_CODE) REFERENCES QUALIFICATION(QUALIFICATION_CODE),
    FOREIGN KEY (CANDIDATE_CODE) REFERENCES CANDIDATE(CANDIDATE_CODE)
);

-- @block 
-- JOB_OPENING
DROP TABLE IF EXISTS JOB_OPENING;
CREATE TABLE IF NOT EXISTS JOB_OPENING (
    JOB_OPENING_CODE INT PRIMARY KEY,
    JOB_OPENING_DESCRIPTION VARCHAR(255),
    JOB_OPENING_AVAILABILITY_STATUS VARCHAR(50),
    QUALIFICATION_CODE INT,
    COMPANY_CODE INT,
    FOREIGN KEY (QUALIFICATION_CODE) REFERENCES QUALIFICATION(QUALIFICATION_CODE),
    FOREIGN KEY (COMPANY_CODE) REFERENCES COMPANY(COMPANY_CODE)
);

-- @block 
-- PLACEMENT
DROP TABLE IF EXISTS PLACEMENT;
CREATE TABLE IF NOT EXISTS PLACEMENT (
    PLACEMENT_CODE INT PRIMARY KEY,
    PLACEMENT_DATE DATE,
    PLACEMENT_HOURS_WORKED INT,
    CANDIDATE_CODE INT,
    JOB_OPENING_CODE INT,
    FOREIGN KEY (CANDIDATE_CODE) REFERENCES CANDIDATE(CANDIDATE_CODE),
    FOREIGN KEY (JOB_OPENING_CODE) REFERENCES JOB_OPENING(JOB_OPENING_CODE)
);

-- @block 
-- JOB_HISTORY
DROP TABLE IF EXISTS JOB_HISTORY;
CREATE TABLE IF NOT EXISTS JOB_HISTORY (
    JOB_HISTORY_CODE INT PRIMARY KEY,
    PLACEMENT_CODE INT,
    CANDIDATE_CODE INT,
    FOREIGN KEY (PLACEMENT_CODE) REFERENCES PLACEMENT(PLACEMENT_CODE),
    FOREIGN KEY (CANDIDATE_CODE) REFERENCES CANDIDATE(CANDIDATE_CODE)
);

-- @block 
-- Insert Data into COMPANY table
INSERT INTO COMPANY (COMPANY_CODE, COMPANY_NAME) VALUES
(101, 'Fiji Airways'),
(102, 'Vodafone Fiji'),
(103, 'ANZ Fiji'),
(104, 'FMF Foods Ltd'),
(105, 'Fiji Sugar Corporation'),
(106, 'Denarau Corporation Ltd'),
(107, 'Tappoo Group'),
(108, 'RB Patel Group'),
(109, 'Paradise Beverages (Fiji) Ltd'),
(110, 'Fiji Electricity Authority'),
(111, 'Port Denarau Marina'),
(112, 'South Sea Cruises'),
(113, 'McDonald''s Fiji'),
(114, 'Coca-Cola Europacific Partners Fiji'),
(115, 'Fiji Kava'),
(116, 'Punjas Group'),
(117, 'Pacific Building Solutions'),
(118, 'Fiji Water'),
(119, 'Grand Pacific Hotel'),
(120, 'Fiji Broadcasting Corporation');

-- @block 
-- Insert Data into QUALIFICATION table
INSERT INTO QUALIFICATION (QUALIFICATION_CODE, QUALIFICATION_DESCRIPTION) VALUES
(201, 'Certificate in Tourism & Hospitality'),
(202, 'Diploma in Information Technology'),
(203, 'Bachelor of Business (Accounting)'),
(204, 'Certificate in Food Processing'),
(205, 'Diploma in Agricultural Science'),
(206, 'Certificate in Project Management'),
(207, 'Bachelor of Commerce (Management)'),
(208, 'Diploma in Retail Management'),
(209, 'Certificate in Brewing Technology'),
(210, 'Diploma in Electrical Engineering'),
(211, 'Certificate in Marine Operations'),
(212, 'Diploma in Environmental Science'),
(213, 'Bachelor of Culinary Arts'),
(214, 'Certificate in Beverage Production'),
(215, 'Diploma in Traditional Medicine'),
(216, 'Bachelor of Engineering (Civil)'),
(217, 'Certificate in Construction Management'),
(218, 'Diploma in Water Management'),
(219, 'Bachelor of Hotel Management'),
(220, 'Certificate in Media Production');

-- @block 
-- Insert Data into COURSE table
INSERT INTO COURSE (COURSE_CODE, COURSE_DESCRIPTION, COURSE_FEE, QUALIFICATION_CODE) VALUES
(301, 'Introduction to Fijian Tourism', 850.00, 201),
(302, 'Network Fundamentals', 1200.00, 202),
(303, 'Financial Accounting Principles', 950.00, 203),
(304, 'Food Safety and Hygiene', 700.00, 204),
(305, 'Sustainable Farming Practices', 1100.00, 205),
(306, 'Basics of Project Planning', 800.00, 206),
(307, 'Organizational Behavior', 1050.00, 207),
(308, 'Retail Operations and Merchandising', 900.00, 208),
(309, 'Brewing Science and Production', 1300.00, 209),
(310, 'Electrical Circuit Analysis', 1150.00, 210),
(311, 'Boat Handling and Safety', 900.00, 211),
(312, 'Coastal Ecosystems', 1000.00, 212),
(313, 'Advanced Culinary Techniques', 1400.00, 213),
(314, 'Soft Drink Manufacturing', 850.00, 214),
(315, 'Traditional Fijian Remedies', 750.00, 215),
(316, 'Structural Design Principles', 1350.00, 216),
(317, 'Site Supervision', 950.00, 217),
(318, 'Water Treatment Systems', 1100.00, 218),
(319, 'Front Office Operations', 1000.00, 219),
(320, 'Radio Broadcasting Basics', 800.00, 220);

-- @block 
-- Insert Data into PREREQUISITE table
-- (Assuming some courses have prerequisites, adjust as needed)
INSERT INTO PREREQUISITE (COURSE_CODE, QUALIFICATION_CODE) VALUES
(302, 202), -- Network Fundamentals requires IT Diploma
(303, 203), -- Financial Accounting requires Business (Accounting) Bachelor
(306, 206), -- Project Planning requires Project Management Certificate
(307, 207), -- Organizational Behavior requires Commerce (Management) Bachelor
(309, 209), -- Brewing Science requires Brewing Technology Certificate
(310, 210), -- Electrical Circuit Analysis requires Electrical Engineering Diploma
(301, 201), -- Introduction to Fijian Tourism requires Tourism & Hospitality Certificate
(304, 204), -- Food Safety requires Food Processing Certificate
(305, 205), -- Sustainable Farming requires Agricultural Science Diploma
(308, 208), -- Retail Operations requires Retail Management Diploma
(311, 211), -- Boat Handling requires Marine Operations Certificate
(312, 212), -- Coastal Ecosystems requires Environmental Science Diploma
(313, 213), -- Advanced Culinary Techniques requires Culinary Arts Bachelor
(314, 214), -- Soft Drink Manufacturing requires Beverage Production Certificate
(315, 215), -- Traditional Fijian Remedies requires Traditional Medicine Diploma
(316, 216), -- Structural Design Principles requires Engineering (Civil) Bachelor
(317, 217), -- Site Supervision requires Construction Management Certificate
(318, 218), -- Water Treatment Systems requires Water Management Diploma
(319, 219), -- Front Office Operations requires Hotel Management Bachelor
(320, 220); -- Radio Broadcasting Basics requires Media Production Certificate

-- @block 
-- Insert Data into SESSION table
INSERT INTO SESSION (SESSION_CODE, SESSION_START_DATE, SESSION_FEE, COURSE_CODE) VALUES
(401, '2025-01-18', 850.00, 301),
(402, '2025-02-04', 1200.00, 302),
(403, '2025-01-23', 950.00, 303),
(404, '2025-03-04', 700.00, 304),
(405, '2025-02-13', 1100.00, 305),
(406, '2025-03-18', 800.00, 306),
(407, '2025-01-28', 1050.00, 307),
(408, '2025-03-04', 900.00, 308),
(409, '2025-02-23', 1300.00, 309),
(410, '2025-03-08', 1150.00, 310),
(411, '2025-03-13', 900.00, 311),
(412, '2025-03-24', 1000.00, 312),
(413, '2025-03-23', 1400.00, 313),
(414, '2025-03-28', 850.00, 314),
(415, '2025-03-08', 750.00, 315),
(416, '2025-03-29', 1350.00, 316),
(417, '2025-03-23', 950.00, 317),
(418, '2025-03-27', 1100.00, 318),
(419, '2025-03-28', 1000.00, 319),
(420, '2025-03-31', 800.00, 320);

-- @block 
-- Insert Data into CANDIDATE table
INSERT INTO CANDIDATE (CANDIDATE_CODE, CANDIDATE_FNAME, CANDIDATE_LNAME) VALUES
(501, 'Aisha', 'Khan'),
(502, 'Semi', 'Radradra'),
(503, 'Mere', 'Tabua'),
(504, 'Jone', 'Naivalu'),
(505, 'Sita', 'Sharma'),
(506, 'Pita', 'Tawake'),
(507, 'Roshni', 'Devi'),
(508, 'Viliame', 'Gata'),
(509, 'Laisa', 'Vaniqi'),
(510, 'Tomasi', 'Bale'),
(511, 'Sofia', 'Ali'),
(512, 'Isikeli', 'Koroi'),
(513, 'Ana', 'Tuivasa'),
(514, 'Rajesh', 'Kumar'),
(515, 'Kelera', 'Rokovasa'),
(516, 'Josefa', 'Nacewa'),
(517, 'Priya', 'Singh'),
(518, 'Mosese', 'Nasilasila'),
(519, 'Amelia', 'Lewa'),
(520, 'David', 'Lal');

-- @block 
-- Insert Data into ENROLLMENT table
INSERT INTO ENROLLMENT (SESSION_CODE, CANDIDATE_CODE, ENROLLMENT_DATE, ENROLLMENT_FEE_PAYMENT) VALUES
(401, 501, '2025-01-05', 850.00),
(402, 502, '2025-01-10', 0.00),
(403, 503, '2025-01-15', 950.00),
(404, 504, '2025-01-20', 0.00),
(405, 505, '2025-01-25', 1100.00),
(406, 506, '2025-01-30', 0.00),
(407, 507, '2025-02-05', 1050.00),
(408, 508, '2025-02-10', 0.00),
(409, 509, '2025-02-15', 1300.00),
(410, 510, '2025-02-20', 0.00),
(411, 511, '2025-02-25', 900.00),
(412, 512, '2025-03-01', 0.00),
(413, 513, '2025-03-05', 1400.00),
(414, 514, '2025-03-10', 0.00),
(415, 515, '2025-03-15', 750.00),
(416, 516, '2025-03-20', 0.00),
(417, 517, '2025-03-25', 950.00),
(418, 518, '2025-03-28', 0.00),
(419, 519, '2025-03-30', 1000.00),
(420, 520, '2025-03-31', 0.00);

-- @block 
-- Insert Data into EDUCATION table
INSERT INTO EDUCATION (QUALIFICATION_CODE, CANDIDATE_CODE, EDUCATION_EARNED_DATE) VALUES
(219, 501, '2024-10-30'),  
(219, 502, '2024-11-15'),  
(219, 503, '2024-10-25'),  
(216, 504, '2024-12-01'),  
(216, 505, '2024-11-10'),  
(203, 506, '2024-12-10'),  
(203, 507, '2024-11-01'),  
(203, 508, '2025-01-05'),  
(204, 509, '2024-11-20'),  
(204, 510, '2024-12-15'),  
(205, 511, '2024-10-20'),  
(205, 512, '2024-11-05'),  
(205, 513, '2024-12-01'),  
(206, 514, '2024-11-10'),  
(206, 515, '2024-12-20'),  
(207, 516, '2025-01-10'),  
(207, 517, '2025-02-01'),  
(207, 518, '2025-01-15'),  
(207, 519, '2025-02-10'), 
(207, 520, '2025-01-25');  
-- @block 
-- Insert Data into JOB_OPENING table
INSERT INTO JOB_OPENING (JOB_OPENING_CODE, JOB_OPENING_DESCRIPTION, JOB_OPENING_AVAILABILITY_STATUS, QUALIFICATION_CODE, COMPANY_CODE) VALUES
(601, 'Guest Services Officer', 'Open', 219, 101),
(602, 'IT Support Specialist', 'Open', 216, 102),
(603, 'Junior Accountant', 'Open', 203, 103),
(604, 'Food Production Assistant', 'Open', 204, 104),
(605, 'Agricultural Technician', 'Open', 205, 105),
(606, 'Resort Project Coordinator', 'Open', 206, 106),
(607, 'Retail Store Manager', 'Open', 207, 107),
(608, 'Sales Associate', 'Open', 207, 108),
(609, 'Brewery Assistant', 'Open', 209, 109),
(610, 'Electrical Apprentice', 'Open', 210, 110),
(611, 'Marina Operations Staff', 'Open', 211, 111),
(612, 'Environmental Compliance Officer', 'Open', 212, 112),
(613, 'Chef de Partie', 'Open', 213, 113),
(614, 'Beverage Production Operator', 'Open', 214, 114),
(615, 'Traditional Healer Assistant', 'Open', 215, 115),
(616, 'Civil Engineer', 'Open', 216, 116),
(617, 'Construction Site Supervisor', 'Open', 217, 117),
(618, 'Water Quality Technician', 'Open', 218, 118),
(619, 'Hotel Front Desk Agent', 'Open', 219, 119),
(620, 'Radio Content Creator', 'Open', 220, 120);

-- @block
-- Insert Data into PLACEMENT table
INSERT INTO PLACEMENT (PLACEMENT_CODE, PLACEMENT_DATE, PLACEMENT_HOURS_WORKED, CANDIDATE_CODE, JOB_OPENING_CODE) VALUES
(701, '2025-01-10', 160, 501, 601),  -- Aisha
(702, '2025-01-12', 150, 502, 601),  -- Semi (also placed here)
(703, '2025-01-15', 155, 503, 601),  -- Mere (also placed here)
(704, '2025-01-20', 165, 504, 602),  -- Jone
(705, '2025-01-22', 170, 505, 602),  -- Sita (also placed here)
(706, '2025-02-01', 140, 506, 603),  -- Pita
(707, '2025-02-03', 145, 507, 603),  -- Roshni (also placed here)
(708, '2025-02-05', 150, 508, 603),  -- Viliame (also placed here)
(709, '2025-02-10', 160, 509, 604),  -- Laisa
(710, '2025-02-12', 155, 510, 604),  -- Tomasi (also placed here)
(711, '2025-02-15', 165, 511, 605),  -- Sofia
(712, '2025-02-18', 170, 512, 605),  -- Isikeli (also placed here)
(713, '2025-02-20', 160, 513, 605),  -- Ana (also placed here)
(714, '2025-03-01', 150, 514, 606),  -- Rajesh
(715, '2025-03-03', 155, 515, 606),  -- Kelera (also placed here)
(716, '2025-03-05', 165, 516, 607),  -- Josefa
(717, '2025-03-07', 170, 517, 607),  -- Priya (also placed here)
(718, '2025-03-10', 160, 518, 607),  -- Mosese (also placed here)
(719, '2025-03-12', 155, 519, 608),  -- Amelia
(720, '2025-03-15', 150, 520, 608),  -- David (also placed here)
(721, '2025-03-20', 165, 501, 609),  -- Aisha also placed as Brewery Assistant
(722, '2025-03-22', 170, 502, 610),  -- Semi also placed as Electrical Apprentice
(723, '2025-03-25', 160, 503, 611),  -- Mere also placed as Marina Operations Staff
(724, '2025-03-28', 155, 504, 612),  -- Jone also placed as Environmental Officer
(725, '2025-03-30', 150, 505, 613);  -- Sita also placed as Chef de Partie

-- @block 
-- Insert Data into JOB_HISTORY table
INSERT INTO JOB_HISTORY (JOB_HISTORY_CODE, PLACEMENT_CODE, CANDIDATE_CODE) VALUES
(801, 701, 501), 
(802, 702, 502), 
(803, 703, 503), 
(804, 704, 504), 
(805, 705, 505),
(806, 706, 506), 
(807, 707, 507), 
(808, 708, 508), 
(809, 709, 509), 
(810, 710, 510),
(811, 711, 511), 
(812, 712, 512), 
(813, 713, 513), 
(814, 714, 514), 
(815, 715, 515),
(816, 716, 516), 
(817, 717, 517), 
(818, 718, 518), 
(819, 719, 519), 
(820, 720, 520),
(821, 721, 501), 
(822, 722, 502), 
(823, 723, 503), 
(824, 724, 504), 
(825, 725, 505);

-- @block
-- Query 4
-- Find candidates who need further education (don't have required qualification for their job)
SELECT 
    CANDIDATE.CANDIDATE_CODE,
    CANDIDATE.CANDIDATE_FNAME, 
    CANDIDATE.CANDIDATE_LNAME, 
    COURSE.COURSE_DESCRIPTION,
    SESSION.SESSION_START_DATE,
    SESSION.SESSION_FEE,
    (
        SELECT SUM(SESSION.SESSION_FEE)
        FROM SESSION
        INNER JOIN COURSE ON SESSION.COURSE_CODE = COURSE.COURSE_CODE
        WHERE COURSE.QUALIFICATION_CODE = JOB_OPENING.QUALIFICATION_CODE
    ) AS Total_Cost
FROM CANDIDATE
INNER JOIN PLACEMENT ON CANDIDATE.CANDIDATE_CODE = PLACEMENT.CANDIDATE_CODE
INNER JOIN JOB_OPENING ON PLACEMENT.JOB_OPENING_CODE = JOB_OPENING.JOB_OPENING_CODE
INNER JOIN EDUCATION ON CANDIDATE.CANDIDATE_CODE = EDUCATION.CANDIDATE_CODE
INNER JOIN COURSE ON JOB_OPENING.QUALIFICATION_CODE = COURSE.QUALIFICATION_CODE
INNER JOIN SESSION ON COURSE.COURSE_CODE = SESSION.COURSE_CODE
WHERE EDUCATION.QUALIFICATION_CODE != JOB_OPENING.QUALIFICATION_CODE
ORDER BY CANDIDATE.CANDIDATE_LNAME ASC;

-- @block
-- Query 5
-- Find candidates who have enrolled in sessions but haven't paid the full fee
SELECT
    C.CANDIDATE_CODE,
    C.CANDIDATE_FNAME,
    C.CANDIDATE_LNAME,
    S.SESSION_CODE,
    S.SESSION_FEE,
    E.ENROLLMENT_FEE_PAYMENT,
    (S.SESSION_FEE - E.ENROLLMENT_FEE_PAYMENT) AS BALANCE_DUE,
    E.ENROLLMENT_DATE
FROM
    CANDIDATE AS C
INNER JOIN
    Enrollment AS E ON C.CANDIDATE_CODE = E.CANDIDATE_CODE
INNER JOIN
    Session AS S ON E.SESSION_CODE = S.SESSION_CODE
WHERE
    E.ENROLLMENT_FEE_PAYMENT < S.SESSION_FEE
    AND E.ENROLLMENT_DATE >= '2025-01-01'
    AND E.ENROLLMENT_DATE <= '2025-03-31';

-- @block
-- Query 6
-- Shortlisted candidates for current job openings
SELECT 
    CMP.COMPANY_NAME AS Company,
    JO.JOB_OPENING_CODE AS Opening_Code,
    JO.JOB_OPENING_DESCRIPTION AS Job_Opening,
    Q.QUALIFICATION_DESCRIPTION AS Required_Qualification,
    CONCAT(CAND.CANDIDATE_FNAME, ' ', CAND.CANDIDATE_LNAME) AS Qualified_Candidate,
    (
        SELECT COUNT(*) 
        FROM PLACEMENT AS P2 
        WHERE P2.CANDIDATE_CODE = CAND.CANDIDATE_CODE
    ) AS Successful_Placements
FROM COMPANY AS CMP
INNER JOIN JOB_OPENING AS JO ON CMP.COMPANY_CODE = JO.COMPANY_CODE
JOIN QUALIFICATION AS Q ON JO.QUALIFICATION_CODE = Q.QUALIFICATION_CODE
INNER JOIN EDUCATION AS E ON Q.QUALIFICATION_CODE = E.QUALIFICATION_CODE
INNER JOIN CANDIDATE AS CAND ON E.CANDIDATE_CODE = CAND.CANDIDATE_CODE
WHERE JO.JOB_OPENING_AVAILABILITY_STATUS = 'Open' 
ORDER BY CMP.COMPANY_NAME ASC;

-- @block
-- Available candidates grouped by company and job opening
-- Shows only candidates not currently placed

SELECT 
    CMP.COMPANY_NAME AS Company,
    JO.JOB_OPENING_DESCRIPTION AS Job_Opening,
    Q.QUALIFICATION_DESCRIPTION AS Required_Qualification,
    GROUP_CONCAT(
        CONCAT(CAND.CANDIDATE_FNAME, ' ', CAND.CANDIDATE_LNAME)
        ORDER BY CAND.CANDIDATE_LNAME
        SEPARATOR ', '
    ) AS Available_Candidates,
    COUNT(DISTINCT CAND.CANDIDATE_CODE) AS Total_Available
FROM COMPANY CMP
INNER JOIN JOB_OPENING JO ON CMP.COMPANY_CODE = JO.COMPANY_CODE
INNER JOIN QUALIFICATION Q ON JO.QUALIFICATION_CODE = Q.QUALIFICATION_CODE
INNER JOIN EDUCATION E ON Q.QUALIFICATION_CODE = E.QUALIFICATION_CODE
INNER JOIN CANDIDATE CAND ON E.CANDIDATE_CODE = CAND.CANDIDATE_CODE
WHERE JO.JOB_OPENING_AVAILABILITY_STATUS = 'Open'
GROUP BY CMP.COMPANY_NAME, JO.JOB_OPENING_DESCRIPTION, Q.QUALIFICATION_DESCRIPTION
ORDER BY CMP.COMPANY_NAME, JO.JOB_OPENING_DESCRIPTION;

-- @block
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS ENROLLMENT;
DROP TABLE IF EXISTS EDUCATION;
DROP TABLE IF EXISTS SESSION;
DROP TABLE IF EXISTS COURSE;
DROP TABLE IF EXISTS PREREQUISITE;
DROP TABLE IF EXISTS PLACEMENT;
DROP TABLE IF EXISTS JOB_HISTORY;
DROP TABLE IF EXISTS JOB_OPENING;
DROP TABLE IF EXISTS QUALIFICATION;
DROP TABLE IF EXISTS CANDIDATE;
DROP TABLE IF EXISTS COMPANY;

SET FOREIGN_KEY_CHECKS = 1;