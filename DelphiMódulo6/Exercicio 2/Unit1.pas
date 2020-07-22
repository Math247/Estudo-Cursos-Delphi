unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumero: TEdit;
    btnResult: TButton;
    procedure btnResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnResultClick(Sender: TObject);
var
  Numero, P1, P2, P3 : Integer;
begin
  Numero := StrToInt(edtNumero.Text);
  P3 := Numero mod 10;
  Numero := Numero div 10;
  P2 := Numero mod 10;
  Numero := Numero div 10;
  P1 := Numero mod 10;
  if P1 = P3 then
    ShowMessage('É palindromo')
  else
    ShowMessage('Não é palindromo');


end;

end.
