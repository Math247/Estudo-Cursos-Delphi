unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Pessoa;

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
  Pessoa : TPessoa;
begin
  //sempre tem que dar um Create;
  Pessoa := TPessoa.Create;
  try
    //só enxergo o nome, pois a Idade eh private; Update: Agora Idade aparece pois é private;
    Pessoa.Nome := 'Matheus';
    Pessoa.Sexo := 'Masculino';
    ShowMessage(Pessoa.Nome + ' - ' + Pessoa.Sexo);
  finally
    //sempre destrua a classe criada, para não ocupar mémória
    Pessoa.Free;
  end;

end;

end.
