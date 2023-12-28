unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    Button1: TButton;
    Button2: TButton;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '')or(edt4.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',edt1.Text,[])) then
begin
  ShowMessage('Username sudah digunakan!');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'", "'+edt4.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;

ShowMessage('DATA BERHASIL DISIMPAN!!');

edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';

end;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
close;
end;

end.
