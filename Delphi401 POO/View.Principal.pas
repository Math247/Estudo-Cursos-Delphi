unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Pessoa,
  Classe.Cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edtNome: TEdit;
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
  Cliente, Cliente2, Cliente3 : TCliente;
  Value : Currency;
begin
  //sempre tem que dar um Create;
  Pessoa := TPessoa.Create;
  Pessoa.Nome := 'Fulano';
  Pessoa.DataNasc := '01/01/2000';
  Pessoa.Sexo := 'Masculino';
  //cada create executa algo que foi definido no construtor;
  Cliente := TCliente.Create;
  Cliente2 := TCliente.Create('Matheus');
  Cliente3 := TCliente.Create(Pessoa);
  try
    //s� enxergo o nome, pois a Idade eh private; Update: Agora Idade aparece pois � private;
    ShowMessage(Cliente.Nome);
    ShowMessage(Cliente2.Nome);
    Pessoa.Nome := edtNome.Text;
    Pessoa.DataNasc := '26/03/2002';

    Cliente.Nome := 'Thulio';
    Cliente.DataNasc := '12/09/1987';

    ShowMessage(Pessoa.Nome + ' - ' + IntToStr(Pessoa.Idade));

    ShowMessage(Cliente.Nome + ' - ' + IntToStr(Cliente.Idade));

    ShowMessage(Pessoa.Receber(5));

    Value := 10.5;

    ShowMessage(Pessoa.Receber(Value));

    ShowMessage(Pessoa.Receber(5,5));

    Pessoa.RetornaNome;

    ShowMessage(Cliente.RetornaNome);

    ShowMessage(Cliente.MetodoAbstrato);

    ShowMessage(Cliente3.Nome + '-' + Cliente3.DataNasc + '-' + Cliente3.Sexo);
  finally
    //sempre destrua a classe criada, para n�o ocupar m�m�ria
    Pessoa.Free;
    Cliente.Free;
    Cliente2.Free;
    Cliente3.Free;
  end;

end;

end.
