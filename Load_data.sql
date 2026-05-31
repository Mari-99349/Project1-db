INSERT IGNORE INTO MEDICINE VALUES
(1,'Tamiflu','2024-01-10','2027-01-10',850.00,'Influenza','75mg twice daily'),
(2,'Paxlovid','2024-02-15','2026-02-15',3200.00,'COVID-19','300mg twice daily'),
(3,'Rifampicin','2024-03-01','2027-03-01',450.00,'Tuberculosis','600mg daily'),
(4,'Malarone','2024-01-20','2026-01-20',1250.00,'Malaria','4 tablets daily'),
(5,'Acyclovir','2024-04-05','2027-04-05',390.00,'Chickenpox','800mg five times daily'),
(6,'Vitamin D3','2024-02-28','2027-02-28',180.00,'Vitamin D Deficiency','1000 IU daily'),
(7,'Ferrous Sulfate','2024-03-18','2027-03-18',95.00,'Iron Deficiency Anemia','325mg daily'),
(8,'Vitamin C','2024-01-12','2026-01-12',75.00,'Scurvy','500mg daily'),
(9,'Calcium Tablets','2024-04-01','2027-04-01',210.00,'Rickets','500mg twice daily'),
(10,'Vitamin A Capsules','2024-02-10','2026-02-10',130.00,'Night Blindness','10000 IU daily'),
(11,'Factor VIII Injection','2024-01-05','2025-01-05',4500.00,'Hemophilia','As prescribed'),
(12,'Hydroxyurea','2024-02-22','2026-02-22',670.00,'Sickle Cell Anemia','500mg daily'),
(13,'Trikafta','2024-03-14','2025-03-14',18500.00,'Cystic Fibrosis','Two tablets daily'),
(14,'Levothyroxine','2024-01-25','2027-01-25',160.00,'Down Syndrome','50mcg daily'),
(15,'Deferasirox','2024-04-11','2026-04-11',2400.00,'Thalassemia','20mg daily'),
(16,'Metformin','2024-02-08','2027-02-08',120.00,'Diabetes','500mg twice daily'),
(17,'Atorvastatin','2024-03-30','2027-03-30',310.00,'Heart Disease','20mg daily'),
(18,'Amlodipine','2024-01-18','2026-01-18',140.00,'Hypertension','5mg daily'),
(19,'Ventolin Inhaler','2024-04-03','2026-04-03',95.00,'Asthma','2 puffs when needed'),
(20,'Ibuprofen','2024-02-27','2027-02-27',85.00,'Arthritis','400mg every 8 hours');


INSERT IGNORE INTO DISEASE VALUES
(1,'Influenza','Infectious Disease'),
(2,'COVID-19','Infectious Disease'),
(3,'Tuberculosis','Infectious Disease'),
(4,'Malaria','Infectious Disease'),
(5,'Chickenpox','Infectious Disease'),
(6,'Vitamin D Deficiency','Deficiency Disease'),
(7,'Iron Deficiency Anemia','Deficiency Disease'),
(8,'Scurvy','Deficiency Disease'),
(9,'Rickets','Deficiency Disease'),
(10,'Night Blindness','Deficiency Disease'),
(11,'Hemophilia','Genetic Hereditary Disease'),
(12,'Sickle Cell Anemia','Genetic Hereditary Disease'),
(13,'Cystic Fibrosis','Genetic Hereditary Disease'),
(14,'Down Syndrome','Genetic Hereditary Disease'),
(15,'Thalassemia','Genetic Hereditary Disease'),
(16,'Diabetes','Non-Genetic Hereditary Disease'),
(17,'Heart Disease','Non-Genetic Hereditary Disease'),
(18,'Hypertension','Non-Genetic Hereditary Disease'),
(19,'Asthma','Non-Genetic Hereditary Disease'),
(20,'Arthritis','Non-Genetic Hereditary Disease');


