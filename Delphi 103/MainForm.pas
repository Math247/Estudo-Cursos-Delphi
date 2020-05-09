unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppEvnts;

type
  TForm1 = class(TForm)
    butTeste: TButton;
    OpenDialog1: TOpenDialog;
    ApplicationEvents1: TApplicationEvents;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure butTesteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.butTesteClick(Sender: TObject);
begin
  if OpenDialog1.Execute  then
    begin

    end;

end;

end.
