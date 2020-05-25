unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCliente = record
    Codigo: Cardinal;
    Nome: String;
    Email: String;
  end;
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
  Cliente: TCliente;
begin
  Cliente.Codigo := 1;
  Cliente.Nome := 'Matheus Carregal';
  Cliente.Email := 'math247.habib@gmail.com';
  ShowMessage(IntToStr(Cliente.Codigo) + Cliente.Nome + Cliente.Email);

end;

end.
