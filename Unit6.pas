unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
Var a,b : Integer;
begin
  a:= StrToInt (edit2.Text);
  b:= StrToInt (edit3.Text);
  edit4.Text := IntTostr (a * b);
end;

procedure TForm6.Button2Click(Sender: TObject);
Var a,b : Integer;
begin
  a:= StrToInt (edit5.Text);
  b:= StrToInt (edit4.Text);
  edit6.Text := IntTostr (a - b);
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit6.Text := '';
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  Form2.Show;
  Form6.Close;
end;

end.
