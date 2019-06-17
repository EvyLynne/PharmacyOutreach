CREATE TABLE `Health`
(
  `Patient_ID` int PRIMARY KEY,
  `Session_date` date PRIMARY KEY,
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

CREATE TABLE `Insurance`
(
  `Plan_Name` varchar(255) PRIMARY KEY,
  `Cardholder_ID` varchar(255) PRIMARY KEY,
  `Patient_ID` int PRIMARY KEY,
  `bin` int,
  `PCN` int,
  `Group_number` varchar(255),
  `indexes` Patient_ID
);

CREATE TABLE `Patients`
(
  `Patient_ID` int PRIMARY KEY,
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
  `Other` text
);

CREATE TABLE `Prescriber`
(
  `Prescriber_ID` int PRIMARY KEY,
  `p_Date` date PRIMARY KEY,
  `Patient_ID` int PRIMARY KEY,
  `Name` varchar(255),
  `Phone_Number` varchar(255)
);

CREATE TABLE `Immunization`
(
  `Patient_ID` int PRIMARY KEY,
  `Immunization_date` date PRIMARY KEY,
  `Vaccine` varchar(255) PRIMARY KEY,
  `Needs_Flu` boolean,
  `Needs_Pneumonia` boolean,
  `Needs_Shingles` boolean,
  `Needs_HepatitusB` boolean,
  `Needs_Update_Records` boolean,
  `Comments` text
);

CREATE TABLE `Session`
(
  `Session_ID` int PRIMARY KEY,
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
  `indexes` Patient_ID
);

CREATE TABLE `SessionQuestionsAndAnswers`
(
  `Questions_ID` int PRIMARY KEY,
  `Session_ID` int PRIMARY KEY,
  `Questions_Date` date PRIMARY KEY,
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

CREATE TABLE `Questions`
(
  `Questions_ID` int PRIMARY KEY,
  `Questions_Date` date PRIMARY KEY,
  `Question_1` varchar(255),
  `Question_2` varchar(255),
  `Question_3` varchar(255),
  `Question_4` varchar(255),
  `Question_5` varchar(255),
  `Answer_ID` int
);

CREATE TABLE `Answers`
(
  `Answer_ID` int PRIMARY KEY,
  `Answer_1` varchar(255),
  `Answer_2` varchar(255),
  `Answer_3` varchar(255),
  `Answer_4` varchar(255),
  `Answer_5` varchar(255)
);

CREATE TABLE `Diabetes_Education_And_Support_Session`
(
  `Patient_ID` int PRIMARY KEY,
  `Session_Date` date PRIMARY KEY,
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

CREATE TABLE `Medication_Review_Session`
(
  `Patient_ID` int PRIMARY KEY,
  `Drug_ID` int PRIMARY KEY,
  `Session_Date` date PRIMARY KEY,
  `Instructions` varchar(255),
  `Indication` varchar(255),
  `How_Long_Taking` varchar(255),
  `Adherence` boolean,
  `Side_Effects` boolean,
  `Administration_Technique` boolean,
  `Formulary_Friendly` boolean
);

CREATE TABLE `Drug`
(
  `Drug_Id` int PRIMARY KEY,
  `Category` varchar(255),
  `Name` varchar(255),
  `Part_D_1` varchar(255),
  `Part_D_2` varchar(255),
  `Strength` varchar(255),
  `Unit` varchar(255)
);

CREATE TABLE `Medication_Related_Problem`
(
  `Patient_ID` int PRIMARY KEY,
  `Medication_Related_Problem_Code` varchar(255) PRIMARY KEY,
  `Drug_ID` int PRIMARY KEY
);

CREATE TABLE `Medication_Related_Problem_Categories`
(
  `Medication_Related_Problem_Code` varchar(255) PRIMARY KEY,
  `Category` varchar(255),
  `Action_Plan` text
);

