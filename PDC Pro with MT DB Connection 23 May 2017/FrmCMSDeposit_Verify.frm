VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Begin VB.Form FrmCMSDeposit_Verify 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Verify CMS Slip"
   ClientHeight    =   6690
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8055
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6690
   ScaleWidth      =   8055
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox lstBarcode 
      Height          =   1425
      Left            =   600
      TabIndex        =   13
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox txtBarcodeNo 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   2295
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   375
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1320
      Width           =   1695
   End
   Begin VB.TextBox txtChequeCnt 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   5280
      Locked          =   -1  'True
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   480
      Width           =   2415
   End
   Begin VB.TextBox txtSlipDate 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   2760
      Locked          =   -1  'True
      TabIndex        =   5
      TabStop         =   0   'False
      Top             =   480
      Width           =   2415
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H00FFFFFF&
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   6000
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   6120
      Width           =   1695
   End
   Begin VB.TextBox txtSlipNo 
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   2415
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H00FFFFFF&
      Caption         =   "&Accept"
      Height          =   375
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6120
      Width           =   1695
   End
   Begin VB.TextBox txtFlag 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   11160
      TabIndex        =   10
      TabStop         =   0   'False
      Text            =   "ADD"
      Top             =   240
      Visible         =   0   'False
      Width           =   495
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   4050
      Left            =   240
      TabIndex        =   7
      Top             =   1920
      Width           =   7455
      _ExtentX        =   13150
      _ExtentY        =   7144
      _Version        =   393216
      Cols            =   1
      FixedCols       =   0
      RowHeightMin    =   315
      BackColor       =   16761024
      ForeColor       =   0
      BackColorFixed  =   16744576
      ForeColorFixed  =   0
      BackColorSel    =   8388608
      ForeColorSel    =   16777215
      BackColorBkg    =   16761024
      GridColor       =   0
      AllowBigSelection=   0   'False
      FocusRect       =   0
      SelectionMode   =   1
      AllowUserResizing=   1
      Appearance      =   0
      FormatString    =   "<Cheque Barcode No"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Cheque Barcode No"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   240
      TabIndex        =   12
      Top             =   1080
      Width           =   1725
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   12000
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Cheque Count"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   5280
      TabIndex        =   11
      Top             =   240
      Width           =   1245
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "CMS Slip Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   210
      TabIndex        =   9
      Top             =   240
      Width           =   1485
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "CMS Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   2760
      TabIndex        =   8
      Top             =   240
      Width           =   870
   End
End
Attribute VB_Name = "FrmCMSDeposit_Verify"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cboChqType_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
    cmdAdd_Click
    KeyAscii = 0
    Exit Sub
End If
End Sub

Private Sub cmdAdd_Click()
On Error Resume Next
'If Grid.Rows > Val(txtChequeCnt.Text) Then
'    MsgBox "You can't add a new Cheque Entry in this slip.", vbCritical + vbOKOnly
'    Exit Sub
'End If

If Trim(txtBarcodeNo.Text) = "" Then
    MsgBox "Enter Barcode Number of the Cheque", vbCritical + vbOKOnly
    txtBarcodeNo.SetFocus
    Exit Sub
End If

'Check if we have added duplicate entry
Dim Cnt, SCnt As Integer
Dim res As Integer
For Cnt = 1 To Grid.Rows - 1
    If Grid.TextMatrix(Cnt, 0) = txtBarcodeNo.Text Then
        MsgBox "Duplicate Cheque Entry in the CMS slip.", vbInformation + vbOKOnly
        txtBarcodeNo.SetFocus
        Exit Sub
    End If
Next

'Check valid barcode
Dim FoundFlag As Boolean
FoundFlag = False
For Cnt = 0 To Me.lstBarcode.ListCount - 1
    If lstBarcode.List(Cnt) = txtBarcodeNo.Text Then
        FoundFlag = True
        Exit For
    End If
Next

'if foundflag is false just check this this cheque is missed
If FoundFlag = False Then
    FoundFlag = CheckMissingCheque(txtBarcodeNo.Text)

End If

If FoundFlag = False Then
    MsgBox "Invalid Cheque.", vbCritical + vbOKOnly
    Exit Sub
End If

With Grid
    .Rows = .Rows + 1
    .TextMatrix(.Rows - 1, 0) = Me.txtBarcodeNo.Text
End With

Me.txtBarcodeNo.Text = ""

