unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Barang1: TMenuItem;
    Supplier1: TMenuItem;
    Pelanggan1: TMenuItem;
    Order1: TMenuItem;
    BiayaKirim1: TMenuItem;
    Logout1: TMenuItem;
    Exit1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Barang1Click(Sender: TObject);
    procedure Supplier1Click(Sender: TObject);
    procedure Pelanggan1Click(Sender: TObject);
    procedure Order1Click(Sender: TObject);
    procedure BiayaKirim1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit6, Unit5, Unit7, Unit4, Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Barang1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm2.Supplier1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm2.Pelanggan1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm2.Order1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm2.BiayaKirim1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm2.Logout1Click(Sender: TObject);
begin
close;
form1.show;
end;

end.
