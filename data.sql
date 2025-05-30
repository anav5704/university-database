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

-- Insert Data into QUALIFICATION table
INSERT INTO QUALIFICATION (QUALIFICATION_CODE, QUALIFICATION_DESCRIPTION) VALUES
(000, 'None'),
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


-- Insert Data into EDUCATION table
INSERT INTO EDUCATION (QUALIFICATION_CODE, CANDIDATE_CODE, EDUCATION_EARNED_DATE) VALUES
(201, 501, '2024-10-30'),  -- Aisha: Has Tourism cert, job requires Tourism - MATCH
(000, 502, '2024-11-15'),  -- Semi: Has NONE, job requires IT Diploma - MISMATCH (needs education)
(203, 503, '2024-10-25'),  -- Mere: Has Business Accounting, job requires Business Accounting - MATCH
(201, 504, '2024-12-01'),  -- Jone: Has Tourism cert, job requires Food Processing - MISMATCH (needs education)
(205, 505, '2024-11-10'),  -- Sita: Has Agricultural Science, job requires Agricultural Science - MATCH
(000, 506, '2024-12-10'),  -- Pita: Has NONE, job requires Project Management - MISMATCH (needs education)
(207, 507, '2024-11-01'),  -- Roshni: Has Commerce Management, job requires Commerce Management - MATCH
(201, 508, '2025-01-05'),  -- Viliame: Has Tourism cert, job requires Retail Management - MISMATCH (needs education)
(209, 509, '2024-11-20'),  -- Laisa: Has Brewing Technology, job requires Brewing Technology - MATCH
(000, 510, '2024-12-15'),  -- Tomasi: Has NONE, job requires Electrical Engineering - MISMATCH (needs education)
(211, 511, '2024-10-20'),  -- Sofia: Has Marine Operations, job requires Marine Operations - MATCH
(212, 512, '2024-11-05'),  -- Isikeli: Has Environmental Science, job requires Environmental Science - MATCH
(201, 513, '2024-12-01'),  -- Ana: Has Tourism cert, job requires Culinary Arts - MISMATCH (needs education)
(214, 514, '2024-11-10'),  -- Rajesh: Has Beverage Production, job requires Beverage Production - MATCH
(215, 515, '2024-12-20'),  -- Kelera: Has Traditional Medicine, job requires Traditional Medicine - MATCH
(216, 516, '2025-01-10'),  -- Josefa: Has Civil Engineering, job requires Civil Engineering - MATCH
(000, 517, '2025-02-01'),  -- Priya: Has NONE, job requires Construction Management - MISMATCH (needs education)
(218, 518, '2025-01-15'),  -- Mosese: Has Water Management, job requires Water Management - MATCH
(201, 519, '2025-02-10'),  -- Amelia: Has Tourism cert, job requires Hotel Management - MISMATCH (needs education)
(000, 520, '2025-01-25');  -- David: Has NONE, job requires Media Production - MISMATCH (needs education)

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
(710, '2025-02-12', 160, 510, 610),
(711, '2025-03-01', 150, 511, 611),
(712, '2025-03-05', 160, 512, 612),
(713, '2025-03-10', 145, 513, 613),
(714, '2025-03-15', 155, 514, 614),
(715, '2025-03-20', 165, 515, 615),
(716, '2025-03-25', 170, 516, 616),
(717, '2025-04-01', 140, 517, 617),
(718, '2025-04-05', 150, 518, 618),
(719, '2025-04-10', 160, 519, 619),
(720, '2025-04-15', 170, 520, 620);

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
(820, 720, 520);