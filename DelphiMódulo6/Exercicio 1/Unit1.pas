unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtN: TEdit;
    edtM: TEdit;
    btnResult: TButton;
    Label1: TLabel;
    lblResult: TLabel;
    procedure btnResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnResultClick(Sender: TObject);
var
  N, M, Result : Integer;
begin
  N := StrToInt(edtN.Text);
  M := StrToInt(edtM.Text);
  if (N mod M) = 0 then
    begin
      Result := N div M;
      lblResult.Caption := IntToStr(Result);
    end
  else
    ShowMessage('Não pode ser divido!');



end;

end.
