object Form1: TForm1
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 104
    Width = 146
    Height = 40
    Caption = 'Username'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 160
    Width = 138
    Height = 40
    Caption = 'Password'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 40
    Width = 472
    Height = 42
    Caption = 'Selamat Datang Di Form Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e_1: TEdit
    Left = 280
    Top = 104
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 280
    Top = 160
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 280
    Top = 232
    Width = 177
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Register: TButton
    Left = 520
    Top = 232
    Width = 121
    Height = 25
    Caption = 'Register'
    TabOrder = 3
    OnClick = RegisterClick
  end
  object zqry: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 48
    Top = 88
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 48
    Top = 136
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
    Left = 48
    Top = 184
  end
end
