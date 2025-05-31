-- Vishant Kumar (S11230430) --
-- Anav Chand (S11221203) --
-- Rohan Nandan (S11234883) --
-- Zhixian Chen (S11230686) --

-- Insert data into COMPANY table --

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

-- Insert data into QUALIFICATION table --

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

-- Insert data into COURSE table --

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

-- Insert data into PREREQUISITE table --

INSERT INTO PREREQUISITE (COURSE_CODE, QUALIFICATION_CODE) VALUES
(302, 202),
(303, 203),
(306, 206),
(307, 207),
(309, 209),
(310, 210),
(301, 201),
(304, 204),
(305, 205),
(308, 208),
(311, 211),
(312, 212),
(313, 213),
(314, 214),
(315, 215),
(316, 216),
(317, 217),
(318, 218),
(319, 219),
(320, 220); 

-- Insert data into SESSION table --

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
(410, '2024-09-05', 1150.00, 310),
(411, '2024-10-10', 900.00, 311),
(412, '2024-11-01', 1000.00, 312),
(413, '2024-10-20', 1400.00, 313),
(414, '2024-11-15', 850.00, 314),
(415, '2024-10-05', 750.00, 315),
(416, '2024-12-01', 1350.00, 316),
(417, '2024-11-20', 950.00, 317),
(418, '2024-12-10', 1100.00, 318),
(419, '2024-11-25', 1000.00, 319),
(420, '2024-12-15', 800.00, 320);

-- Insert data into CANDIDATE table --

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

-- Insert data into ENROLLMENT table --

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

-- Insert data into EDUCATION table --

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

-- Insert data into JOB_OPENING table --

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

-- Insert data into PLACEMENT table --

INSERT INTO PLACEMENT (PLACEMENT_CODE, PLACEMENT_DATE, PLACEMENT_HOURS_WORKED, CANDIDATE_CODE, JOB_OPENING_CODE) VALUES
(701, '2025-01-10', 160, 501, 601),
(702, '2025-01-12', 150, 502, 601),
(703, '2025-01-15', 155, 503, 601),
(704, '2025-01-20', 165, 504, 602),
(705, '2025-01-22', 170, 505, 602),
(706, '2025-02-01', 140, 506, 603),
(707, '2025-02-03', 145, 507, 603),
(708, '2025-02-05', 150, 508, 603),
(709, '2025-02-10', 160, 509, 604),
(710, '2025-02-12', 155, 510, 604),
(711, '2025-02-15', 165, 511, 605),
(712, '2025-02-18', 170, 512, 605),
(713, '2025-02-20', 160, 513, 605),
(714, '2025-03-01', 150, 514, 606),
(715, '2025-03-03', 155, 515, 606),
(716, '2025-03-05', 165, 516, 607),
(717, '2025-03-07', 170, 517, 607),
(718, '2025-03-10', 160, 518, 607),
(719, '2025-03-12', 155, 519, 608),
(720, '2025-03-15', 150, 520, 608),
(721, '2025-03-20', 165, 501, 609),
(722, '2025-03-22', 170, 502, 610),
(723, '2025-03-25', 160, 503, 611),
(724, '2025-03-28', 155, 504, 612),  
(725, '2025-03-30', 150, 505, 613);

-- Insert data into JOB_HISTORY table --

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
