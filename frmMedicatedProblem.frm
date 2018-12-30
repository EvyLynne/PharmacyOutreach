VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} frmMedicatedProblem 
   Caption         =   "Medication Related Problem"
   ClientHeight    =   3530
   ClientLeft      =   110
   ClientTop       =   450
   ClientWidth     =   5510
   OleObjectBlob   =   "frmMedicatedProblem.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "frmMedicatedProblem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cboMRP_Change()
    If Me.cboMRP.ListIndex = 0 Then
       MsgBox ("I1")
    ElseIf Me.cboMRP.ListIndex = 1 Then
        MsgBox ("I2")
    ElseIf Me.cboMRP.ListIndex = 2 Then
            MsgBox ("I3")
    ElseIf Me.cboMRP.ListIndex = 3 Then
        MsgBox ("M1")
    ElseIf Me.cboMRP.ListIndex = 4 Then
        MsgBox ("S1")
    ElseIf Me.cboMRP.ListIndex = 5 Then
        MsgBox ("S2")
    ElseIf Me.cboMRP.ListIndex = 6 Then
        MsgBox ("S3")
    ElseIf Me.cboMRP.ListIndex = 7 Then
        MsgBox ("S4")
    ElseIf Me.cboMRP.ListIndex = 8 Then
        MsgBox ("S5")
    ElseIf Me.cboMRP.ListIndex = 9 Then
        MsgBox ("E1")
    ElseIf Me.cboMRP.ListIndex = 10 Then
        MsgBox ("E2")
    ElseIf Me.cboMRP.ListIndex = 11 Then
        MsgBox ("E3")
    ElseIf Me.cboMRP.ListIndex = 12 Then
        MsgBox ("E4")
    ElseIf Me.cboMRP.ListIndex = 13 Then
        MsgBox ("A1")
    ElseIf Me.cboMRP.ListIndex = 14 Then
        MsgBox ("A2")
    ElseIf Me.cboMRP.ListIndex = 15 Then
        MsgBox ("A3")
    ElseIf Me.cboMRP.ListIndex = 16 Then
        MsgBox ("A4")
    ElseIf Me.cboMRP.ListIndex = 17 Then
        MsgBox ("A5")
    ElseIf Me.cboMRP.ListIndex = 18 Then
        MsgBox ("A6")
    ElseIf Me.cboMRP.ListIndex = 19 Then
        MsgBox ("A7")
    ElseIf Me.cboMRP.ListIndex = 20 Then
        MsgBox ("D1")
    ElseIf Me.cboMRP.ListIndex = 21 Then
        MsgBox ("D2")
    ElseIf Me.cboMRP.ListIndex = 22 Then
        MsgBox ("D3")
    ElseIf Me.cboMRP.ListIndex = 23 Then
        MsgBox ("D4")
    ElseIf Me.cboMRP.ListIndex = 24 Then
        MsgBox ("D5")
    ElseIf Me.cboMRP.ListIndex = 25 Then
        MsgBox ("D6")
    Else:
        MsgBox ("D7")
    End If
End Sub


Private Sub UserForm_Initialize()
txtActionPlan.TextAlign = fmTextAlignCenter

With cboMRP
        .ForeColor = Black
        .Width = 200
        .AddItem "I1 Medication without indication"
        .AddItem "I2 Duplicate therapy"
        .AddItem "I3 Indication without medication"
        .AddItem "M1 Lab test indicated"
        .AddItem "S1 Dose too high"
        
        .AddItem "S2 ADR"
        .AddItem "S3 Drug interaction"
        .AddItem "S4 High risk medication"
        .AddItem "S5 Unnecessary drug"
        .AddItem "E1 Dose too low"
        
        .AddItem "E2 Improper drug"
        .AddItem "E3 Expired medication"
        .AddItem "E4 Time of day"
        .AddItem "A1 Failure to receive therapy"
        .AddItem "A2 Overutilization"
        
        .AddItem "A3 Administration challenges"
        .AddItem "A4 Cost"
        .AddItem "A5 Med organization"
        .AddItem "A6 Dose not understand instructions"
        .AddItem "A7 Prefers not to take"
        
        .AddItem "D1 Self screening of BP"
        .AddItem "D2 Self screening of diabetes"
        .AddItem "D3 Lifestyle modifications"
        .AddItem "D4 Patient care referrals"
        .AddItem "D5 Routine tests"
        
        .AddItem "D6 Disease state education"
        .AddItem "D7 self-care recommendation"
        .TextAlign = fmTextAlignCenter
    End With

        With cboRecommendations
        .ForeColor = Black
        .Width = 200
        .AddItem "Review technique of administration"
        .AddItem "Review indications"
        .AddItem "Provided drug education"
        .AddItem "Initiate Drug"
        .AddItem "Change drug"
        .AddItem "Increase home monitoring"
        .AddItem "Discontinue or substitute drug"
        .AddItem "Referral: Disease Management"
        .AddItem "Referral: Specialty Management"
        .AddItem "Referral: Case Management"
        .TextAlign = fmTextAlignCenter
    End With
    End Sub
