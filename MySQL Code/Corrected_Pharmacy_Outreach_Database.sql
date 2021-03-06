CREATE TABLE `Health`
(
  `Patient_ID` int PRIMARY KEY,
  `Session_date` date,
  `History` varchar(255),
  `Allergies` text,
  `A1C` float4,
  `Systolic` int,
  `Diastolic` int,
  `Fasting_Blood_Glucose` int,
  `After_Eating_Blood_Glucose` int,
  `Random_Blood_Glucose` int,
  `HDL` int,
  `LDL` int,
  `Triglycerides_mg` int,
  `Cholesterol_mg` int,
  `Weight_lb` float(5,2),
  `Height_ft` float(4,2),
  `BMI` float(3,1)
);
CREATE INDEX CompositeHealth ON Health(Patient_ID, Session_date);
CREATE TABLE `Insurance`
(
  `Plan_Name` varchar(255),
  `Cardholder_ID` varchar(255),
  `Patient_ID` int,
  `bin` int,
  `PCN` int,
  `Group_number` varchar(255)

);
CREATE INDEX CompositeInsurance ON Insurance(Plan_Name, Cardholder_ID, Patient_ID);
CREATE TABLE `Patients`
(
  `Patient_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255),
  `DOB` date,
  `Gender` varchar(255),
  `Race` varchar(255),
  `Ethnicity` varchar(255),
  `Number_Of_Pharmacies` tinyint,
  `Mail_Order_Scripts` boolean,
  `Diabetes` boolean,
  `Hypertension` boolean,
  `Dyslipidemia` boolean,
  `Chronic_Heart_failure` boolean,
  `End_Stage_Renal_Disease` boolean,
  `Cardiovascular_Disorders` boolean,
  `Anticoagulation` boolean,
  `Other` text,
  PRIMARY KEY (`Patient_ID`)
);
CREATE TABLE `Prescriber`
(
  `Prescriber_ID` int NOT NULL AUTO_INCREMENT,
  `p_Date` date,
  `Patient_ID` int,
  `Name` varchar(255),
  `Phone_Number` varchar(255),
  PRIMARY KEY (`Prescriber_ID`)
);
CREATE INDEX CompositePrescriber ON Prescriber(Prescriber_ID, p_Date, Patient_ID);
CREATE TABLE `Immunization`
(
  `Patient_ID` int PRIMARY KEY,
  `Immunization_date` date ,
  `Vaccine` varchar(255),
  `Needs_Flu` boolean,
  `Needs_Pneumonia` boolean,
  `Needs_Shingles` boolean,
  `Needs_HepatitusB` boolean,
  `Needs_Update_Records` boolean,
  `Comments` text
);
CREATE INDEX CompositeImmunization ON Immunization(Patient_ID, Immunization_date, Vaccine);
CREATE TABLE `Sessions`
(
  `Session_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` int,
  `Facility` varchar(255),
  `Session_Date` date,
  `Rph` varchar(255),
  `Type_Of_Session` varchar(255),
  `Reason_For_Session` varchar(255),
  `Documentation_Time` timestamp,
  `Prep_Time` int,
  `Start_Time` timestamp,
  `End_Time` timestamp,
  `Total_Session_Time` int,
  `Written_CMR_Summary` boolean,
  `written_TMR_Summary` boolean,
  `written_DESS_Summary` boolean,
  `Education_Materials` boolean,
  `Reminder_List` boolean,
  `Blood_Glucose_Diary` boolean,
  `Wallet_Card` boolean,
  `Medication_History` boolean,
  `Labratories_History` boolean,
  `Alternative_Language_Translations` boolean,
  `FollowUp_Recommendation` varchar(255),
  PRIMARY KEY (`Session_ID`)

);
CREATE INDEX PatientID ON Sessions(Patient_ID);
CREATE TABLE `Session_Questions_And_Answers`
(
  `Questions_ID` int PRIMARY KEY,
   `Session_ID` int,
  `Questions_Date` date,
  `Question_1` varchar(255),
  `Question_2` varchar(255),
  `Question_3` varchar(255),
  `Question_4` varchar(255),
  `Question_5` varchar(255),
  `Answer_1` varchar(255),
  `Answer_2` varchar(255),
  `Answer_3` varchar(255),
  `Answer_4` varchar(255),
  `Answer_5` varchar(255)
);
CREATE INDEX CompositeQA ON Session_Questions_And_Answers(Questions_ID, Session_ID, Questions_Date);
CREATE TABLE `Questions`
(
  `Questions_ID` int ,
  `Questions_Date` date,
  `Question_1` varchar(255),
  `Question_2` varchar(255),
  `Question_3` varchar(255),
  `Question_4` varchar(255),
  `Question_5` varchar(255),
  `Answer_ID` int

);
CREATE INDEX CompositeQuestions ON Questions(Questions_ID, Questions_Date );
CREATE INDEX FK_Answers on Questions(Answer_ID);
CREATE TABLE `Answers`
(
  `Answer_ID` int NOT NULL AUTO_INCREMENT,
  `Answer_1` varchar(255),
  `Answer_2` varchar(255),
  `Answer_3` varchar(255),
  `Answer_4` varchar(255),
  `Answer_5` varchar(255),
  PRIMARY KEY (`Answer_ID`)
);
CREATE TABLE `Diabetes_Education_And_Support_Session`
(
  `Patient_ID` int PRIMARY KEY,
  `Session_Date` date,
  `Initial_Level_Of_Confidence_Blood_Sugar` varchar(255),
  `Initial_Level_Of_Confidence_Weight_Control` varchar(255),
  `Initial_Level_Of_Confidence_Medication` varchar(255),
  `Initial_Level_Of_Confidence_Exercise` varchar(255),
  `Post_Session_Level_Of_Confidence` varchar(255),
  `Frequency_Of_Dental_Care` varchar(255),
  `Frequency_Of_Foot_Care` varchar(255),
  `Frequency_Of_Eye_Care` varchar(255),
  `Diabetic_Primary_Care_Visits` varchar(255),
  `Diabetic_Emergency_Room_Visits` varchar(255),
  `Diabetic_Hospital_Visits` varchar(255),
  `Exercise_Behaviors` varchar(255),
  `Exerrcise_Barriers` varchar(255),
  `Exercise_Recommendations` varchar(255),
  `Exercise_Intervention` varchar(255),
  `Blood_Glucose_Monitoring_Behaviors` varchar(255),
  `Blood_Glucose_Monitoring_Barriers` varchar(255),
  `Blood_Glucose_Monitoring_Recommendations` varchar(255),
  `Blood_Glucose_Monitoring_Intervention` varchar(255),
  `Foot_Exam_Behaviors` varchar(255),
  `Foot_Exam__Barriers` varchar(255),
  `Foot_Exam__Recommendations` varchar(255),
  `Foot_Exam__Intervention` varchar(255),
  `Nutrition_Behaviors` varchar(255),
  `Nutrition_Barriers` varchar(255),
  `Nutrition__Recommendations` varchar(255),
  `Nutrition__Intervention` varchar(255)
);
CREATE INDEX CompositeDESS ON Diabetes_Education_And_Support_Session(Patient_ID, Session_Date );
CREATE TABLE `Medication_Review_Session`
(
  `Patient_ID` int PRIMARY KEY,
  `Drug_ID` int,
  `Session_Date` date,
  `Instructions` varchar(255),
  `Indication` varchar(255),
  `How_Long_Taking` varchar(255),
  `Adherence` boolean,
  `Side_Effects` boolean,
  `Administration_Technique` boolean,
  `Formulary_Friendly` boolean
);
CREATE INDEX CompositeMedReview ON Medication_Review_Session(Patient_ID, Drug_ID, Session_Date );
CREATE TABLE `Drug`
(
  `Drug_Id` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(255),
  `Name` varchar(255),
  `Part_D_1` varchar(255),
  `Part_D_2` varchar(255),
  `Strength` varchar(255),
  `Unit` varchar(255),
  PRIMARY KEY (`Drug_Id`)
);
CREATE TABLE `Medication_Related_Problem`
(
  `Patient_ID` int PRIMARY KEY,
  `Medication_Related_Problem_Code` varchar(255) ,
  `Drug_ID` int
);
CREATE INDEX CompositeMRP ON Medication_Related_Problem(Patient_ID, Medication_Related_Problem_Code, Drug_ID );
CREATE INDEX MRP_Index on Medication_Related_Problem (Medication_Related_Problem_Code);
CREATE TABLE `Medication_Related_Problem_Categories`
(
  `Medication_Related_Problem_Code` varchar(255) PRIMARY KEY,
  `Category` varchar(255),
  `Action_Plan` text
);
ALTER TABLE `Prescriber` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Immunization` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Insurance` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Health` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Sessions` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Session_Questions_And_Answers` ADD FOREIGN KEY (`Session_ID`) REFERENCES `Sessions` (`Session_ID`);

ALTER TABLE `Diabetes_Education_And_Support_Session` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Medication_Review_Session` ADD FOREIGN KEY (`Patient_ID`) REFERENCES `Patients` (`Patient_ID`);

ALTER TABLE `Medication_Review_Session` ADD FOREIGN KEY (`Drug_ID`) REFERENCES `Drug` (`Drug_Id`);

ALTER TABLE `Medication_Related_Problem` ADD FOREIGN KEY (`Drug_ID`) REFERENCES `Medication_Review_Session` (`Drug_ID`);

ALTER TABLE `Medication_Related_Problem_Categories` ADD FOREIGN KEY (`Medication_Related_Problem_Code`) REFERENCES `Medication_Related_Problem` (`Medication_Related_Problem_Code`);

ALTER TABLE `Answers` ADD FOREIGN KEY (`Answer_ID`) REFERENCES `Questions` (`Answer_ID`);
