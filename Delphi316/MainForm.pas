unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Calculadora,
  Vcl.AppEvnts, System.SysUtils, Vcl.Menus, Configuracao;

type
  TForm1 = class(TForm)
    EdtValor1: TLabeledEdit;
    EdtValor2: TLabeledEdit;
    EdtResultado: TLabeledEdit;
    btnDiv: TSpeedButton;
    btnMult: TSpeedButton;
    btnSub: TSpeedButton;
    btnSoma: TSpeedButton;
    MainMenu1: TMainMenu;
    Configurao1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure Configurao1Click(Sender: TObject);
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
  try
    Calculadora.Valor1 := EdtValor1.Text;
    Calculadora.Valor2 := EdtValor2.Text;
    Calculadora.ExecutaOperacao(opSomar);
    EdtResultado.Text := Calculadora.Resultado;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao executar comando. Messagem original : '+ E.Message, mtWarning, [mbOK],0);
      //chame o raise pro erro do somar, cair no log;
      raise;
    end;
  end;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  Calculadora.Valor1 := EdtValor1.Text;
  Calculadora.Valor2 := EdtValor2.Text;
  Calculadora.ExecutaOperacao(opSubtrair);
  EdtResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.Configurao1Click(Sender: TObject);
begin
  FrmConfig := TFrmConfig.Create(Self);
  FrmConfig.ShowModal;
  FreeAndNil(FrmConfig);


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Calculadora := TCalculadora.Create;
end;

end.
