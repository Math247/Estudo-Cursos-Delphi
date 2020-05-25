unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //criou uma classe com generic
  TMyClass<T> = class
  private
    FGeneric: T;
    FDofoo: String;
    procedure SetDofoo(const Value: String);
  published
    property Dofoo: String read FDofoo write SetDofoo;
    property Generic: T read FGeneric write FGeneric;
  end;

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

{ TMyClass }

procedure TMyClass<T>.SetDofoo(const Value: String);
begin
  FDofoo := Value;
end;

procedure TForm1.Button1Click(Sender: TObject);
//criou uma variavel que recebe um objeto, e definiu o tipo do objeto na hora de usar;
var
  C : TMyClass<String>;
begin
  C := TMyClass<String>.Create;
  C.FGeneric := 'Matheus';
  C.FDofoo   := 'Mariana';

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  C: TMyClass<Integer>;
begin
  C := TMyClass<Integer>.Create;
  C.FGeneric := 1;
  C.FDofoo := 'Matheus';

end;

end.
