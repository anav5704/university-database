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
(110, 'Fiji Electricity Authority');

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
(210, 'Diploma in Electrical Engineering');

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
(310, 'Electrical Circuit Analysis', 1150.00, 210);

-- @block 
-- Insert Data into PREREQUISITE table
-- (Assuming some courses have prerequisites, adjust as needed)
INSERT INTO PREREQUISITE (COURSE_CODE, QUALIFICATION_CODE) VALUES
(302, 202), -- Network Fundamentals requires IT Diploma
(303, 203), -- Financial Accounting requires Business (Accounting) Bachelor
(306, 206), -- Project Planning requires Project Management Certificate
(307, 207), -- Organizational Behavior requires Commerce (Management) Bachelor
(309, 209),  -- Brewing Science requires Brewing Technology Certificate
(310, 210),  -- Electrical Circuit Analysis requires Electrical Engineering Diploma
(301, 201), -- Introduction to Fijian Tourism requires Tourism & Hospitality Certificate
(304, 204), -- Food Safety requires Food Processing Certificate
(305, 205), -- Sustainable Farming requires Agricultural Science Diploma
(308, 208); -- Retail Operations requires Retail Management Diploma

-- @block 
-- Insert Data into SESSION table
INSERT INTO SESSION (SESSION_CODE, SESSION_START_DATE, SESSION_FEE, COURSE_CODE) VALUES
(401, '2024-07-15', 850.00, 301),
(402, '2024-08-01', 1200.00, 302),
(403, '2024-07-20', 950.00, 303),
(404, '2024-09-01', 700.00, 304),
(405, '2024-08-10', 1100.00, 305),
(406, '2024-09-15', 800.00, 306),
(407, '2024-07-25', 1050.00, 307),
(408, '2024-10-01', 900.00, 308),
(409, '2024-08-20', 1300.00, 309),
(410, '2024-09-05', 1150.00, 310);

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
(510, 'Tomasi', 'Bale');

-- @block 
-- Insert Data into ENROLLMENT table
INSERT INTO ENROLLMENT (SESSION_CODE, CANDIDATE_CODE, ENROLLMENT_DATE, ENROLLMENT_FEE_PAYMENT) VALUES
(401, 501, '2024-07-01', 850.00),
(402, 502, '2024-07-10', 1200.00),
(403, 503, '2024-07-05', 950.00),
(404, 504, '2024-08-15', 700.00),
(405, 505, '2024-07-28', 1100.00),
(406, 506, '2024-08-25', 800.00),
(407, 507, '2024-07-18', 1050.00),
(408, 508, '2024-09-20', 900.00),
(409, 509, '2024-08-05', 1300.00),
(410, 510, '2024-08-28', 1150.00);

-- @block 
-- Insert Data into EDUCATION table
INSERT INTO EDUCATION (QUALIFICATION_CODE, CANDIDATE_CODE, EDUCATION_EARNED_DATE) VALUES
(201, 501, '2024-10-30'),
(202, 502, '2024-11-15'),
(203, 503, '2024-10-25'),
(204, 504, '2024-12-01'),
(205, 505, '2024-11-10'),
(206, 506, '2024-12-10'),
(207, 507, '2024-11-01'),
(208, 508, '2025-01-05'),
(209, 509, '2024-11-20'),
(210, 510, '2024-12-15');

-- @block 
-- Insert Data into JOB_OPENING table
INSERT INTO JOB_OPENING (JOB_OPENING_CODE, JOB_OPENING_DESCRIPTION, JOB_OPENING_AVAILABILITY_STATUS, QUALIFICATION_CODE, COMPANY_CODE) VALUES
(601, 'Guest Services Officer', 'Open', 201, 101),
(602, 'IT Support Specialist', 'Open', 202, 102),
(603, 'Junior Accountant', 'Open', 203, 103),
(604, 'Food Production Assistant', 'Open', 204, 104),
(605, 'Agricultural Technician', 'Open', 205, 105),
(606, 'Resort Project Coordinator', 'Open', 206, 106),
(607, 'Retail Store Manager', 'Open', 207, 107),
(608, 'Sales Associate', 'Open', 208, 108),
(609, 'Brewery Assistant', 'Open', 209, 109),
(610, 'Electrical Apprentice', 'Open', 210, 110);

-- @block
-- Insert Data into PLACEMENT table
INSERT INTO PLACEMENT (PLACEMENT_CODE, PLACEMENT_DATE, PLACEMENT_HOURS_WORKED, CANDIDATE_CODE, JOB_OPENING_CODE) VALUES
(701, '2025-01-10', 160, 501, 601),
(702, '2025-01-15', 150, 502, 602),
(703, '2025-01-12', 170, 503, 603),
(704, '2025-02-01', 140, 504, 604),
(705, '2025-01-20', 165, 505, 605),
(706, '2025-02-05', 155, 506, 606),
(707, '2025-01-22', 175, 507, 607),
(708, '2025-02-10', 145, 508, 608),
(709, '2025-01-25', 180, 509, 609),
(710, '2025-02-12', 160, 510, 610);

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
(810, 710, 510);

