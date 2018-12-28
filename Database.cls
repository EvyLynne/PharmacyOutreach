VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Database"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'
'The patient table patient_tbl has fields:
'   idPatients int(10) AI PK
'   Name varchar(45)
'   LoginID varchar(45)
'   Password varchar(80)
'   SecurityQuestion varchar(45)
'   SecurityAnswer varchar(45)
'   insurance_id_FK int(10)
'   DOB date
'   Time timestamp(4)
'   Condition enum('Diabetes','ESRD','hypertension','COPD')
'
'The pharmacist table pharmacist_tbl has fields:
'   idPharmacists_pk int(10) PK
'   Name varchar(45)
'   LoginID varchar(45)
'   Password varchar(80)
'   SecurityQuestion varchar(45)
'   SecurityAnswer varchar(45)
'   patients_id_FK int(10)
'
'The system administrator table systeamadmin_tbl has fields:
'   idSystemAdmin_pk int(10) AI PK
'   Name varchar(45)
'   LoginID varchar(45)
'   Password varchar(80)
'   SecurityQuestion varchar(45)
'   SecurityAnswer varchar(45)
'
'The roles rights table rolesrights_tbl has fields:
'idRolesRights_pk int(10) PK
'create_new tinyint(2)
'read_current tinyint(2)
'update_current tinyint(2)
'delete_current tinyint(2)
'crud_self tinyint(2)
'

Option Explicit
Public Sub create_user(name As String, date_of_birth As String, user_name As String, role As String)

'
'All fields in the tables must be populated to work with VBA
'
'Inital default values:
'   password = "password"
'   security question = "Where Am I?"
'   security answer = "Never Land"
'   insurance_id_FK = 708
'   time = current system time
'   condition = ESRD
'

    Dim conn As ADODB.connection
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = ""
    Server_Password = "Pookaloo400"
    Dim Connection_String As String
    
    Dim sql As String
    sql = ""

    Dim day As String
    day = ""
    Dim Initial_Password As String
    
    Dim encrypt As New CSHA256
    Initial_Password = encrypt.SHA256("password")

    
    Select Case role
        Case "patient"

            day = Format(Now(), "YYYY-MM-DD HH:MM:SS")
            sql = "INSERT INTO patients_tbl(patients_tbl.Name,patients_tbl.LoginID, patients_tbl.Password, patients_tbl.SecurityQuestion, patients_tbl.SecurityAnswer, patients_tbl.insurance_id_FK, patients_tbl.DOB,patients_tbl.Time,patients_tbl.Condition) "
            sql = sql & "values (" & Chr(34) & name & Chr(34) & "," & Chr(34) & user_name & Chr(34) & "," & Chr(34) & Initial_Password & Chr(34)
            sql = sql & "," & Chr(34) & "Where am I?" & Chr(34) & "," & Chr(34) & "Never Land" & Chr(34) & "," & "708" & "," & "'" & date_of_birth & "'" & "," & "'" & Format(Now(), "YYYY-MM-DD HH:MM:SS") & "'" & "," & Chr(34) & "ESRD" & Chr(34)
            sql = sql & ")"

            Database_Name = "pharm_secure"
            
        Case "pharmacist"
        
            sql = "INSERT INTO pharmacists_tbl(pharmacists_tbl.Name,pharmacists_tbl.LoginID, pharmacists_tbl.Password, pharmacists_tbl.SecurityQuestion, pharmacists_tbl.SecurityAnswer, pharmacists_tbl.patients_id_FK) "
            sql = sql & "values (" & Chr(34) & name & Chr(34) & "," & Chr(34) & user_name & Chr(34) & "," & Chr(34) & Initial_Password & Chr(34)
            sql = sql & "," & Chr(34) & "Where am I?" & Chr(34) & "," & Chr(34) & "Never Land" & Chr(34) & "," & 2
            sql = sql & ")"

            Database_Name = "pharm_secure"
            
        Case "admin"
            
            sql = "INSERT INTO systemadmin_tbl(systemadmin_tbl.Name,systemadmin_tbl.LoginID, systemadmin_tbl.Password, systemadmin_tbl.SecurityQuestion, systemadmin_tbl.SecurityAnswer) "
            sql = sql & "values (" & Chr(34) & name & Chr(34) & "," & Chr(34) & user_name & Chr(34) & "," & Chr(34) & Initial_Password & Chr(34)
            sql = sql & "," & Chr(34) & "Where am I?" & Chr(34) & "," & Chr(34) & "Never Land" & Chr(34)
            sql = sql & ")"

            Database_Name = "secure_schema"
            
        Case Else
            MsgBox "Invalid user role entered"
    End Select
    
    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Set conn = New ADODB.connection
    
    conn.ConnectionString = Connection_String
    conn.Open
    
    'MySQL will refuse adding a new row to a column if there is a fk-pk constraint in place
    'need to temporarily disable check
    conn.Execute "SET FOREIGN_KEY_CHECKS=0;"
    conn.Execute sql
    conn.Execute "SET FOREIGN_KEY_CHECKS=1;"

    conn.Close

    
