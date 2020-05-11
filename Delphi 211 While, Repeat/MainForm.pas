unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure testandoprimeiro;
    procedure testandofinal;
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
  testandoprimeiro;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  testandofinal;
end;

procedure TForm1.testandofinal;
var
I : Integer;
begin
  I := 1;
  //faz enquanto a afirmação no until for falsa. até o I for maior ou igual a 10;
  repeat
    Memo1.Lines.Add('Adicionando Linha: ' + IntToStr(I));
    Inc(I);
  until (I > 10);

end;

procedure TForm1.testandoprimeiro;
var
  I : Integer;
begin
  I := 1;
  //faz enquanto for verdadeiro;
  while I <= 10 do
  begin
    Memo1.Lines.Add('Adicionando Linha: ' + IntToStr(I));
    Inc(I);
  end;
  Memo1.Lines.Add('Finalizado');
end;

end.
