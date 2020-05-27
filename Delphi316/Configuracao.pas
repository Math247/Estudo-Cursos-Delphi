unit Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, IniFiles;

type
  TFrmConfig = class(TForm)
    EdtHost: TLabeledEdit;
    EdtPassword: TLabeledEdit;
    EdtUser: TLabeledEdit;
    EdtRemetente: TLabeledEdit;
    EdtEmail: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    IniFiles : TIniFile;
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

procedure TFrmConfig.BitBtn1Click(Sender: TObject);
begin
  IniFiles.WriteString('SMTP','host',EdtHost.Text);
  IniFiles.WriteString('SMTP','username',EdtUser.Text);
  IniFiles.WriteString('SMTP','password',EdtPassword.Text);
  IniFiles.WriteString('REMETENTE','remetente',EdtRemetente.Text);
  IniFiles.WriteString('REMETENTE','email',EdtEmail.Text);
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
begin
  IniFiles := TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'config.ini');
  EdtHost.Text := IniFiles.ReadString('SMTP', 'host','smtp.host.com.br');
  EdtUser.Text := IniFiles.ReadString('SMTP', 'username','smtp.host.com.br');
  EdtPassword.Text := IniFiles.ReadString('SMTP', 'password','smtp.host.com.br');
  EdtRemetente.Text := IniFiles.ReadString('REMETENTE', 'remetente','smtp.host.com.br');
  EdtEmail.Text := IniFiles.ReadString('REMETENTE', 'email','smtp.host.com.br');

end;

end.