txtBarcodeNo.SetFocus
End Sub

Private Function CheckMissingCheque(ChqBarCode As String) As Boolean
On Error GoTo ErrExit
Dim cn1 As ADODB.Connection
Set cn1 = New ADODB.Connection

cn1.ConnectionString = ModInit.ConnectStringOnline
cn1.Open

Dim rs1 As ADODB.Recordset
Set rs1 = New ADODB.Recordset

Dim rs2 As ADODB.Recordset
Set rs2 = New ADODB.Recordset

Dim rs3 As ADODB.Recordset
Set rs3 = New ADODB.Recordset

Dim rs4 As ADODB.Recordset
Set rs4 = New ADODB.Recordset

Dim SerStr As String
rs2.Open "Select * from ASPDC_DispatchSlipDetails where CCCHQIdNo ='" & ChqBarCode & "'", cn1, adOpenDynamic, adLockReadOnly
If Not (rs2.BOF And rs2.EOF) Then
    ChequeIdNo = rs2!ChqIDNo
End If
rs2.Close

rs1.Open "Select * from DepositSlipDetails where SlipCode =" & Me.txtSlipNo.Text & " and ChequeIdNo ='" & ChequeIdNo & "'", cn1, adOpenDynamic, adLockReadOnly
If Not (rs1.BOF And rs1.EOF) Then
    rs2.Open "Select * from ASPDC_DispatchSlipDetails where CCCHQIdNo ='" & ChqBarCode & "'", cn1, adOpenDynamic, adLockPessimistic
    If Not (rs2.BOF And rs2.EOF) Then
        rs2!CMSSlipCode = txtSlipNo.Text
        rs2!CMSSlipNo = txtSlipNo.Text
        rs2!CMSSlipDate = Me.txtSlipDate.Text
        rs2.Update
    End If
    rs2.Close
    CheckMissingCheque = True
Else
    CheckMissingCheque = False
End If
rs1.Close
cn1.Close
Exit Function

ErrExit:
CheckMissingCheque = False
End Function

Private Sub cmdCancel_Click()
On Error Resume Next
Unload Me
End Sub


Private Sub cmdSave_Click()
On Error GoTo ErrExit

If checkvalid = False Then Exit Sub

Me.MousePointer = vbHourglass

'Save in Mirror table on local machine
Dim cn1 As ADODB.Connection
Set cn1 = New ADODB.Connection

cn1.ConnectionString = ModInit.ConnectStringOnline
cn1.Open

Dim rsM1 As ADODB.Recordset
Set rsM1 = New ADODB.Recordset

rsM1.Open "Update ASPDC_CMS_CentreLog set CMSVerifyFlag = 1 where CMSSlipNo ='" & Me.txtSlipNo.Text & "'", cn1, adOpenDynamic, adLockPessimistic

cn1.Close

MsgBox "CMS Slip Verified successfully.", vbOKOnly + vbInformation
Unload Me
Exit Sub

ErrExit:
cn1.Close
MsgBox Err.Description
Me.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error Resume Next
txtFlag.Text = "ADD"
TxtUserName.Text = ModInit.PDCUserName
With Grid
    '<Deposit Flag|<Instrument No.|<Instrument Date|>Instrument Amount|<Bank Name|<Name of the Student|<Course|<Form No.|<Academic Year|<RcptCode|<SBEntryCode|<ChequeIdNo
    .ColWidth(0) = (.Width - 350) / (.Cols)
    .ColWidth(1) = .ColWidth(0)
    .ColWidth(2) = .ColWidth(0)
    .ColWidth(3) = .ColWidth(0)
    .ColWidth(4) = .ColWidth(0)
    .ColWidth(5) = .ColWidth(0)
    .Rows = 1
End With

End Sub

Public Sub FillGrid(SlipCode As String)
On Error Resume Next
If SlipCode = "" Then Exit Sub

Me.MousePointer = vbHourglass
Grid.Rows = 1

Dim cn1 As ADODB.Connection
Set cn1 = New ADODB.Connection

cn1.ConnectionString = ModInit.ConnectStringMirror
cn1.Open , , "panatech"

Dim rs1 As ADODB.Recordset
Set rs1 = New ADODB.Recordset