End Sub

'TODO: complete sql select statements
Public Function read_user(role As String, username As String, data As String) As String


    Dim conn As ADODB.connection
    Dim rs As ADODB.Recordset
    Dim fld As ADODB.field
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = ""
    Server_Password = "Pookaloo400"
    Dim Connection_String As String

    Dim sql As String
    sql = ""
    
    Select Case role
        Case "patient"
        
            sql = "SELECT * FROM patients_tbl"
            sql = sql & " WHERE patients_tbl.LoginID = "
            sql = sql & Chr(34) & username & Chr(34) & ";"

            Database_Name = "pharm_secure"
            
        Case "pharmacist"
        
            sql = "SELECT * FROM pharmacists_tbl"
            sql = sql & " WHERE pharmacists_tbl.LoginID = "
            sql = sql & Chr(34) & username & Chr(34) & ";"

            Database_Name = "pharm_secure"
            
        Case "admin"
            
            sql = "SELECT * FROM systemadmin_tbl"
            sql = sql & " WHERE systemadmin_tbl.LoginID = "
            sql = sql & Chr(34) & username & Chr(34) & ";"

            Database_Name = "secure_schema"
            
        Case Else
            MsgBox "Invalid user role entered"
    End Select

    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Dim output_string As String
    output_string = ""
    
    Set conn = New ADODB.connection
    conn.ConnectionString = Connection_String
    conn.Open
    
    Set rs = New ADODB.Recordset
    rs.CursorLocation = adUseServer
    rs.Open sql, conn
    

     Do Until rs.EOF
        For Each fld In rs.Fields
            If fld.Value = "Name" Then
                MsgBox fld.Value
            End If
            
        Select Case data
            
            Case "Password"
        
                If fld.name = data Then
                    read_user = fld.Value
 
                End If
                
            Case "SecurityAnswer"
                If fld.name = data Then

                    read_user = fld.Value
                End If
            Case "idPharmacists_pk"
                If fld.name = data Then
                
                    read_user = fld.Value

                End If
            Case "idPatients"
                If fld.name = data Then

                    read_user = fld.Value
                End If
            Case "idSystemAdmin_pk"
                If fld.name = data Then
                    read_user = fld.Value
                End If
            Case "Name"
                If fld.name = data Then
                    MsgBox "Name is: " & fld.Value
                    read_user = fld.Value
                End If
            Case "LoginID"
                If fld.name = data Then
                    MsgBox "Login ID: " & fld.Value
                    read_user = fld.Value
                End If

            Case "DOB"
                If fld.name = data Then
                    MsgBox "Date of birth is: " & fld.Value
                    read_user = fld.Value
                End If
            Case "Time"
                If fld.name = data Then
                    MsgBox "Date and time of visit was: " & fld.Value
                    read_user = fld.Value
                End If
            Case "Condition"
                If fld.name = data Then
                    MsgBox "Medical condition is: " & fld.Value
                    read_user = fld.Value
                End If
            Case "role"
                If fld.name = data Then
                    Select Case fld.Value
                        Case 0
                            MsgBox "Your user role is set as patient"
                            read_user = "Your user role is set as patient"
                        Case 1
                            MsgBox "Your user role is set as pharmacist"
                            read_user = "Your user role is set as pharmacist"
                        Case 2
                            MsgBox "Your user role is set as system administrator"
                            read_user = "Your user role is set as system administrator"
                        Case Else
                            MsgBox "Undefined value for user role"
                            read_user = "Undefined value for user role"
                    End Select

                End If
            Case "COB"
                If fld.name = data Then
                
                    Select Case fld.Value
                        Case "Primary"
                            MsgBox "Your insurance must be billed first"
                            read_user = "Your insurance must be billed first"
                        Case "Secondary"
                            MsgBox "Other insurance must be billed first.  This is a secondary or supplemental insurance."
                            read_user = "Other insurance must be billed first.  This is a secondary or supplemental insurance."
                    End Select
                
                End If

            'NOTE: the user rights is awkward in it's user friendliness.  This is implemented this way to save time

            Case "create_new"

                    Select Case fld.Value
                        Case 0
                            MsgBox "You are not able to create new user accounts.  Please see your system administrator for assistance."
                            read_user = "You are not able to create new user accounts.  Please see your system administrator for assistance."
 
                        Case 1
                            MsgBox "You are able to create new user accounts."
                            read_user = "You are able to create new user accounts."
                    End Select
                
            Case "read_current"
                    Select Case fld.Value
                        Case 0
                            MsgBox "You are not able to read user accounts.  Please see your system administrator for assistance."
                            read_user = "You are not able to read user accounts.  Please see your system administrator for assistance."
                        Case 1
                             MsgBox "You are able to read user accounts."
                             read_user = "You are able to read user accounts."
                    End Select
            Case "update_current"

                    Select Case fld.Value
                        Case 0
                            MsgBox "You are not able to make changes to user information.  Please see your system administrator for assistance."
                            read_user = "You are not able to make changes to user information.  Please see your system administrator for assistance."
                        Case 1
                            MsgBox "You are able to make changes to user information."
                            read_user = "You are able to make changes to user information."
                    End Select
            Case "delete_current"
                    Select Case fld.Value
                        Case 0
                            MsgBox "You are not able to delete to user accounts.  Please see your system administrator for assistance."
                            read_user = "You are not able to delete to user accounts.  Please see your system administrator for assistance."
                        Case 1
                            MsgBox "You are able to delete to user accounts."
                            read_user = "You are able to delete to user accounts."
                    End Select
            Case "crud_self"
                    Select Case fld.Value
                        Case 0
                            MsgBox "You are not able to create, change or delete your own account.  Please see your system administrator for assistance."
                            read_user = "You are not able to create, change or delete your own account.  Please see your system administrator for assistance."
                        Case 1
                            MsgBox "You are able to create, change or delete your own account."
                            read_user = "You are able to create, change or delete your own account."
                    End Select
            Case Else
                Select Case fld.name
                    Case "Name"
                        output_string = "Name: " & output_string & fld.Value & vbCrLf
                    Case "LoginID"
                        output_string = output_string & "Login ID: " & fld.Value & vbCrLf
                    Case "DOB"
                        output_string = output_string & "Date of birth: " & fld.Value & vbCrLf
                    Case "Time"
                        output_string = output_string & "Your last consultation was: " & fld.Value & vbCrLf
                    Case "Condition"
                        output_string = output_string & "Medical condition: " & fld.Value
                End Select
                
        End Select
        Next
        rs.MoveNext

    Loop
    rs.Close
    conn.Close
    If output_string <> "" Then
        MsgBox output_string
        read_user = output_string
    End If
    
