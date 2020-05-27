unit DataModule;

interface

uses
  System.SysUtils, System.Classes, Vcl.AppEvnts, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdBaseComponent, IdMessage, IniFiles, idAttachmentFile;

type
  TDataModule1 = class(TDataModule)
    ApplicationEvents1: TApplicationEvents;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    IniFiles: TIniFile;
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses
  Vcl.Forms, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
// grande bloco de try exception;
var
  Log: TStrings;
  Anexo: TidAttachmentFile;
  // toda e qualquer exceção na aplicação que não seja tratada pelo programador, cai aqui;
begin
  // log cria uma pasta e adiciona la todos os erros da minha aplicação;
  // se eu quiser que um erro tratado cai aqui, **va em somar;
  try
    Log := TStringList.Create;
    if FileExists(ExtractFilePath(Application.ExeName) + 'log.txt') then
      Log.LoadFromFile(ExtractFilePath(Application.ExeName) + 'log.txt');
    Log.Add('');
    Log.Add('Data: ' + DateToStr(Now));
    Log.Add('Classe do Erro: ' + E.ClassName);
    Log.Add('Mensagem do Erro: ' + E.Message);
    Log.SaveToFile(ExtractFilePath(Application.ExeName) + 'log.txt');

    IdMessage1.Body.Add
      ('Este é um email automático para te notificar que um erro ocorreu na aplicação XPTO.');
    IdMessage1.Body.Add
      ('Anexo neste email está o arquivo de log com todos os erros da aplicação.');
    Anexo := TidAttachmentFile.Create(IdMessage1.MessageParts,
      ExtractFilePath(Application.ExeName) + 'log.txt');

    IdSMTP1.Connect;
    IdSMTP1.Send(IdMessage1);

    IdSMTP1.Disconnect;
  except
    ShowMessage('Erro ao enviar email!');


  end;

  ShowMessage('Um erro ocorreu, verifique o log para mais informações.' +
    'Um email foi enviado para o administrador do sistema.');

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  IniFiles := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'config.ini');

  IdSMTP1.Host := IniFiles.ReadString('SMTP', 'host', '');
  IdSMTP1.Username := IniFiles.ReadString('SMTP', 'username', '');
  IdSMTP1.Password := IniFiles.ReadString('SMTP', 'password', '');
  IdSMTP1.AuthType := satDefault;

  IdMessage1.From.Name := IniFiles.ReadString('REMETENTE', 'remetente', '');
  IdMessage1.From.Address := IniFiles.ReadString('REMETENTE', 'email', '');

  IdMessage1.Recipients.Add.Address := 'matheuschabib@gmail.com';

end;

end.
