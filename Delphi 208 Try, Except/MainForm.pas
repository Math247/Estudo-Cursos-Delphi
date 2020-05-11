unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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
  i : integer;
  s : string;
begin
  try
    //bloco de código
    i := StrToInt(Edit1.Text);
    MessageDlg('Sucesso', mtConfirmation, [mbOK], 0);
  except
    MessageDlg('Digite somente numeros inteiros!', mtError, [mbOK], 0);
    //bloco de código caso der erro
  end;
end;

end.
