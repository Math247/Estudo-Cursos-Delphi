program Project1;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {Form1},
  Calculadora in 'Calculadora.pas',
  DataModule in 'DataModule.pas' {DataModule1: TDataModule},
  Configuracao in 'Configuracao.pas' {FrmConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.Run;
end.
