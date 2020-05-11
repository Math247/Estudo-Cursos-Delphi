unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
//record cria uma estrutura com variaveis dentro, especie de agenda;
type
  Pessoa = record
    Nome : String;
    Idade : Integer;
  end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    //ao usar o var, não estou simplesmente criando uma outra variavael, mas sim
    //alterando a variavel principal, isso eh passagem por referencia, alterando o valor
    //absoluto da variavel, ele esta passando o endereço de memória, assim ele altera
    //na principal;
    procedure mudaNome(var Value : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Pessoa1 : array[0..9] of Pessoa;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  NovaPessoa : Pessoa;
begin
  //evita de escrever muito código; com with:
  with NovaPessoa do
  begin
     Nome := Edit1.Text;
     Idade := StrToInt(Edit3.Text);
  end;
   //sem with:
  //NovaPessoa.Nome := Edit1.Text;
  //NovaPessoa.Idade := StrToInt(Edit3.Text);
  Pessoa1[StrToInt(Edit2.Text)] := NovaPessoa;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   mudaNome(Pessoa1[StrToInt(Edit2.Text)].Nome);
  ShowMessage(Pessoa1[StrToInt(Edit2.Text)].Nome + ' - ' + IntToStr(Pessoa1[StrToInt(Edit2.Text)].Idade));
end;

procedure TForm1.mudaNome(var Value: String);
begin
  Value := Value + ' Mudou'
end;

end.
