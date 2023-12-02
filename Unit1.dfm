object Form1: TForm1
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form1'
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
    Left = 192
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 192
    Top = 152
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object e_1: TEdit
    Left = 280
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 280
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 288
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = Button1Click
  end
  object zqry: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 96
    Top = 216
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 96
    Top = 264
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'sepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\ATugas Visual 2\libmysql.dll'
    Left = 96
    Top = 312
  end
end