End Function


Public Sub update_user(role As String, username As String, field As String, data As String)
    Dim conn As ADODB.connection
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = ""
    Server_Password = "Pookaloo400"
    Dim Connection_String As String
    
    Dim sql As String
    sql = ""
    
    Dim encrypt As New CSHA256
    Dim encrypted As String
    encrypted = ""

      Select Case role
        Case "patient"
            Select Case field
                Case "name"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.name = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "loginid"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.loginid = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "password"
                    encrypted = encrypt.SHA256(data)
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.password = " & Chr(34) & encrypted & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityquestion"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.securityquestion = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityanswer"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.securityanswer = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                    'TODO: fix this update to change the fk to the correct insurance
                Case "insurance"
                    sql = "UPDATE pharm_secure.insurance_tbl RIGHT JOIN patients_tbl on insurance_tbl.idInsurance = patients_tbl.insurance_id_FK"
                    sql = sql & " SET insurance_tbl.Name = " & Chr(34) & data & Chr(34)
                    sql = sql & " WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "dob"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.dob = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "time"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.time = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case "condition"
                    sql = "UPDATE pharm_secure.patients_tbl SET patients_tbl.condition = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE patients_tbl.name = " & Chr(34) & username & Chr(34)
                Case Else
                    MsgBox "Invalid field entered"
            End Select
            
            Database_Name = "pharm_secure"
        Case "pharmacist"
            Select Case field
                Case "name"
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.name = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                Case "loginid"
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.loginid = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                Case "password"
                    encrypted = encrypt.SHA256(data)
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.password = " & Chr(34) & encrypted & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityquestion"
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.securityquestion = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityanswer"
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.securityanswer = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                    'TODO: add logic to coordinate pk - fk
                Case "patient"
                    sql = "UPDATE pharm_secure.pharmacists_tbl SET pharmacists_tbl.patient_id_FK = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE pharmacists_tbl.name = " & Chr(34) & username & Chr(34)
                Case Else
                    MsgBox "Invalid field entered"
            End Select
            Database_Name = "pharm_secure"
        Case "admin"
            Select Case field
                Case "name"
                    sql = "UPDATE secure_schema.systemadmin_tbl SET systemadmin_tbl.securityanswer = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE systemadmin_tbl.name = " & Chr(34) & username & Chr(34)
                Case "loginid"
                    sql = "UPDATE secure_schema.systemadmin_tbl SET systemadmin_tbl.loginid = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE systemadmin_tbl.name = " & Chr(34) & username & Chr(34)
                Case "password"
                    encrypted = encrypt.SHA256(data)
                    sql = "UPDATE secure_schema.systemadmin_tbl SET systemadmin_tbl.password = " & Chr(34) & encrypted & Chr(34)
                    sql = sql & "WHERE systemadmin_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityquestion"
                    sql = "UPDATE secure_schema.systemadmin_tbl SET systemadmin_tbl.securityquestion = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE systemadmin_tbl.name = " & Chr(34) & username & Chr(34)
                Case "securityanswer"
                    sql = "UPDATE secure_schema.systemadmin_tbl SET systemadmin_tbl.securityanswer = " & Chr(34) & data & Chr(34)
                    sql = sql & "WHERE systemadmin_tbl.name = " & Chr(34) & username & Chr(34)
                Case Else
                    MsgBox "Invalid field entered"
            End Select
            Database_Name = "secure_schema"
        Case Else
            MsgBox "Invalid user role entered"
    End Select


    
    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Set conn = New ADODB.connection
    
    conn.ConnectionString = Connection_String
    conn.Open
    
    'MySQL will refuse dropping a row if there is a fk-pk constraint in place
    'need to temporarily disable check
    conn.Execute "SET FOREIGN_KEY_CHECKS=0;"
    conn.Execute sql
    conn.Execute "SET FOREIGN_KEY_CHECKS=1;"

    conn.Close
