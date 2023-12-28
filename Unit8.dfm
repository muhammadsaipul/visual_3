object Form8: TForm8
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form8'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 208
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 208
    Top = 136
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 208
    Top = 176
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object edt1: TEdit
    Left = 304
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 304
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 304
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 304
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 208
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Register'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 200
    Top = 264
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 312
    Top = 272
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'sepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\ATugas Visual 2\libmysql.dll'
    Left = 408
    Top = 272
  end
end
