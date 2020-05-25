unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
//Array Estático
var
  ArrInt : array[1..10] of integer;
begin
  ArrInt[3] := 250;
  ArrInt[1] := 50;
end;

procedure TForm1.Button2Click(Sender: TObject);
//Matriz
var
  ArrInt : array [1..3, 1..4] of integer;
begin
  ArrInt[1,1] := 250;
  ArrInt[1,2] := 250;
  ArrInt[1,3] := 250;
  ArrInt[1,4] := 250;
  ArrInt[2,1] := 250;
  ArrInt[2,2] := 250;

end;

procedure TForm1.Button3Click(Sender: TObject);
//Array Dinâmico
var
  ArrInt : array of integer;
begin
  //como não tem tamanho, eu uso isso para adicionar +1 no tamanho do array;
  SetLength(ArrInt, Length(ArrInt)+1);
  //depois adiciono na maior posição do array, o numero 200;
  ArrInt[High(ArrInt)] := 200;
  //por fim, mostro na tela o numero que está na maior posição do Array;
  ShowMessage(IntToStr(ArrInt[High(ArrInt)]));

end;

end.
