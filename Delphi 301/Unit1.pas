unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
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
 x: integer;
begin
  x := 5;
  case x of
    1: ShowMessage('x é 1');
    2: ShowMessage('x é 2');
    3: ShowMessage('x é 3');
    4..6: begin
          ShowMessage('x é 4');
          ShowMessage('ou é 5');
          ShowMessage('ou é 6');
          end
    else
      ShowMessage('Não sei o valor de x');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //dentro de if e do else, se tiver mais de 1 comando, botar begin e end;
  if False then
  begin
    ShowMessage('Linha 1 Verdade');
    ShowMessage('Linha 2 Verdade');
    end
  //nao pode ter ";" no antes do else;
  else
  begin
    ShowMessage('Linha 1 Mentira');
    ShowMessage('Linha 2 Mentira');
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //não preciso ficar falando Edit1.slaoq, economiza código;
  with  Edit1 do
  begin
    Width := 200;
    Left := 50;
    Top := 150;
    Color := clBlue;
    Font.Size := 15;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  x : integer;
begin
  x := 0;
  repeat
    ShowMessage('Contador = ' + IntToStr(X));
    Inc(X);
  until (x = 3);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  x : integer;
begin
  x := 0;
  while x < 3 do
  begin
    ShowMessage('Contador = ' + IntToStr(x));
    Inc(x);
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to 3 do
    begin
      ShowMessage('Contador = ' + IntToStr(i));
    end;

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  i : integer;
begin
  for i := 3 downto 0 do
    begin
      ShowMessage('Contador = ' + IntToStr(i));
    end;

end;

procedure TForm1.Button8Click(Sender: TObject);
var
  i : integer;
begin
  for I := 1 to 10 do
  begin
    ShowMessage(IntToStr(i));
    //continue manda o looping pro inicio
    if i mod 2 = 0 then continue;
    ShowMessage('Numero Impar');
    //break sai do looping;
    if i > 5 then break;
  end;
  ShowMessage('Final');
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  S : String;
  L : Char;
  I : integer;
begin
  S := 'palavra';
  for L in S do
  begin
    ShowMessage(L);  
  end;
  for I := 1 to Length(S) do
    ShowMessage(S[I]);

end;

end.