-- @block
-- Query 4
-- Find candidates who need further education (don't have required qualification for their job)
SELECT 
    c.CANDIDATE_FNAME as "First Name",
    c.CANDIDATE_LNAME as "Last Name",
    course.COURSE_DESCRIPTION as "Course Required",
    s.SESSION_START_DATE as "Course Start Date", 
    course.COURSE_FEE as "Course Cost",
    course.COURSE_FEE as "Total Cost"
FROM CANDIDATE c
JOIN PLACEMENT p ON c.CANDIDATE_CODE = p.CANDIDATE_CODE
JOIN JOB_OPENING jo ON p.JOB_OPENING_CODE = jo.JOB_OPENING_CODE
JOIN COURSE course ON jo.QUALIFICATION_CODE = course.QUALIFICATION_CODE
JOIN SESSION s ON course.COURSE_CODE = s.COURSE_CODE
LEFT JOIN EDUCATION e ON c.CANDIDATE_CODE = e.CANDIDATE_CODE 
                      AND jo.QUALIFICATION_CODE = e.QUALIFICATION_CODE
WHERE e.CANDIDATE_CODE IS NULL  -- Candidate doesn't have the required qualification
ORDER BY c.CANDIDATE_LNAME ASC;

-- @block
-- Query 5
-- Find candidates who have enrolled in sessions but haven't paid the full fee
SELECT 
    c.CANDIDATE_FNAME AS "First Name",
    c.CANDIDATE_LNAME AS "Last Name",
    s.SESSION_FEE AS "Required Fee",
    COALESCE(e.ENROLLMENT_FEE_PAYMENT, 0) AS "Amount Paid",
    (s.SESSION_FEE - COALESCE(e.ENROLLMENT_FEE_PAYMENT, 0)) AS "Outstanding Balance",
    e.ENROLLMENT_DATE AS "Enrollment Date",
    CASE 
        WHEN e.ENROLLMENT_FEE_PAYMENT IS NULL OR e.ENROLLMENT_FEE_PAYMENT = 0 THEN 'No Payment'
        WHEN e.ENROLLMENT_FEE_PAYMENT < s.SESSION_FEE THEN 'Partial Payment'
        ELSE 'Paid in Full'
    END AS "Payment Status"
FROM CANDIDATE c
JOIN ENROLLMENT e ON c.CANDIDATE_CODE = e.CANDIDATE_CODE
JOIN SESSION s ON e.SESSION_CODE = s.SESSION_CODE
WHERE 
    s.SESSION_START_DATE BETWEEN '2025-01-01' AND '2025-03-31'
    AND COALESCE(e.ENROLLMENT_FEE_PAYMENT, 0) < s.SESSION_FEE
ORDER BY c.CANDIDATE_LNAME ASC, c.CANDIDATE_FNAME ASC;

-- @block
-- Query 6
-- Count successful placements by company and job opening
-- List companies with current job openings and qualified candidates who could be shortlisted
SELECT 
    comp.COMPANY_NAME as "Company",
    jo.JOB_OPENING_DESCRIPTION as "Job Opening",
    jo.JOB_OPENING_AVAILABILITY_STATUS as "Status",
    q.QUALIFICATION_DESCRIPTION as "Required Qualification",
    c.CANDIDATE_FNAME as "Candidate First Name",
    c.CANDIDATE_LNAME as "Candidate Last Name",
    e.EDUCATION_EARNED_DATE as "Qualification Earned Date",
    COALESCE(placement_count.total_placements, 0) as "Number of Successful Placements"
FROM COMPANY comp
JOIN JOB_OPENING jo ON comp.COMPANY_CODE = jo.COMPANY_CODE
JOIN QUALIFICATION q ON jo.QUALIFICATION_CODE = q.QUALIFICATION_CODE
-- Find candidates who have the required qualification
JOIN EDUCATION e ON q.QUALIFICATION_CODE = e.QUALIFICATION_CODE
JOIN CANDIDATE c ON e.CANDIDATE_CODE = c.CANDIDATE_CODE
-- Count successful placements for each candidate
LEFT JOIN (
    SELECT 
        p.CANDIDATE_CODE,
        COUNT(*) as total_placements
    FROM PLACEMENT p
    GROUP BY p.CANDIDATE_CODE
) placement_count ON c.CANDIDATE_CODE = placement_count.CANDIDATE_CODE
WHERE jo.JOB_OPENING_AVAILABILITY_STATUS = 'Open'
ORDER BY 
    comp.COMPANY_NAME,
    jo.JOB_OPENING_DESCRIPTION,
    placement_count.total_placements DESC,
    c.CANDIDATE_LNAME ASC;