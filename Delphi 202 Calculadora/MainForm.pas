unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Valor1: TEdit;
    Valor2: TEdit;
    Label1: TLabel;
    Resultado: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    function somar(x, y : Integer) : Integer;
    function subtrair(x, y : Integer) : Integer;
    function multiplicar(x, y : Integer) : Integer;
    function dividir(x, y : Integer) : Integer;
    function dividirReais(x, y : Currency) : Currency;
    function resto(x, y : Integer) : Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado1 : Integer;
begin
  Resultado1 := somar(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(Resultado1);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Resultado1 : Integer;
begin
  Resultado1 := subtrair(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(Resultado1);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Resultado1 : Integer;
begin
  Resultado1 := multiplicar(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(Resultado1);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Resultado1 : Integer;
begin
  Resultado1 := dividir(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(Resultado1);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Resultado1 : Currency;
begin
  Resultado1 := dividirReais(StrToCurr(Valor1.Text), StrToCurr(Valor2.Text));
  Resultado.Text := CurrToStr(Resultado1);
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  Resultado1 : Integer;
begin
  Resultado1 := resto(StrToInt(Valor1.Text), StrToInt(Valor2.Text));
  Resultado.Text := IntToStr(Resultado1);
end;

function TForm1.dividir(x, y: Integer): Integer;
begin
  Result := (x div y);
end;

function TForm1.dividirReais(x, y: Currency): Currency;
begin
  Result := x / y;
end;

function TForm1.multiplicar(x, y: Integer): Integer;
begin
  Result := x * y;
end;

function TForm1.resto(x, y: Integer): Integer;
begin
  Result := x mod y;
end;

function TForm1.somar(x: Integer; y: Integer) : Integer;
begin
   Result := x + y;
end;

function TForm1.subtrair(x: Integer; y: Integer) : Integer;
begin
  Result := x - y;
end;

end.
