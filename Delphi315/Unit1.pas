unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    EdtValor1: TLabeledEdit;
    EdtValor2: TLabeledEdit;
    EdtResultado: TLabeledEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  N1, N2, Resultado: Double;
begin
  try
    N1 := StrToFloat(EdtValor1.Text);
    N2 := StrToFloat(EdtValor2.Text);
    Resultado := N1 / N2;
    EdtResultado.Text := FloatToStr(Resultado);
  except
    on E: EConvertError do
    begin
      //mostra a mensagem de erro específica;
      MessageDlg('Erro ao tentar converter os valores, verifique se os valores colocados são válidos!', mtError, [mbOK], 0);
      //mostra a mensagem de erro original;
      ShowMessage(E.Message);
    end;
    on E : EZeroDivide do
    begin
      MessageDlg('Não se faz divisão por zero', mtError, [mbOK], 0);
    end;
    on E: Exception do
    begin
      MessageDlg('Um erro não identificado ocorreu', mtError, [mbOK], 0);
    end;
  end;
  ShowMessage('Fim da Rotina!');
end;

end.
