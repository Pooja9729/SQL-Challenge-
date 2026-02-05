Create database hospital;
USE HOSPITAL;
Create table patients(
     patient_ID INT PRIMARY KEY,
     Patient_Name varchar(50),
     Age INT,
     Gender ENUM('F','M'),
     Admission_Date DATE
     );
     
alter table patients
add Doctor_Assigned Varchar(50);

alter table patients
modify patient_name VARCHAR(100);

RENAME table patients to Patients_Info;
Truncate Table Patients_Info;
Drop table patients_info;