unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblResult: TLabel;
    btnAdicao: TButton;
    btnSubtracao: TButton;
    btnMultiplicacao: TButton;
    btnDivisão: TButton;
    edtPrimeiro: TEdit;
    edtSegundo: TEdit;
    procedure btnAdicaoClick(Sender: TObject);
    procedure btnSubtracaoClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
    procedure btnDivisãoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAdicaoClick(Sender: TObject);
var
  x, y : Integer;
begin
  x := StrToInt(edtPrimeiro.Text);
  y := StrToInt(edtSegundo.Text);
  lblResult.Caption := IntToStr(x + y);

end;

procedure TForm1.btnDivisãoClick(Sender: TObject);
var
  x, y : Integer;
begin
  x := StrToInt(edtPrimeiro.Text);
  y := StrToInt(edtSegundo.Text);
  lblResult.Caption := IntToStr(x div y);
end;

procedure TForm1.btnMultiplicacaoClick(Sender: TObject);
var
  x, y : Integer;
begin
  x := StrToInt(edtPrimeiro.Text);
  y := StrToInt(edtSegundo.Text);
  lblResult.Caption := IntToStr(x * y);
end;

procedure TForm1.btnSubtracaoClick(Sender: TObject);
var
  x, y : Integer;
begin
  x := StrToInt(edtPrimeiro.Text);
  y := StrToInt(edtSegundo.Text);
  lblResult.Caption := IntToStr(x - y);
end;

end.
