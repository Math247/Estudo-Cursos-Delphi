unit Classe.Pessoa;

interface

type

  TPessoa = class
  private
    FSalario: Currency;
    FNome: String;
    procedure SetNome(const Value: String);
    procedure SetSalario(const Value: Currency);
  public
    property Nome : String read FNome write SetNome;
    property Salario : Currency read FSalario write SetSalario;
    function calcularSalario : Currency; virtual;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.calcularSalario: Currency;
begin
  Result := Salario;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Nome não pode ser vazio!');
  FNome := Value;
end;

procedure TPessoa.SetSalario(const Value: Currency);
begin
  if Value <= 0 then
    raise Exception.Create('Salário não pode ser menor ou igual a zero!');
  FSalario := Value;
end;

end.
