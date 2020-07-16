unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblTeste: TLabel;
    btnHabi: TButton;
    btnDesab: TButton;
    procedure btnHabiClick(Sender: TObject);
    procedure btnDesabClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnDesabClick(Sender: TObject);
begin
  lblTeste.Visible := false;
end;

procedure TForm1.btnHabiClick(Sender: TObject);
begin
  lblTeste.Visible := true;
end;

end.
