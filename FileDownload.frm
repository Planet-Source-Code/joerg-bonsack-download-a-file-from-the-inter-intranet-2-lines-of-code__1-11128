VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   960
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' USAGE:DoFileDownload StrConv(<Your Domain and your download file/site>, vbUnicode)


Private Declare Function DoFileDownload Lib "shdocvw.dll" (ByVal lpszFile As String) As Long
Private Sub Command1_Click()
On Error GoTo ERR_OUT
   DoFileDownload StrConv("http://www.Test.com/", vbUnicode)
Exit Sub
ERR_OUT:
MsgBox "There is an error accoured"
Exit Sub
End Sub
