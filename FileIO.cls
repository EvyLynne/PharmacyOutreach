VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "FileIO"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'VBA requires numbering files for I/O
'I reserved #1 for appending to main log file
'I reserved #2 for reading from main log file
'I reserved #3 for appending to review file


Public Sub appendLog(update As String)
'log format: [date:time]"user id""activity"

    'VBA does not allow variables to be initialized at the same time they are declared
    'Requires two lines of code
    Dim FilePath As String
    
    'If the file does not exist, VBA will create it
    'Although the system allowes for a default file path,  Application.DefaultFilePath, We went with
    'We were plannning to use a custom path to make it difficult to find the
    'log file if the System were compromised
    'However, the teacher and my partner would not be able to open this on their machines
    

    'FilePath = "D:\Evelyn\Education\CSC 462 - Secure Programming\Project\Activity.log"
    FilePath = Application.DefaultFilePath & "\Activity.log"
    'Need to specify filename, mode, and give the file a number
    Open FilePath For Append As #1
    Print #1, update
    Close #1
    
End Sub

Public Sub readLog(startDate As String)
'This function finds the starting date for the log to review and copies
'The requested information out to a temp file for review
'The system displays an error if the date is not located

'log format: [date:time]"user id""activity"
'TODO: ensure that search date is the correct format -- use input mask

    Dim InputPath As String
    Dim OutputPath As String

   
    'InputPath = "D:\Evelyn\Education\CSC 462 - Secure Programming\Project\Activity.log"
    'OutputPath = "D:\Evelyn\Education\CSC 462 - Secure Programming\Project\Review.log"
    InputPath = Application.DefaultFilePath & "\Activity.log"
    OutputPath = FilePath = Application.DefaultFilePath & "\Review.log"
    Dim nextLine As String
    nextLine = ""
    
    Dim found As Boolean
    found = False
    
    Open InputPath For Input As #2

    'If the review file exits, clear current contents
    Open OutputPath For Output As #3
    Close #3
    
    Open OutputPath For Append As #3
 
    Do While Not EOF(2) 'use file # for eof test
        Line Input #2, nextLine
   
        If Mid(nextLine, 2, 11) = startDate Then
            found = True
 
        End If
        
        If found = True Then
            Print #3, nextLine
        End If

    Loop
    
    Close #2
    Close #3
    If found = False Then
        MsgBox "No data located in logfile for date: " & startDate
    End If
    
    
End Sub
