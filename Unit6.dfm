object Form6: TForm6
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 288
    Width = 68
    Height = 13
    Caption = 'Nama Supplier'
  end
  object Label3: TLabel
    Left = 48
    Top = 320
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label4: TLabel
    Left = 48
    Top = 360
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object Label5: TLabel
    Left = 320
    Top = 288
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object Label6: TLabel
    Left = 296
    Top = 320
    Width = 87
    Height = 13
    Caption = 'Nama Perusahaan'
  end
  object Label7: TLabel
    Left = 320
    Top = 352
    Width = 24
    Height = 13
    Caption = 'email'
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 128
    Width = 625
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt2: TEdit
    Left = 128
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 128
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 392
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 392
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 392
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 536
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 536
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 536
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 656
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 656
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 11
    OnClick = btn5Click
  end
  object Button6: TButton
    Left = 656
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 12
    OnClick = Button6Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\ATugas Visual 2\libmysql.dll'
    Left = 88
    Top = 56
  end
  object zqry: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 144
    Top = 56
  end
  object ds1: TDataSource
    DataSet = zqry
    Left = 208
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45262.694938958300000000
    ReportOptions.LastChange = 45262.694938958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 41.574830000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID_Supplier')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 102.047310000000000000
          Top = 41.574830000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama_Supplier')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 207.874150000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 302.362400000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kota')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 396.850650000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telepon')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 491.338900000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama_Perusahaan')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 616.063390000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Email')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_supplier"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 102.047310000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_supplier'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_supplier"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 207.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kota'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kota"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telepon'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telepon"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_perusahaan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_perusahaan"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 616.063390000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'email'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."email"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry
    BCDToCurrency = False
    Left = 392
    Top = 64
  end
end
