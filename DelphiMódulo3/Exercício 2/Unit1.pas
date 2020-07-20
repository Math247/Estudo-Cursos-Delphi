unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtTemperatura: TEdit;
    lblConverteFah: TLabel;
    btnCelsius: TButton;
    btnFahrenheit: TButton;
    edtTemperatura2: TEdit;
    lblConvertCel: TLabel;
    lblResult1: TLabel;
    lblResult2: TLabel;
    procedure btnCelsiusClick(Sender: TObject);
    procedure btnFahrenheitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCelsiusClick(Sender: TObject);
var
  Fah : Double;
  Result : Double;
begin
  Fah := StrToFloat(edtTemperatura.Text);
  Result := (Fah - 32) / 1.8;
  lblResult1.Caption := FloatToStr(Result);
end;

procedure TForm1.btnFahrenheitClick(Sender: TObject);
var
  Cel : Double;
  Result : Double;
begin
  Cel := StrToFloat(edtTemperatura2.Text);
  Result := (Cel * 1.8) + 32;
  lblResult2.Caption := FloatToStr(Result);
end;

end.
