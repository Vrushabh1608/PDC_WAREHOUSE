VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form FrmInwardEntry 
   BackColor       =   &H00FFC0C0&
   Caption         =   "Inward Entry"
   ClientHeight    =   5565
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15075
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5565
   ScaleWidth      =   15075
   WindowState     =   2  'Maximized
   Begin VB.ComboBox cboStatus 
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
      ItemData        =   "FrmInwardEntry.frx":0000
      Left            =   9120
      List            =   "FrmInwardEntry.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   240
      Width           =   1935
   End
   Begin VB.CommandButton cmdShow 
      Caption         =   "Show"
      Height          =   375
      Left            =   11280
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   240
      Width           =   1695
   End
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close"
      Height          =   375
      Left            =   9720
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3840
      Width           =   1695
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   375
      Left            =   13080
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   240
      Width           =   1695
   End
   Begin MSFlexGridLib.MSFlexGrid Grid 
      Height          =   2730
      Left            =   240
      TabIndex        =   5
      Top             =   840
      Width           =   12135
      _ExtentX        =   21405
      _ExtentY        =   4815
      _Version        =   393216
      Cols            =   10
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
      ScrollBars      =   2
      SelectionMode   =   1
      AllowUserResizing=   1
      Appearance      =   0
      FormatString    =   $"FrmInwardEntry.frx":0029
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
   Begin MSComCtl2.DTPicker dtFrom 
      Height          =   315
      Left            =   2280
      TabIndex        =   0
      Top             =   240
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CustomFormat    =   "dd MMM yyyy"
      Format          =   138346499
      CurrentDate     =   39310
   End
   Begin MSComCtl2.DTPicker dtTo 
      Height          =   315
      Left            =   6120
      TabIndex        =   1
      Top             =   240
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   556
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CustomFormat    =   "dd MMM yyyy"
      Format          =   138346499
      CurrentDate     =   39310
   End
   Begin VB.CommandButton cmdCancelSlip 
      Caption         =   "&Cancel Slip"
      Height          =   375
      Left            =   13800
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   240
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Status"
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
      Height          =   315
      Left            =   8040
      TabIndex        =   10
      Top             =   240
      Width           =   2055
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Dispatch Date From"
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
      Height          =   315
      Left            =   240
      TabIndex        =   8
      Top             =   240
      Width           =   2055
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Dispatch Date To"
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
      Height          =   315
      Left            =   4080
      TabIndex        =   7
      Top             =   240
      Width           =   2055
   End
End
Attribute VB_Name = "FrmInwardEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub cmdAdd_Click()
On Error Resume Next
With FrmInwardEntry_Sub1
    .Show vbModal
End With
ReadValues
End Sub



Private Sub cmdCancelSlip_Click()
On Error Resume Next
With FrmDispatchSlip_Sub2
    .Show vbModal
End With
ReadValues
End Sub

Private Sub cmdClose_Click()
On Error Resume Next
Unload Me
End Sub




Private Sub cmdShow_Click()
ReadValues
End Sub

Private Sub dtFrom_Change()
Grid.Rows = 1
End Sub

Private Sub dtTo_Change()
Grid.Rows = 1
End Sub

Private Sub Form_Load()
On Error Resume Next
dtFrom.Value = Date
dtTo.Value = Date
Grid.Rows = 1
Me.cboStatus.ListIndex = 0
End Sub

Private Sub ReadValues()
On Error GoTo ErrExit
Dim cn1 As ADODB.Connection
Set cn1 = New ADODB.Connection

cn1.ConnectionString = ModInit.ConnectStringOnline
cn1.Open

If Err.Number = -2147467259 Then
    MsgBox "Unable to connect to server.", vbCritical + vbOKOnly
    Exit Sub
End If

Dim rs1 As ADODB.Recordset
Set rs1 = New ADODB.Recordset

Dim rs2 As ADODB.Recordset
Set rs2 = New ADODB.Recordset

Dim StatusStr As String
If cboStatus.ListIndex = 0 Then
    StatusStr = " and (InwardFlag = 0 or InwardFlag is Null) "
ElseIf cboStatus.ListIndex = 1 Then
    StatusStr = " and InwardFlag = 1 "
Else
    StatusStr = ""
End If

Grid.Rows = 1


rs1.Open "Select DispatchSlipCode, DispatchDate, MISInstituteCode, isnull(inwardflag,0) as inwardflag, inwarddate, inwardusername, ChequeCnt, Sliptype, a.LicCode from ASPDC_DispatchSlipLog A where DispatchDate >='" & Format(dtFrom.Value, "dd Mmm yyyy") & "' and DispatchDate <='" & Format(dtTo.Value, "dd Mmm yyyy") & "' and (a.Location_Code ='" & ModInit.LocationCode & "' or Location_Code is Null) " & StatusStr & " order by DispatchDate, DispatchSlipCode ", cn1, adOpenDynamic, adLockReadOnly
If Not (rs1.BOF And rs1.EOF) Then
    rs1.MoveFirst
    Do While Not rs1.EOF
        Grid.Rows = Grid.Rows + 1
        Grid.TextMatrix(Grid.Rows - 1, 0) = rs1.Fields("DispatchSlipCode").Value
        Grid.TextMatrix(Grid.Rows - 1, 1) = Format(rs1.Fields("DispatchDate").Value, "dd Mmm yyyy")
        Grid.TextMatrix(Grid.Rows - 1, 2) = rs1!MISInstituteCode & rs1!LicCode
'        Grid.TextMatrix(Grid.Rows - 1, 3) = rs1!DivisionName
'        Grid.TextMatrix(Grid.Rows - 1, 4) = rs1!CentreName
        If rs1!inwardflag = 0 Then
            Grid.TextMatrix(Grid.Rows - 1, 5) = "Pending"
        Else
            Grid.TextMatrix(Grid.Rows - 1, 5) = "Accepted"
            Grid.TextMatrix(Grid.Rows - 1, 6) = Format(rs1.Fields("InwardDate").Value, "dd Mmm yyyy")
            Grid.TextMatrix(Grid.Rows - 1, 7) = rs1.Fields("InwardUserName").Value
            Grid.TextMatrix(Grid.Rows - 1, 8) = "" & rs1.Fields("ChequeCnt").Value
            Grid.TextMatrix(Grid.Rows - 1, 9) = "" & rs1.Fields("SlipType").Value
        End If
        
        rs1.MoveNext
     Loop
End If
rs1.Close
cn1.Close

Exit Sub

ErrExit:
MsgBox "Error : " & Err.Description
End Sub

Private Sub SetGridWidth()
On Error Resume Next
Dim DefColWidth As Long
DefColWidth = (Grid.Width - 350) / (Grid.Cols - 2)
With Grid
    For Cnt = 0 To Grid.Cols - 1
        .ColWidth(Cnt) = DefColWidth
    Next
    .ColWidth(3) = 0
    .ColWidth(4) = 0
    
End With
End Sub

Private Sub Form_Resize()
On Error Resume Next
Grid.Width = Me.Width - Grid.Left - 360
Shape1.Width = Grid.Width
SetGridWidth
cmdClose.Left = Grid.Left + Grid.Width - cmdClose.Width
Grid.Height = Me.Height - Grid.Top - 1200
cmdClose.Top = Grid.Top + Grid.Height + 120
End Sub


