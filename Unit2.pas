unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.Show;
Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form4.Show;
Form2.Close;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form5.Show;
Form2.Close;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form6.Show;
Form2.Close;
end;

end.
