object Form2: TForm2
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form2'
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clLime
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 88
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Barang1: TMenuItem
        Caption = 'Barang'
        OnClick = Barang1Click
      end
      object Supplier1: TMenuItem
        Caption = 'Supplier'
        OnClick = Supplier1Click
      end
      object Pelanggan1: TMenuItem
        Caption = 'Pelanggan'
        OnClick = Pelanggan1Click
      end
      object Order1: TMenuItem
        Caption = 'Order'
        OnClick = Order1Click
      end
      object BiayaKirim1: TMenuItem
        Caption = 'Biaya Kirim'
        OnClick = BiayaKirim1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
    end
  end
end
