unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    con1: TZConnection;
    zqry: TZQuery;
    ds1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id:string;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;
edt2.Text:= zqry.Fields[1].AsString;
edt3.Text:= zqry.Fields[2].AsString;
edt4.Text:= zqry.Fields[3].AsString;

edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm4.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
edt2.Enabled:=false;
edt3.Enabled:=false;
edt4.Enabled:=false;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt2.Text ='' then
begin
ShowMessage('kota TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('biaya TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('metode_pembayaran TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into biaya_kirim values(null,"'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from biaya_kirim');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if (edt2.Text= '')or (edt3.Text ='')or(edt4.Text= '')then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if edt2.Text = zqry.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
 posisiawal;
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry.SQL.Clear;
zqry.SQL.Add('Update biaya_kirim set kota= "'+edt2.Text+'",biaya= "'+edt3.Text+'",metode_pembayaran= "'+edt4.Text+'" where id_biaya_kirim="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from biaya_kirim');
zqry.Open;

posisiawal;
end;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from biaya_kirim where id_biaya_kirim="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from biaya_kirim');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
