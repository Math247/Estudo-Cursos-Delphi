unit MudarCor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChangeColor = class(TForm)
    btnAmarelo: TButton;
    btnAzul: TButton;
    btnVerde: TButton;
    btnPreto: TButton;
    btnBranco: TButton;
    btnVermelho: TButton;
    procedure btnAzulClick(Sender: TObject);
    procedure btnBrancoClick(Sender: TObject);
    procedure btnVermelhoClick(Sender: TObject);
    procedure btnAmareloClick(Sender: TObject);
    procedure btnVerdeClick(Sender: TObject);
    procedure btnPretoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeColor: TChangeColor;

implementation

{$R *.dfm}

procedure TChangeColor.btnAmareloClick(Sender: TObject);
begin
  ChangeColor.Color := clYellow;
end;

procedure TChangeColor.btnAzulClick(Sender: TObject);
begin
  ChangeColor.Color := clBlue;
end;

procedure TChangeColor.btnBrancoClick(Sender: TObject);
begin
  ChangeColor.Color := clWhite;
end;

procedure TChangeColor.btnPretoClick(Sender: TObject);
begin
  ChangeColor.Color := clBlack;
end;

procedure TChangeColor.btnVerdeClick(Sender: TObject);
begin
  ChangeColor.Color := clGreen
end;

procedure TChangeColor.btnVermelhoClick(Sender: TObject);
begin
  ChangeColor.Color := clRed;
end;

end.