End Sub

Public Sub delete_user(username As String, role As String)
    Dim conn As ADODB.connection
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = ""
    Server_Password = "Pookaloo400"
    Dim Connection_String As String
    
    Dim sql As String
    sql = ""

      Select Case role
            'WARNING:  THIS IS POTENTIALLY DESTRUCTIVE TO THE DATABASE
            'The constraints are overridden and no checking is in place to prevent violating foreign key relations
        Case "patient"
            sql = "DELETE FROM patients_tbl WHERE patients_tbl.Name = " & Chr(34) & username & Chr(34) & ";"
            Database_Name = "pharm_secure"
        Case "pharmacist"
            sql = "DELETE FROM pharmacists_tbl WHERE pharmacists_tbl.Name = " & Chr(34) & username & Chr(34) & ";"
            Database_Name = "pharm_secure"
        Case "admin"
            sql = "DELETE FROM systemadmin_tbl WHERE systemadmin_tbl.Name = " & Chr(34) & username & Chr(34) & ";"
            Database_Name = "secure_schema"
        Case Else
            MsgBox "Invalid user role entered"
    End Select

    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Set conn = New ADODB.connection
    
    conn.ConnectionString = Connection_String
    conn.Open
    
    'MySQL will refuse dropping a row if there is a fk-pk constraint in place
    'need to temporarily disable check
    conn.Execute "SET FOREIGN_KEY_CHECKS=0;"
    conn.Execute sql
    conn.Execute "SET FOREIGN_KEY_CHECKS=1;"

    conn.Close

