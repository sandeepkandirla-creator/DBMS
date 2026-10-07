CREATE DATABASE HospitalDB;
SHOW DATABASES;

USE HospitalDB;

CREATE TABLE Medicines (
    Medicine_ID INT PRIMARY KEY,
    Medicine_Name VARCHAR(50),
    Dosage VARCHAR(50),
    Purpose VARCHAR(50),
    Side_Effects VARCHAR(100)
);

SELECT * FROM Medicines;

INSERT INTO Medicines (Medicine_ID, Medicine_Name, Dosage, Purpose, Side_Effects)
VALUES
(3001, 'Calpol', '500 mg', 'Fever', 'Nausea, dizziness'),
(3002, 'Ciplox', '500 mg', 'Bacterial Infection', 'Stomach pain, diarrhea'),
(3003, 'Cetcip', '10 mg', 'Allergy', 'Drowsiness, dry mouth'),
(3004, 'Pan 40', '40 mg', 'Acidity', 'Headache, constipation'),
(3005, 'Zerodol', '100 mg', 'Pain Relief', 'Nausea, stomach upset'),
(3006, 'Montek LC', '10 mg', 'Allergy', 'Sleepiness, headache'),
(3007, 'Glimisave', '2 mg', 'Diabetes', 'Low blood sugar, sweating'),
(3008, 'Amlokind', '5 mg', 'Hypertension', 'Dizziness, fatigue'),
(3009, 'Ecosprin', '75 mg', 'Heart Protection', 'Bleeding, stomach irritation'),
(3010, 'Taxim O', '200 mg', 'Bacterial Infection', 'Vomiting, diarrhea');

ALTER TABLE Medicines
RENAME COLUMN Purpose TO Used_For;

ALTER TABLE Medicines
RENAME COLUMN Side_Effects TO Common_Side_Effects;

SELECT * FROM Medicines;

UPDATE Medicines
SET Used_For = 'Fever and Mild Pain'
WHERE Medicine_ID = 3001;

UPDATE Medicines
SET Used_For = 'Severe Bacterial Infection'
WHERE Medicine_ID = 3002;

SELECT * FROM Medicines;

SELECT Used_For, COUNT(*) AS Medicine_Count
FROM Medicines
GROUP BY Used_For;

SELECT Used_For, COUNT(*) AS Medicine_Count
FROM Medicines
GROUP BY Used_For
HAVING COUNT(*) >= 2;