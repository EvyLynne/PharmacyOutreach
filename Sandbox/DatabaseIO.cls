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

Public Sub test_query()
'Create variables for db connection

Dim conn As ADODB.connection
Dim rs As ADODB.Recordset
Dim fld As ADODB.field

Dim Server_Name As String
Dim Database_Name As String
Dim Server_Password As String
Dim Connection_String As String

'Create variables to query db

Dim sql As String
Dim Query_Results As String

'Create connection string

Server_Name = "localhost"
Server_Name = "pharm_secure"
Server_Password = "Pookaloo400"

    Connection_String = "Driver={MySQL ODBC 5.3 ANSI Driver};"
    Connection_String = Connection_String & "Server=localhost;"
    Connection_String = Connection_String & " DATABASE=pharm_secure;"
    Connection_String = Connection_String & "UID=root;PWD=Pookaloo400;OPTION=3"
 


'Temporary hard-coded values for testing


Set conn = New ADODB.connection
conn.ConnectionString = Connection_String
conn.Open
conn.Close


End Sub
