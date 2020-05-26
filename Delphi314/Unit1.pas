unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  valor1, valor2 : integer;
  resultado : double;
begin
  try
    valor1 := 10;
    valor2 := 0;
    resultado := valor1/valor2;
    ShowMessage('Resultado: ' + FloatToStr(resultado));
  except
    ShowMessage('Um erro ocorreu, tente novamente!');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  valor1, valor2 : integer;
  resultado : double;
begin
  try
    //transforma o cursor do mouse na ampulhetinha de carregamento
    Screen.Cursor := crHourGlass;
    try
      Sleep(3000);
      valor1 := 10;
      valor2 := 0;
      resultado := valor1/valor2;
      ShowMessage('Resultado: ' + FloatToStr(resultado));
    except
      ShowMessage('Erro Ocorrido');
    end;
  finally
    //volta ao normal;
    Screen.Cursor := crDefault;
  end;

end;

end.
