VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "DatabaseIO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Public Sub CreatePatientRecord()
'Fields:

'DOB
'Gender
'Race
'Ethnicity


End Sub
Public Sub ReadLastVisitSummary()
'Will display Type of last visit and what was covered
End Sub

Public Sub CreateSession()
'These fields are for all sessions so
'this method can be used throughout any session
'Fields:
'Session ID -- AutoGenerate and provided by db
'Patient ID -- from Patient table
'Facility -- always null for now
'Date -- current date
'Rph
'Type of Session -- global variable
'Reason for Session
'Documenation Time
'Prep time
'Start time
'End time
'TotalSessionTime

End Sub
Public Sub CreateImmunizationRecord()
'Fields:
'Patient ID -- from Patient table
'Date -- current date
'Vaccine
'Needs Flu
'Needs Pneumonia
'Needs Shingles
'Needs Tetanus
'Needs Hepatitus B
'Needs Updated Records
'Comments

End Sub

Public Sub CreateHealthRecord()
'Fields:
'Patient ID -- from Patient table
'Date -- current date
'History
'Allergies
'A1C
'Systolic
'Diastolic
'Fasting blood glucose
'After eating blood glucose
'Random blood glucose
'HDL
'LDL
'Triglyclerides
'Cholesterol
'Weight
'Height
'BMI

End Sub
Public Sub CreatePrescriberRecord()
'Fields:
'Patient ID -- from Patient table
'Date -- current date
'Name of prescriber
'Phone number

End Sub
Public Sub CreateInsuranceRecord()

'Plan Name
'CHID
'BIN
'PCN
'Group

End Sub

Public Sub CreatePharmacyInformation()
'TODO: use UpdatePatientRecord when created
End Sub

Public Sub UpdateHealthConditions()
'TODO: use UpdatePatientRecord when created
End Sub
Public Sub UpdateDiabetesLaboratories()
'TODO: use UpdateHealthRecord when created
End Sub

Public Sub CreateMedicationInformation()
'Fields:
'Drug ID
'Category
'Name
'Part D 1
'Part D 2
'Strength
'Unit


End Sub

Public Sub CreateMedicationReviewInformation()
'Fields:
'Patient ID -- from Patient table
'Drug ID -- from table OR add new
'Date -- current date
'Instructions
'Indication
'How long taking?
'Adherence
'Side effects
'Administration technique
'Formulary Friendly


End Sub

Public Sub CreateMedicationRelatedProblem()
'Fields:
'Patient ID -- from Patient table
'Drug ID -- from table OR add new
'MedicationRelatedProblemCode

End Sub
Public Sub CreateMedicationRelatedProblemCategories()
'Fields:
'Patient ID -- from Patient table
'Drug ID -- from table OR add new
'MedicationRelatedProblemCode -- from MedicationRelatedProblem table

End Sub


Public Sub CreateDiabeticEducation()
'Fields:
'Patient ID -- from Patient table
'Date -- current date
' For general labs use: CreateHealthRecord
'From Laboratories screen--
'   Perception of health
'   Confidence of blood sugar control
'   Confidence weight
'   Confidence medication
'   Confidence exercise

End Sub

Public Sub AddHealthCareUtilization()
'Fields:
'Patient ID -- from DiabetesEducationAndSupportSession
'Dental Care
'Foot Care
'Eye Care
'PCP visits
'ER visits
'Hospital vistis

End Sub

Public Sub AddNutritionBehaviors()
'Fields:
'Patient ID -- from DiabetesEducationAndSupportSession
'Behavior
'Barrier
'Recommendations/Comments
End Sub

Public Sub AddExerciseBehaviors()
'Fields:
'Patient ID -- from DiabetesEducationAndSupportSession
'Behavior
'Barrier
'Recommendations/Comments
End Sub

Public Sub AddSelfMonitoringBehaviors()
'Fields:
'Patient ID -- from DiabetesEducationAndSupportSession
'Behavior
'Barrier
'Recommendations/Comments
End Sub

Public Sub AddFootExamBehaviors()
'Fields:
'Patient ID -- from DiabetesEducationAndSupportSession
'Behavior
'Barrier
'Recommendations/Comments
End Sub

Public Sub UpdateDiabetesSession()
'This method updates 2 tables
'Fields:
'Perception of self confidence
'Followup Recommendation
'Written DESS Summary
'Educational Materials
'Reminder List
'Diary
'Translations

End Sub
Public Sub UpdateTMRCMRSession()
'Fields:
'Written Medication Review Summary
'Wallet Card
'Reminder List
'Medication History
'Lab History
'Translations
End Sub
Public Sub UpdateSessionAnswers()
'This method puts in specific answers to questions for session
'Fields:
'Question ID - autoincrement generated by table
'Session ID - from session
'Date -- current date
'10 fields - 5 questions and 5 answers

End Sub

Public Function test_query() As String

   
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = ""
    Server_Password = "Pookaloo400"
    Dim Connection_String As String

    Dim conn As ADODB.connection
    Dim rs As ADODB.Recordset
    Dim fld As ADODB.field
    
    Database_Name = "test_pharmacy"
    
    Dim sql As String
    sql = ""
    Dim output As String
    output = ""
    
    sql = "SELECT * FROM patients;"
'    sql = sql & " WHERE patients_tbl.LoginID = "
'    sql = sql & Chr(34) & "Frankie" & Chr(34) & ";"

   MsgBox sql
   
    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    
    Set conn = New ADODB.connection
 
 
    
 
    conn.ConnectionString = Connection_String
    conn.Open
    
   ' conn.Execute sql
    Set rs = New ADODB.Recordset
    rs.CursorLocation = adUseServer
    rs.Open sql, conn
    Dim newness As String

     Do Until rs.EOF

        For Each fld In rs.Fields
            
            output = output & fld.Value
            newness = fld.Value
            'msgbox cannot handle null -- must test separately
        Next
        rs.MoveNext

    Loop
    
    rs.Close
    conn.Close
    test_query = output
End Function
