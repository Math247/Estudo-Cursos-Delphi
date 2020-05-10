unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    i : integer;
    c : currency;
    s : string;
    b : boolean;

    //declarei a procedure que ir� exibir o valor de uma variavel;
    procedure ExibeVariavel(Valor : String);
    //declarei a fun��o que ir� exibir o texto;
    function fncExibeTexto :  string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //Procedure:
  //s vai receber o valor que entrar no Edite, e exiber isso na tela;
  //Edit1 � o nome que declarei no Object Inspector;
  //s := Edit1.Text;
  //Passando como parametro o 's';
  //ExibeVariavel(s);

  //Function:
  //s vai chamar a fun��o e guardar o que for retornado;
  s:= fncExibeTexto;
  //Passando como parametro o 's';
  ExibeVariavel(s);

end;

procedure TForm1.ExibeVariavel(Valor : String);
begin
  //Exibindo na tela o que recebi no edit, por meio da variavel Valor, que contem s;
  ShowMessage(Valor);
end;

function TForm1.fncExibeTexto;
begin
  //toda fun��o tem um Result, ele retorna o que a fun��o retorna;
  //ent�o se a fun��o retorna uma string, no result, devemos adicionar uma string;
  //a fun��o vai retornar o valor digitado no Edit;
  Result := Edit1.Text + ' Sou da Fun��o';
end;

end.
