unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOTable1: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
form2.Show;
form4.Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldByName('Kode Barang').AsString:=Edit1.Text;
ADOTable1.FieldByName('Nama Barang').AsString:=Edit2.Text;
ADOTable1.FieldByName('Jumlah').AsString:=Edit3.Text;
ADOTable1.Post;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Akan Menghapus Data Ini',mtConfirmation,[mbYes,mbNo],0)=mryes then ADOTable1.Delete;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DBGrid1.Fields[0].AsString;
  Edit2.Text := DBGrid1.Fields[1].AsString;
  Edit3.Text := DBGrid1.Fields[2].AsString;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  ADOTable1.Edit;
  ADOTable1['Kode Barang']:=Edit1.Text;
  ADOTable1['Nama Barang']:=Edit2.Text;
  ADOTable1['Jumlah']:=Edit3.Text;
  ADOTable1.Post;
end;

end.
