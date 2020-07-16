unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblVermelho: TLabel;
    lblAmarelo: TLabel;
    lblVerde: TLabel;
    btnVermelho: TButton;
    btnAmarelo: TButton;
    btnVerde: TButton;
    procedure btnVermelhoClick(Sender: TObject);
    procedure btnAmareloClick(Sender: TObject);
    procedure btnVerdeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAmareloClick(Sender: TObject);
begin
  lblVermelho.Visible := false;
  lblAmarelo.Visible := true;
  lblVerde.Visible := false;
end;

procedure TForm1.btnVerdeClick(Sender: TObject);
begin
  lblVermelho.Visible := false;
  lblAmarelo.Visible := false;
  lblVerde.Visible := true;
end;

procedure TForm1.btnVermelhoClick(Sender: TObject);
begin
  lblVermelho.Visible := true;
  lblAmarelo.Visible := false;
  lblVerde.Visible := false;
end;

end.
