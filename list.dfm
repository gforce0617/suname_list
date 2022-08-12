object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 235
  ClientWidth = 314
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 16
    Width = 40
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082':'
  end
  object bAdd: TButton
    Left = 13
    Top = 192
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 0
    OnClick = bAddClick
  end
  object bEdit: TButton
    Left = 106
    Top = 192
    Width = 91
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = bEditClick
  end
  object ListSurname: TListBox
    Left = 13
    Top = 35
    Width = 283
    Height = 97
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 2
    OnClick = ListSurnameClick
  end
  object EditText: TEdit
    Left = 13
    Top = 152
    Width = 283
    Height = 21
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102
  end
  object bDelete: TButton
    Left = 221
    Top = 192
    Width = 75
    Height = 25
    Caption = #1091#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = bDeleteClick
  end
end