INSERT IGNORE INTO MEDICINE_DISEASE VALUES
(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (6,9), (7,7), (8,8), (9,9), 
(10,10), (11,11), (12,12), (12,15), (13,13), (14,14), (15,15), (16,16), 
(17,17), (18,18), (18,17), (19,19), (20,20);


INSERT IGNORE INTO doctor (doctor_ID, doctor_Name, qualification, specialization) VALUES
(001,'Mohamed Gamal','2 years of infectious disease fellowship, Pediatrics Residency ,DM in Infectious diseases', ' Infectious Diseases'),
(002, 'Akram Elsawy',' 3 years of infectious disease fellowship, DM in Infectious Diseases', 'Infectious Diseases'),
(003,'Ziad Hassan',' 2  years of pulmonary fellowship, DM in  Pulmology', 'Pulmonology'),
(004, 'Peter Waleed',' DM in Infectious Diseases', 'Infectious Diseases'),
(005,' Ola Farouk','  2 years of Pediatrics fellowship, DM in Pediatrics', 'Pediatriology'),
(006,'Ahmed Yasser','3 years in internal medicine residency, 2 years of endorconolgy fellowship, DM in internal medicine', 'Internal Medicine '),
(007,'Sara Ahmed','2 years in internal medicine residency, 3 years of internal medicine fellowship, masters in hematology', 'Hematology'),
(008,'Hassan Ali','3 years in nutrition residency, 2 years of dietetics fellowship, DM in Nutrition', 'Nutrition'),
(009,'Mona Khaled',' 3 years of endocrinology fellowship, DM in Pediatrics', 'Pediatric Endocrinology'),
(010,'Yousef Tarek',' 3 years of ophthalmology fellowship, DM in Opthalmology', 'Ophthalmology'),
(011,'Laila Samir',' DM in Hematology with cougulation disorder expertise', 'Hematology'),
(012,'Omar Nabil',' 3 years of Hematology fellowship, DM in Hematology', 'Hematology'),
(013,'Nada Fathy','3 years of pulmonology fellowship, DM in Pulmonology', 'Pulmonology'),
(014,'Tamer Adel',' 2 years of genetics fellowship, DM in Genetics', 'Genetics'),
(015,'Rania Hossam',' bachelor of medicine, master of endocrinology', 'Endocrinology'),
(016,'Amr Samir','bachelor of medicine bachelor of cardiology', 'Cardiology'),
(017,'Sara Yasser',', master of cardiology', 'Cardiology'),
(018,'Ali El-Sayed',' Bachelor of Medicine and Surgery, 2 years of general practice fellowship,', 'Pulmonology'),
(019,'Mona Khaled',' bachelor of medicine bachelor of pulmonology ', 'Pulmonology'),
(020,'Mohamed Mahmoud','bachelor of medicine, master of rheumatology', 'Rehumatology');



INSERT INTO Prescription
(doctor_id, patient_name, issue_date)
VALUES
(1, 'Ahmed Ali', '2023-01-15'),
(2, 'Sara Mohamed', '2023-02-10'),
(3, 'Omar Khaled', '2023-03-05'),
(4, 'Mona Adel', '2023-04-11'),
(5, 'Youssef Samy', '2023-05-21'),
(6, 'Nour Hassan', '2023-06-18'),
(7, 'Laila Tarek', '2023-07-09'),
(8, 'Kareem Fathy', '2023-08-14'),
(9, 'Hana Mostafa', '2023-09-02'),
(10, 'Farah Ahmed', '2023-11-02'),
(11, 'Mahmoud Yasser', '2023-11-05'),
(12, 'Salma Hany', '2023-11-08'),
(13, 'Adel Nabil', '2023-11-10'),
(14, 'Reem Tarek', '2023-11-12'),
(15, 'Mostafa Wael', '2023-11-15'),
(16, 'Dina Khaled', '2023-11-17'),
(17, 'Tamer Hesham', '2023-11-19'),
(18, 'Aya Samir', '2023-11-22'),
(19, 'Hassan Reda', '2023-11-25'),
(20, 'Ziad Emad', '2023-10-30');


INSERT INTO Prescription_Details
(prescription_id, medicine_id, quantity)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


INSERT IGNORE INTO Bill VALUES
(1,1,0.5,0.15,727.75),
(2,2,0.5,0.50,3216.00),
(3,3,0.5,0.00,227.25),
(4,4,0.5,0.20,1006.25),
(5,5,0.5,0.15,333.84),
(6,6,0.5,0.00,180.90),
(7,7,0.5,0.10,85.98),
(8,8,0.5,0.10,67.88),
(9,9,0.5,0.05,200.76),
(10,10,0.5,0.15,117.65),
(11,11,0.5,0.00,4522.50),
(12,12,0.5,0.30,473.37),
(13,13,0.5,0.15,15787.50),
(14,14,0.5,0.05,153.04),
(15,15,0.5,0.30,1696.80),
(16,16,0.5,0.00,120.60),
(17,17,0.5,0.00,311.55),
(18,18,0.5,0.20,112.70),
(19,19,0.5,0.10,85.98),
(20,20,0.5,0.05,81.68);