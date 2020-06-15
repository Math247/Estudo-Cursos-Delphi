unit Classe.Pessoa;

interface

uses
  System.SysUtils, Classe.SQL;

type
  TPessoa = class
  private // visivel somente para essa unit;
    FNome: String;
    FEtnia: String;
    FDataNasc: String;
    FSexo: String;
    function GetNome: String;
    procedure SetNome(Value: String);
    procedure SetEtnia(const Value: String);
    procedure SetDataNasc(const Value: String);
    procedure SetSexo(const Value: String);
  public
    property DataNasc: String read FDataNasc write SetDataNasc;
    property Sexo: String read FSexo write SetSexo;
    property Etnia: String read FEtnia write SetEtnia;
    property Nome: String read GetNome write SetNome;
    function Idade: Integer;
    function Receber(I : Integer) : String; overload;

    //permite a função ser sobrescrita com mesmo nome;
    function Receber(I : Currency) : String; overload;
    function Receber(A, B : Integer) : String; overload;

    //serve para sinalizar para o programador que a função pode ser reescrita na classe filha
    function RetornaNome : String; virtual;
    //serve para sinalizar que pode ser implementado em outras classes, e não será implementado na classe mãe
    function MetodoAbstrato : String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  // calcular e retornar a idade da pessoa Encapsulamento Coeso -
  // não juntar varias funções dentro de um só método para conseguir reaproveitá-lo.
  Result := Trunc((now - StrToDate(DataNasc)) / 365.25)
end;

function TPessoa.Receber(I: Currency): String;
begin
  Result := 'Recebi um valor currency: ' + CurrToStr(I);
end;

function TPessoa.Receber(I: Integer): String;
begin
  Result := 'Recebia um Valor Inteiro: ' + IntToStr(I);
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetDataNasc(const Value: String);
begin
  FDataNasc := Value;
end;

procedure TPessoa.SetEtnia(const Value: String);
begin
  FEtnia := Value;
end;

procedure TPessoa.SetNome(Value: string);
begin
  if Value = '' then
    raise Exception.Create('Não pode valor vazio');
  FNome := Value;
end;

procedure TPessoa.SetSexo(const Value: String);
begin
  FSexo := Value;
end;

function TPessoa.Receber(A, B: Integer): String;
begin
  Result := 'A soma desses inteiros é: ' + IntToStr(A + B);
end;

function TPessoa.RetornaNome: String;
begin
  Result := 'Eu sou a classe TPessoa';
end;

end.
