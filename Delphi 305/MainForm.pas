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
  Nome: String;
  //declaração de um ponteiro do tipo String;
  PNome: ^String;

begin
  Nome := 'Matheus';
  ShowMessage(Nome);

  //Estou fazendo o Ponteiro apontar para o endereço de memória da variavel nome;
  PNome := @Nome;

  //Alterei o valor da variavel nome, atravez do ponteiro PNome;
  PNome^ := 'Mariana';
  ShowMessage(Nome);

end;

end.
