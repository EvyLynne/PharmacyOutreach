VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} frmTest 
   Caption         =   "Testing"
   ClientHeight    =   3040
   ClientLeft      =   110
   ClientTop       =   450
   ClientWidth     =   4580
   OleObjectBlob   =   "frmTest.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "frmTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'Private Sub UserForm_Initialize()
'
'
''This subroutine succesfully opens a connection to a lcoal MySQL server database and reads from it and writes to it
'
'' https://docs.microsoft.com/en-us/sql/ado/guide/appendixes/using-ado-with-microsoft-visual-basic?view=sql-server-2017
'' https://dev.mysql.com/doc/connector-odbc/en/connector-odbc-examples-programming-vb-ado.html
'' http://p2p.wrox.com/excel-vba/39128-adodb-connection-user-defined-type-not-defined.html
'
'    Dim conn As ADODB.connection
'
'    Dim rs As ADODB.Recordset
'    Dim fld As ADODB.Field
'    Dim sql As String
'
'    Dim Server_Name As String
'    Dim Database_Name As String
'    Dim Server_Password As String
'
'    Server_Name = "localhost"
'    Database_Name = "mydb"
'    Server_Password = "Pookaloo400"
'    Dim Connection_String As String
'
'    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
'    Connection_String = Connection_String & "Server=" & Server_Name & ";"
'    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
'    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
'
'    Set conn = New ADODB.connection
'
'   ' conn.ConnectionString = "Driver={MySQL ODBC 5.3 ANSI Driver};" & "Server=localhost;" & " DATABASE=mydb;" & "UID=root;PWD=Pookaloo400; OPTION=3"
'    conn.ConnectionString = Connection_String
'    conn.Open
'
'    Set rs = New ADODB.Recordset
'
'    rs.CursorLocation = adUseServer
'    rs.Open "SELECT * FROM patients_tbl", conn

''    Do Until rs.EOF
''        For Each fld In rs.Fields
''            MsgBox (fld.Name)
''
''        Next
''        rs.MoveNext
''       ' Debug.Print
''    Loop

'
'    'conn.Execute "INSERT INTO patients_tbl(Patients_ID,Name,DOB,InsuranceID) values(3,'Fluffy Furball','November 15, 1960',754)"
'    'rs.Close
'    insurance.Close
'    conn.Close
'
'End Sub
Private Sub btnGo_Click()

'    Dim conn As ADODB.connection
'
'    Dim rs As ADODB.Recordset
'    Dim fld As ADODB.Field
'    Dim sql As String
'
'    Dim Server_Name As String
'    Dim Database_Name As String
'    Dim Server_Password As String
'
'    Server_Name = "localhost"
'    Database_Name = "secure_schema"
'    Server_Password = "Pookaloo400"
'    Dim Connection_String As String
'
'    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
'    Connection_String = Connection_String & "Server=" & Server_Name & ";"
'    Connection_String = Connection_String & " DATABASE=" & Database_Name & ";"
'    Connection_String = Connection_String & "UID=root;PWD=" & Server_Password & "; OPTION=3"
'
'    Set conn = New ADODB.connection
'
'   ' conn.ConnectionString = "Driver={MySQL ODBC 5.3 ANSI Driver};" & "Server=localhost;" & " DATABASE=mydb;" & "UID=root;PWD=Pookaloo400; OPTION=3"
'    conn.ConnectionString = Connection_String
'    conn.Open

'    Set rs = New ADODB.Recordset
'
'    rs.CursorLocation = adUseServer
'    rs.Open "SELECT * FROM rolesrights_tbl", conn
'    Do Until rs.EOF
'        For Each fld In rs.Fields
'            MsgBox (fld.Value)
'
'        Next
'        rs.MoveNext
'       ' Debug.Print
'    Loop


'    Dim in_data As New Database
'
'    in_data.create_user "nothing", "nowhere"
'    MsgBox "Done"
    Dim db As New Database
    Dim stuff As String
    
    db.create_user "Test Frieda User", "1987-09-09", "Test User Frieda Name", "admin"

stuff = db.read_user("patient", "Penguin", "Password")
MsgBox stuff


'    Dim encrypt As New CSHA256
'    Dim encrypted As Sting
'    encrypted = encrypt.SHA256("password")
'    MsgBox Len(encrypted)

End Sub
