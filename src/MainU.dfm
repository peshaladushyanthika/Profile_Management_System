object MainF: TMainF
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Main'
  ClientHeight = 509
  ClientWidth = 1120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  StyleElements = [seClient, seBorder]
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1112
    object edSearch: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 408
      Height = 41
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edSearchChange
      ExplicitHeight = 31
    end
    object btExit: TButton
      AlignWithMargins = True
      Left = 1040
      Top = 4
      Width = 75
      Height = 41
      Margins.Right = 4
      Align = alRight
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btExitClick
      ExplicitLeft = 1032
    end
    object btAdd: TButton
      AlignWithMargins = True
      Left = 794
      Top = 4
      Width = 75
      Height = 41
      Margins.Right = 4
      Align = alRight
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btAddClick
      ExplicitLeft = 786
    end
    object btEdit: TButton
      AlignWithMargins = True
      Left = 876
      Top = 4
      Width = 75
      Height = 41
      Margins.Right = 4
      Align = alRight
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btEditClick
      ExplicitLeft = 868
    end
    object btDelete: TButton
      AlignWithMargins = True
      Left = 958
      Top = 4
      Width = 75
      Height = 41
      Margins.Right = 4
      Align = alRight
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btDeleteClick
      ExplicitLeft = 950
    end
    object btSearch: TButton
      AlignWithMargins = True
      Left = 448
      Top = 4
      Width = 75
      Height = 41
      Margins.Right = 4
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btSearchClick
    end
    object ComboBox: TComboBox
      Left = 538
      Top = 12
      Width = 200
      Height = 31
      Margins.Right = 4
      AutoDropDown = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = 'Filter by age'
      OnChange = ComboBoxChange
      Items.Strings = (
        'Filter by Age'
        'Age >18')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 1120
    Height = 460
    Margins.Right = 4
    Align = alClient
    DataSource = DataM.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dob'
        Title.Alignment = taCenter
        Title.Caption = 'DOB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 158
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'age'
        Title.Alignment = taCenter
        Title.Caption = 'Age'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIC'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact'
        Title.Alignment = taCenter
        Title.Caption = 'Contact'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end>
  end
end
