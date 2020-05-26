unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ShellAnimations, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tbLista: TTabSheet;
    tabCadastro: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Animate1: TAnimate;
    BitBtn1: TBitBtn;
    ShellResources1: TShellResources;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Button3: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  //ativando a animação
  Animate1.Active := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //ao apertar no botão, muda de aba
  PageControl1.ActivePage := tabCadastro;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //ao apertar no botão, muda de aba;
  PageControl1.ActivePage := tbLista;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //mostra a data que esta no DateTimePicker, no capiton da aba;
  tabCadastro.Caption := DateTimeToStr(DateTimePicker1.DateTime);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  //bota o timer no caption da terceira aba;
  TabSheet3.Caption := FormatDateTime('hh:mm:ss',now);
end;

end.
