unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblCapEdit: TLabel;
    edtEscreve: TEdit;
    btnTroca: TButton;
    procedure btnTrocaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTrocaClick(Sender: TObject);
begin
  lblCapEdit.Caption := edtEscreve.Text;
  lblCapEdit.Visible := true;
  edtEscreve.Clear;
end;

end.