'Start mapping the two entries
Dim str As String
str = "Select * from ASPDC_DispatchSlipDetails where DispatchSlipCode ='" & Trim(UCase(SlipCode)) & "'"
rs1.Open str, cn1, adOpenDynamic, adLockReadOnly
If Not (rs1.BOF And rs1.EOF) Then
    rs1.MoveFirst
    Do While Not rs1.EOF
        Grid.Rows = Grid.Rows + 1
        Cnt = Grid.Rows - 1
        
        Grid.TextMatrix(Cnt, 0) = rs1!CCChequeNo
        Grid.TextMatrix(Cnt, 1) = rs1!CCChequeDate
        Grid.TextMatrix(Cnt, 2) = Format(rs1!CCChequeAmt, "0.00")
        Grid.TextMatrix(Cnt, 3) = rs1!CCChequeType
        Grid.TextMatrix(Cnt, 6) = rs1!CCCHQIdNo
        
    
        rs1.MoveNext
    Loop
End If
rs1.Close
cn1.Close

Me.MousePointer = 0
End Sub

Private Function checkvalid() As Boolean
On Error Resume Next
If Trim(Me.txtSlipNo.Text) = "" Then
    MsgBox "Enter CMS Slip Number.", vbInformation + vbOKOnly
    txtSlipNo.SetFocus
    checkvalid = False
    Exit Function
End If

If Val(Me.txtChequeCnt.Text) <> Grid.Rows - 1 Then
    MsgBox "You have not entered details of all cheques in the slip.", vbCritical + vbOKOnly
    Grid.SetFocus
    checkvalid = False
    Exit Function
End If

checkvalid = True
End Function


Private Sub txtBarcodeNo_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
    If Len(txtBarcodeNo.Text) <> 8 And Len(txtBarcodeNo.Text) <> 6 Then
        MsgBox "Invalid Barcode.", vbCritical + vbOKOnly
        txtBarcodeNo.Text = ""
        txtBarcodeNo.SetFocus
        Exit Sub
    Else
        cmdAdd_Click
        KeyAscii = 0
    End If
    KeyAscii = 0
End If
End Sub


Private Sub txtChequeDate_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
    If Len(txtChequeDate.Text) <> 8 Then
        MsgBox "Wrong Cheque Date.", vbCritical + vbOKOnly
        Exit Sub
    Else
        
        txtChequeAmt.SetFocus
    End If
    KeyAscii = 0
End If
End Sub

Private Sub txtChequeEntry_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
    txtChequeDate.SetFocus
    KeyAscii = 0
End If
End Sub



Private Sub txtSlipNo_KeyPress(KeyAscii As Integer)
On Error Resume Next
If KeyAscii = 13 Then
    Me.txtBarcodeNo.SetFocus
    KeyAscii = 0
    Exit Sub
End If
End Sub

Private Sub txtSlipNo_LostFocus()
On Error GoTo ErrExit
If Trim(txtSlipNo.Text) = "" Then Exit Sub

Dim cn1 As ADODB.Connection
Set cn1 = New ADODB.Connection

cn1.ConnectionString = ModInit.ConnectStringOnline
cn1.Open

Dim rs1 As ADODB.Recordset
Set rs1 = New ADODB.Recordset

Dim rs2 As ADODB.Recordset
Set rs2 = New ADODB.Recordset

Grid.Rows = 1

rs1.Open "select cmsdate, FinalChequeCnt from ASPDC_CMS_CentreLog AC where CMSSlipNo ='" & Me.txtSlipNo.Text & "'", cn1, adOpenDynamic, adLockReadOnly
If Not (rs1.BOF And rs1.EOF) Then
    txtSlipDate.Text = Format(rs1.Fields("cmsdate").Value, "dd Mmm yyyy")
    txtChequeCnt.Text = rs1.Fields("FinalChequeCnt").Value
Else
    MsgBox "Invalid CMS Slip Number.", vbCritical + vbOKOnly
    txtSlipNo.SetFocus
    Exit Sub
End If
rs1.Close

'Add all barcodes
rs1.Open "Select CCCHQIdNo from ASPDC_DispatchSlipDetails where CMSDoneFlag =1 and CMSSlipNo ='" & Me.txtSlipNo.Text & "'", cn1, adOpenDynamic, adLockReadOnly
If Not (rs1.BOF And rs1.EOF) Then
    rs1.MoveFirst
    Do While Not rs1.EOF
        Me.lstBarcode.AddItem rs1!CCCHQIdNo
        rs1.MoveNext
    Loop
End If
rs1.Close

cn1.Close
Exit Sub

ErrExit:
MsgBox Err.Description
End Sub
