unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Dobro (Valor : Double);
    procedure DobroRef (var Valor : Double);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  X: Double;
begin
  X := 20;
  ShowMessage('Variavel Antes: ' + FloatToStr(X));
  Dobro(X);
  ShowMessage('Variavel Depois: ' + FloatToStr(X));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  X: Double;
begin
  X := 20;
  ShowMessage('Variavel Antes: ' + FloatToStr(X));
  DobroRef(X);
  ShowMessage('Variavel Depois: ' + FloatToStr(X));
end;

procedure TForm1.Dobro(Valor: Double);
begin
  //passagem de parametro por valor;
  Valor := Valor + 10;
  ShowMessage('O dobro de '+ FloatToStr(Valor) + ' é: ' + FloatToStr(Valor*2));
end;

procedure TForm1.DobroRef(var Valor: Double);
begin
  //passagem de parametro por referencia;
  Valor := Valor + 10;
  ShowMessage('O dobro de '+ FloatToStr(Valor) + ' é: ' + FloatToStr(Valor*2));
end;

end.
