unit Classe.Pessoa;

interface

uses
  System.SysUtils, Classe.SQL;

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
  //calcular e retornar a idade da pessoa Encapsulamento Coeso -
  //não juntar varias funções dentro de um só método para conseguir reaproveitá-lo.
  Result := Trunc((now - StrToDate(DataNasc)) / 365.25)
end;

end.
