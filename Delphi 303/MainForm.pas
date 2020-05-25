unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //criei um set que só aceita caracteres;
  TNumeros = set of char;

  TForm1 = class(TForm)
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
const
  //criei uma constante do tipo TNumeros, onde de todos os caracteres, só aceitará;
  //os de 0 até 9;
  Numeros : TNumeros = ['0'..'9'];

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
//ao pressionar uma tecla no meu edit;
begin
  if not (Key in Numeros) then
    //se o 'Key' digitado não for um dos Numeros, ele irá gerar uma excessão;
    raise Exception.Create('Só aceita números!');
end;

end.
