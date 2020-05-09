unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.StdActns, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    MainMenu1: TMainMenu;
    ImageList1: TImageList;
    AbrirArquivo: TAction;
    Arquivo1: TMenuItem;
    AbrirArquivo1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    procedure AbrirArquivoExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm1.AbrirArquivoExecute(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin

    end;

end;

procedure TForm1.Button1Click(Sender: TObject);
var dial: TDialogo;
begin
  dial := TDialogo.Create(nil);
  try
    if dial.ShowModal = mrOk then
      begin
        ShowMessage(dial.Edit1.Text);
      end;
  finally
    dial.Free;

  end;

end;

end.
