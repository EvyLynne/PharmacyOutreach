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
