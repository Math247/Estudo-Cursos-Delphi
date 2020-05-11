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
begin
  //estrutura condicional similar ao if else
  //no abaixo, caso o messagedlg retornar 6, fara tal coisa, se retornar 7, fara tal coisa
  //se retornar qualquer outra coisa, entrará no else;
  case MessageDlg('Devo continuar?', mtConfirmation, mbYesNoCancel, 0) of
    6: ShowMessage('Seja Feliz com sua aplicação!');
    7:
      begin
        ShowMessage('Adeus');
        Close;
      end;
    else
      ShowMessage('Tudo bem então, não farei nada');
  end;
end;

end.
