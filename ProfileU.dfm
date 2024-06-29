object ProfileF: TProfileF
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Profile'
  ClientHeight = 613
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 23
  object Label1: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 17
    Height = 23
    Margins.Top = 10
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 61
    Width = 46
    Height = 23
    Caption = 'Name'
    FocusControl = nameEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 110
    Width = 35
    Height = 23
    Caption = 'DOB'
    FocusControl = dobEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 139
    Width = 29
    Height = 23
    Caption = 'NIC'
    FocusControl = nicEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 188
    Width = 60
    Height = 23
    Caption = 'Contact'
    FocusControl = conEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 236
    Width = 60
    Height = 23
    Caption = 'Address'
    FocusControl = addEd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 272
    Top = 112
    Width = 28
    Height = 23
    Caption = 'age'
    FocusControl = ageEd
  end
  object Label8: TLabel
    Left = 96
    Top = 400
    Width = 14
    Height = 23
    Caption = 'id'
    FocusControl = DBEdit2
  end
  object Label9: TLabel
    Left = 200
    Top = 424
    Width = 69
    Height = 23
    Caption = 'profile_id'
    FocusControl = DBEdit3
  end
  object Label10: TLabel
    Left = 320
    Top = 464
    Width = 57
    Height = 23
    Caption = 'contact'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 20
    Width = 321
    Height = 31
    Margins.Top = 10
    DataField = 'id'
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object nameEd: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 68
    Width = 321
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object dobEd: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 107
    Width = 129
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'dob'
    DataSource = DataSource1
    TabOrder = 2
    OnChange = dobEdChange
  end
  object nicEd: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 146
    Width = 321
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'NIC'
    DataSource = DataSource1
    TabOrder = 3
  end
  object conEd: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 185
    Width = 321
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'contact'
    DataSource = DataSource1
    TabOrder = 4
  end
  object addEd: TDBEdit
    AlignWithMargins = True
    Left = 112
    Top = 233
    Width = 321
    Height = 31
    Margins.Left = 5
    Margins.Bottom = 5
    DataField = 'address'
    DataSource = DataSource1
    TabOrder = 5
  end
  object btClose: TButton
    Left = 295
    Top = 272
    Width = 138
    Height = 41
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btCloseClick
  end
  object btSave: TButton
    Left = 128
    Top = 272
    Width = 138
    Height = 41
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btSaveClick
  end
  object ageEd: TDBEdit
    Left = 306
    Top = 109
    Width = 127
    Height = 31
    DataField = 'age'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 368
    Width = 535
    Height = 176
    DataSource = DataM.DataSource2
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'profile_id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'action'
        Width = 200
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 792
    Width = 234
    Height = 31
    DataField = 'id'
    DataSource = DataM.DataSource2
    TabOrder = 10
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 816
    Width = 234
    Height = 31
    DataField = 'profile_id'
    DataSource = DataM.DataSource2
    TabOrder = 11
  end
  object DBEdit4: TDBEdit
    Left = 320
    Top = 856
    Width = 1154
    Height = 31
    DataField = 'contact'
    DataSource = DataM.DataSource2
    TabOrder = 12
  end
  object btaddcon: TButton
    Left = 344
    Top = 400
    Width = 57
    Height = 25
    Caption = 'Add'
    TabOrder = 13
    OnClick = btaddconClick
  end
  object btdelcon: TButton
    Left = 439
    Top = 400
    Width = 57
    Height = 25
    Caption = 'Delete'
    TabOrder = 14
    OnClick = btdelconClick
  end
  object DataSource1: TDataSource
    DataSet = DataM.Query1
    Left = 24
    Top = 272
  end
  object DataSource2: TDataSource
    DataSet = DataM.Query2
    Left = 36
    Top = 552
  end
end
