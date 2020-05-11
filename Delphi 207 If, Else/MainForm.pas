unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function condiçãonormal: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : string;
  Retorno : Integer;

begin
  //uso um msg dlg para confirmar a operação;
  Retorno := MessageDlg('Deseja Continuar a aplicação?', mtConfirmation, [mbYes, mbNo], 0);
  //se for positivo, ele executa;
  if Retorno = 6 then
  //num If com mais de 1 linha, usa-se begin end, sem o ponto e virgula no end
  begin
    Resultado := condiçãonormal;
    ShowMessage(Resultado);
  end
  else
    Close;
end;

function TForm1.condiçãonormal: string;
begin
  // verifico se o checkbox está marcado ou não;
  // o ponto virgula vem na ultima instrução do if,else;
  if CheckBox1.Checked then
    Result := 'Verdadeiro'
  else if CheckBox2.Checked then
    Result := 'Checkbox2 Verdadeiro'
  else
    Result := 'Falso';
end;

end.
