unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Calculadora;

type
  TForm1 = class(TForm)
    EdtValor1: TLabeledEdit;
    EdtValor2: TLabeledEdit;
    EdtResultado: TLabeledEdit;
    btnDiv: TSpeedButton;
    btnMult: TSpeedButton;
    btnSub: TSpeedButton;
    btnSoma: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Calculadora: TCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDivClick(Sender: TObject);
begin
  Calculadora.Valor1 := EdtValor1.Text;
  Calculadora.Valor2 := EdtValor2.Text;
  Calculadora.ExecutaOperacao(opDividir);
  EdtResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  Calculadora.Valor1 := EdtValor1.Text;
  Calculadora.Valor2 := EdtValor2.Text;
  Calculadora.ExecutaOperacao(opMultiplicar);
  EdtResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  Calculadora.Valor1 := EdtValor1.Text;
  Calculadora.Valor2 := EdtValor2.Text;
  Calculadora.ExecutaOperacao(opSomar);
  EdtResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  Calculadora.Valor1 := EdtValor1.Text;
  Calculadora.Valor2 := EdtValor2.Text;
  Calculadora.ExecutaOperacao(opSubtrair);
  EdtResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.Create;
end;

end.
