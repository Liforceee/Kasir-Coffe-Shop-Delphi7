unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  TBay : Real;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.Button4Click(Sender: TObject);
begin
form2.Show;
form3.Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
Var Minuman, JBel : Real;

begin
  JBel := StrToFloat(Edit1.Text);

  if RadioButton1.Checked = True then
  Minuman:=7000
  else
    if RadioButton2.Checked = True then
    Minuman:=9000
    else
      if RadioButton3.Checked = True then
      Minuman:=15000
      else
        if RadioButton4.checked = True then
        Minuman:=14000
        else
          if RadioButton5.checked = True then
          Minuman:=13000
          else
            if RadioButton6.checked = True then
            Minuman:=12000
            else
              if RadioButton7.checked = True then
              Minuman:=13000
              else
                if RadioButton8.checked = True then
                Minuman:=5000
                else
                if RadioButton9.checked = True then
                Minuman:=15000
                else
                  Minuman:=0;

    TBay := JBel*(Minuman);
    Edit2.Text := 'Rp. '+FloatToStr(TBay);

end;


procedure TForm3.Button2Click(Sender: TObject);
var Bayar, Kembalian : Real;
begin
  Bayar := StrToFloat(Edit3.Text);
  Kembalian := Bayar - TBay;

  Edit4.Text := 'Rp.'+FloatToStr(Kembalian);
end;

end.

