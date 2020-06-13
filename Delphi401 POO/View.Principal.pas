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
  Pessoa, Pessoa2 : TPessoa;
begin
  //sempre tem que dar um Create;
  Pessoa := TPessoa.Create;
  Pessoa2 := TPessoa.Create;
  try
    //só enxergo o nome, pois a Idade eh private; Update: Agora Idade aparece pois é private;
    Pessoa.Nome := 'Matheus';
    Pessoa.DataNasc := '26/03/2002';

    Pessoa2.Nome := 'Thulio';
    Pessoa2.DataNasc := '12/09/1987';

    Pessoa2.SQL.Gravar;


    ShowMessage(Pessoa.Nome + ' - ' + IntToStr(Pessoa.Idade));

    ShowMessage(Pessoa2.Nome + ' - ' + IntToStr(Pessoa2.Idade));
  finally
    //sempre destrua a classe criada, para não ocupar mémória
    Pessoa.Free;
    Pessoa2.Free;
  end;

end;

end.
