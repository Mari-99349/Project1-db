DROP DATABASE IF EXISTS medicine_inventory;

CREATE DATABASE medicine_inventory;
USE medicine_inventory;
CREATE TABLE IF NOT EXISTS MEDICINE (
    medicine_id INT NOT NULL,
    medicine_name VARCHAR(100) NOT NULL,
    manufacture_date DATE NOT NULL,
    expiry_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    disease_used_for VARCHAR(100),
    dosage VARCHAR(100) NOT NULL,
    PRIMARY KEY (medicine_id)
);

CREATE TABLE IF NOT EXISTS DISEASE (
    disease_id INT NOT NULL,
    disease_name VARCHAR(100) NOT NULL,
    disease_type VARCHAR(50) NOT NULL,
    PRIMARY KEY (disease_id),
    CONSTRAINT chk_disease_type CHECK (disease_type IN ('Infectious Disease', 'Deficiency Disease', 'Genetic Hereditary Disease', 'Non-Genetic Hereditary Disease'))
);


CREATE TABLE IF NOT EXISTS MEDICINE_DISEASE (
    medicine_id INT NOT NULL,
    disease_id INT NOT NULL,
    PRIMARY KEY (medicine_id, disease_id),
    FOREIGN KEY (medicine_id) REFERENCES MEDICINE(medicine_id),
    FOREIGN KEY (disease_id) REFERENCES DISEASE(disease_id)
);

CREATE TABLE IF NOT EXISTS doctor ( 
    doctor_ID INT NOT NULL,
    doctor_Name VARCHAR(50),
    qualification VARCHAR(260),
    specialization VARCHAR(50),
    PRIMARY KEY (doctor_ID)
);


CREATE TABLE IF NOT EXISTS Prescription (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT,
    patient_name VARCHAR(100) NOT NULL,
    issue_date DATE NOT NULL,

    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Prescription_Details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    prescription_id INT,
    medicine_id INT,
    quantity INT NOT NULL,

    FOREIGN KEY (prescription_id)
        REFERENCES Prescription(prescription_id)
        ON DELETE CASCADE,

    FOREIGN KEY (medicine_id)
        REFERENCES Medicine(medicine_id)
);


CREATE TABLE IF NOT EXISTS Bill (
    bill_id INT NOT NULL AUTO_INCREMENT,
    prescription_id INT UNIQUE,
    TAX DECIMAL(5,2),
    discount DECIMAL(5,2),
    total DECIMAL(10,2),

    PRIMARY KEY (bill_id),
    FOREIGN KEY (prescription_id) REFERENCES Prescription(prescription_id)
);