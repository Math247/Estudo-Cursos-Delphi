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
  Cliente : TCliente;
  Value : Currency;
begin
  //sempre tem que dar um Create;
  Pessoa := TPessoa.Create;
  Cliente := TCliente.Create;
  try
    //só enxergo o nome, pois a Idade eh private; Update: Agora Idade aparece pois é private;
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

    ShowMessage(Pessoa.RetornaNome);

    ShowMessage(Cliente.RetornaNome);

    ShowMessage(Cliente.MetodoAbstrato);
  finally
    //sempre destrua a classe criada, para não ocupar mémória
    Pessoa.Free;
    Cliente.Free;
  end;

end;

end.
