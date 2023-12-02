unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm3 = class(TForm)
    con1: TZConnection;
    zqry: TZQuery;
    ds1: TDataSource;
    DBGrid1: TDBGrid;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    Button6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure btn5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
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
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt2.Text ='' then
begin
ShowMessage('nama_barang TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('jenis TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('harga TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('ukuran TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('stok TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('deskripsi TIDAK BOLEH KOSONG!');
end else
begin
zqry.SQL.Clear; //simpan
zqry.SQL.Add('insert into barang values(null,"'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
zqry.ExecSQL ;

zqry.SQL.Clear;
zqry.SQL.Add('select * from barang');
zqry.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
if (edt2.Text= '')or (edt3.Text ='')or(edt4.Text= '')or (edt5.Text ='')or (edt6.Text ='')or (edt7.Text ='')then
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
zqry.SQL.Add('Update barang set nama_barang= "'+edt2.Text+'",jenis= "'+edt3.Text+'",harga= "'+edt4.Text+'",ukuran= "'+edt5.Text+'",stok="'+edt6.Text+'",deskripsi="'+edt7.Text+'" where id_barang="'+id+'"');
zqry. ExecSQL;

zqry.SQL.Clear;
zqry.SQL.Add('select * from barang');
zqry.Open;
posisiawal;
end;
end;
procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
id:= zqry.Fields[0].AsString;
edt2.Text:= zqry.Fields[1].AsString;
edt3.Text:= zqry.Fields[2].AsString;
edt4.Text:= zqry.Fields[3].AsString;
edt5.Text:= zqry.Fields[4].AsString;
edt6.Text:= zqry.Fields[5].AsString;
edt7.Text:= zqry.Fields[6].AsString;

edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;


btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
 zqry.SQL.Clear;
zqry.SQL.Add(' delete from barang where id_barang="'+id+'"');
zqry. ExecSQL;
zqry.SQL.Clear;
zqry.SQL.Add('select * from barang');
zqry.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');
 posisiawal;
end
end;

procedure TForm3.FormShow(Sender: TObject);
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
edt5.Enabled:=false;
edt6.Enabled:=false;
edt7.Enabled:=false;
end;

procedure TForm3.posisiawal;
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
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
end;

procedure TForm3.bersih;
begin
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
