-- Testing Queries - Check system functionality

-- 1) 
SELECT * FROM MEDICINE LIMIT 5;
SELECT * FROM DISEASE LIMIT 5;
SELECT * FROM DOCTOR LIMIT 5;

-- 2) 
SELECT * FROM Prescription;
SELECT * FROM Prescription_Details;

-- 3) 
SELECT * FROM Bill;

-- 4) 
INSERT INTO Prescription_Details (prescription_id, medicine_id, quantity)
VALUES (1, 3, 2);

-- 5) 
SELECT * FROM Bill WHERE prescription_id = 1;

-- 
SELECT 
    SUM(m.price * pd.quantity) AS correct_total
FROM Prescription_Details pd
JOIN MEDICINE m ON m.medicine_id = pd.medicine_id
WHERE pd.prescription_id = 1;

-- 7) 
SELECT * FROM Bill WHERE prescription_id = 1;

-- =========================================================================
-- PART 2: QUERIES 
-- =========================================================================

-- 1. Doctors with heart disease specialty
SELECT doctor_Name, qualification, specialization
FROM doctor
WHERE LOWER(specialization) LIKE '%cardio%';


-- 2. Deficiency diseases
SELECT disease_id, disease_name
FROM DISEASE
WHERE disease_type = 'Deficiency Disease'
ORDER BY disease_name;


-- 3. Most sold medicine in 2023 (handles ties better than LIMIT 1)
SELECT m.medicine_name, SUM(pd.quantity) AS total_quantity_sold
FROM PRESCRIPTION_DETAILS pd
JOIN MEDICINE m ON pd.medicine_id = m.medicine_id
JOIN Prescription p ON pd.prescription_id = p.prescription_id
WHERE p.issue_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY m.medicine_id, m.medicine_name
HAVING SUM(pd.quantity) = (
    SELECT MAX(x.total_qty)
    FROM (
        SELECT SUM(pd2.quantity) AS total_qty
        FROM PRESCRIPTION_DETAILS pd2
        JOIN Prescription p2 ON pd2.prescription_id = p2.prescription_id
        WHERE p2.issue_date BETWEEN '2023-01-01' AND '2023-12-31'
        GROUP BY pd2.medicine_id
    ) x
);