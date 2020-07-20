unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtPrimeiro: TEdit;
    edtSegundo: TEdit;
    lblKm: TLabel;
    lblResultado: TLabel;
    lblMs: TLabel;
    lblResultado2: TLabel;
    btnMetroSegundo: TButton;
    btnKm: TButton;
    procedure btnMetroSegundoClick(Sender: TObject);
    procedure btnKmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnKmClick(Sender: TObject);
var
  M : Real;
  Result : Real;
begin
  M := StrToFloat(edtSegundo.Text);
  Result := (M * 3.6);
  lblResultado2.Caption := FloatToStr(Result);

end;

procedure TForm1.btnMetroSegundoClick(Sender: TObject);
var
  K : Real;
  Result : Real;
begin
  K := StrToFloat(edtPrimeiro.Text);
  Result := (K / 3.6);
  lblResultado.Caption := FloatToStr(Result);

end;

end.
