unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit2, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  FormSecundario : TForm2;
begin
  //criando o formulario 2 assim que eu precisar do formulario 2. assim ele n cria 2
  //formularios ao msm tempo, e n ocupa tanta memória;
  FormSecundario := TForm2.Create(nil);
  try
  //consigo enxergar a variavel global da Unit2 chamando o seu formulário;
  FormSecundario.ShowModal;
  ShowMessage(FormSecundario.MeEnxerga);

  finally
    FormSecundario.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage('Create Principal');
end;

end.
