unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
form2.Show;
form5.Close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('ID').AsString:=Edit1.Text;
ADOTAble1.FieldByName('Nama Karyawan').AsString:=Edit2.Text;
ADOTable1.FieldByName('Posisi').AsString:=Edit3.Text;
ADOTable1.FieldByName('Alamat').AsString:=Edit4.Text;
ADOTable1.FieldByName('No Handphone').AsString:=Edit5.Text;
ADOTable1.Post;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1.FieldByName('ID').AsString:=Edit1.Text;
ADOTable1.FieldByName('Nama Karyawan').AsString:=Edit2.Text;
ADOTable1.FieldByName('Posisi').AsString:=Edit3.Text;
ADOTable1.FieldByName('Alamat').AsString:=Edit4.Text;
ADOTable1.FieldByName('No Handphone').AsString:=Edit5.Text;
ADOTAble1.Post;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Akan Menghapus Data Ini',mtConfirmation,[mbYes,mbNo],0)=mryes then ADOTable1.Delete;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
end;

end.
