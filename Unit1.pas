unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    zqry: TZQuery;
    ds: TDataSource;
    con: TZConnection;
    Label1: TLabel;
    Label2: TLabel;
    e_1: TEdit;
    e_2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Register: TButton;
    procedure Button1Click(Sender: TObject);
    procedure RegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username : string;
  password : string;
  level : string;

implementation

uses Unit2, Unit8;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
username := e_1.Text;
password := e_2.Text;

  zqry := TZQuery.Create(nil);
  try
    zqry.Connection := con;
    zqry.SQL.Text := 'SELECT level FROM user WHERE username = :username AND password = :password';
    zqry.ParamByName('username').AsString := username;
    zqry.ParamByName('password').AsString := password;
    zqry.Open;

    if not zqry.IsEmpty then
    begin
      level := zqry.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Admin login successful');
        Form2.Show;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    zqry.Free;
  end;
end;

procedure TForm1.RegisterClick(Sender: TObject);
begin
Form8.showmodal;
end;

end.
