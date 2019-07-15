VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} frmTesting 
   Caption         =   "Test"
   ClientHeight    =   3040
   ClientLeft      =   110
   ClientTop       =   450
   ClientWidth     =   7660
   OleObjectBlob   =   "frmTesting.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "frmTesting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub btnTest_Click()
  
Dim db As DatabaseIO
db.test_query
    
End Sub

Private Sub btnTry_Click()
    
Dim fo As New FileIO
Dim filepath As String
filepath = "D:\Evelyn\Education\CSC 499 - Pharm Internship\Design Documents\WorkingFolder\PharmacyOutreach\Data Files"
filepath = filepath & "\MRPRecommendations.csv"
Dim stuff As String
stuff = "new"

    Dim trial() As String
'    trial(1) = "fred"
'    trial(2) = "alice"
'    trial(3) = "frankie"
'    trial(4) = "solomon"
'    trial(5) = "wallie"

    trial = fo.readCSV_into_array(filepath)
    
    For i = 0 To UBound(trial)
        MsgBox trial(i)
    
    Next i
    

End Sub
Private Sub UserForm_Initialize()
'    Dim fo As New FileIO
'    Dim filepath As String
'    filepath = "D:\Evelyn\Education\CSC 499 - Pharm Internship\Design Documents\WorkingFolder\PharmacyOutreach\Data Files"
'    Dim trial(1 To 5) As String
'    filepath = filepath & "\MedDDrugClass.csv"
'    trial(1) = "fred"
'    trial(2) = "alice"
'    trial(3) = "frankie"
'    trial(4) = "solomon"
'    trial(5) = "wallie"
    'fo.writeCSV filepath, trial
   ' fo.readCSV filepath, Me.cboTest
   'fo.readCSV_into_comboBox filepath, Me.cboTest
   
  ' fo.readCSV_into_array (filepath)
End Sub
