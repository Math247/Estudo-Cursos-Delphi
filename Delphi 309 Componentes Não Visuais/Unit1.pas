unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    Abrir1: TMenuItem;
    Editar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N1: TMenuItem;
    SalvarComo1: TMenuItem;
    Salvartodos1: TMenuItem;
    Gravar1: TMenuItem;
    ImageList1: TImageList;
    ActionList1: TActionList;
    mnFechar: TAction;
    Fechar1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure Gravar1Click(Sender: TObject);
    procedure mnFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.mnFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TForm1.Gravar1Click(Sender: TObject);
begin
  if Gravar1.Checked then
    ShowMessage('Gravando!')
  else
    ShowMessage('Gravação Interrompida');
end;

end.
