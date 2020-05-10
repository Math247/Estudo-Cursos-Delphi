unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
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
  Nome : String;
  Sobrenome : String;
begin
  Nome := InputBox('Entrada de Dados', 'Informe seu Nome', '');
  Sobrenome := InputBox('Entrada de Dados', 'Informe seu Sobrenome', '');
  ShowMessage('Seu nome �: ' + Nome+ ' '+ Sobrenome);
end;

end.