End Sub
Public Sub create_insurance(insurance As String, cob As String)

    Dim conn As ADODB.connection
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = "pharm_secure"
    Server_Password = "Pookaloo400"
    Dim Connection_String As String
    
    Dim sql As String
    sql = "INSERT INTO pharm_secure.insurance_tbl (insurance_tbl.Name, insurance_tbl.COB) VALUES ("
    sql = sql & Chr(34) & insurance & Chr(34) & "," & Chr(34) & cob & Chr(34) & ");"
    
    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Set conn = New ADODB.connection
    
    conn.ConnectionString = Connection_String
    conn.Open
    
    'MySQL will refuse dropping a row if there is a fk-pk constraint in place
    'need to temporarily disable check
    conn.Execute "SET FOREIGN_KEY_CHECKS=0;"
    conn.Execute sql
    conn.Execute "SET FOREIGN_KEY_CHECKS=1;"

    conn.Close
End Sub

Public Sub delete_insurance(insurance As String)

    Dim conn As ADODB.connection
    
    Dim Server_Name As String
    Dim Database_Name As String
    Dim Server_Password As String
    
    Server_Name = "localhost"
    Database_Name = "pharm_secure"
    Server_Password = "Pookaloo400"
    Dim Connection_String As String
    
    'WARNING:  THIS IS POTENTIALLY DESTRUCTIVE TO THE DATABASE
    'The constraints are overridden and no checking is in place to prevent violating foreign key relations

    Dim sql As String
    sql = "DELETE FROM pharm_secure.insurance_tbl WHERE insurance_tbl.Name = "
    sql = sql & Chr(34) & insurance & Chr(34) & ";"
    
    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=" & Server_Name & ";"
    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
    
    Set conn = New ADODB.connection
    
    conn.ConnectionString = Connection_String
    conn.Open
    
    'MySQL will refuse dropping a row if there is a fk-pk constraint in place
    'need to temporarily disable check
    conn.Execute "SET FOREIGN_KEY_CHECKS=0;"
    conn.Execute sql
    conn.Execute "SET FOREIGN_KEY_CHECKS=1;"

    conn.Close
End Sub

