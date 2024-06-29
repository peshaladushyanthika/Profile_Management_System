object ContactF: TContactF
  Left = 0
  Top = 0
  Caption = 'Contact'
  ClientHeight = 144
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 51
    Width = 69
    Height = 15
    Caption = 'New Contact'
  end
  object newconEd: TEdit
    Left = 152
    Top = 48
    Width = 161
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 192
    Top = 88
    Width = 121
    Height = 25
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
end
