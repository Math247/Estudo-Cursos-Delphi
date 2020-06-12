unit Classe.Pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private //visivel somente para essa unit;

  public
    Nome : String;
    DataNasc : String;
    Sexo : String;
    Etnia : String;
    function Idade : Integer;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  //calcular e retornar a idade da pessoa.
  Result := Trunc((now - StrToDate(DataNasc)) / 365.25)
end;

end.
