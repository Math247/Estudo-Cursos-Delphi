unit Classe.Cliente;

interface

uses Classe.Pessoa;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
    procedure SetValorCredito(const Value: Currency);

  public
    property ValorCredito : Currency read FValorCredito write SetValorCredito;
    //SINALIZA PARA O PROGRAMADOR QUE A FUNÇÃO FOI REESCRITA
    function RetornaNome : String; override;

    function MetodoAbstrato : String; override;
  end;

implementation

{ TCliente }

function TCliente.MetodoAbstrato: String;
begin
  Result := 'Eu sou o método abstrato';
end;

function TCliente.RetornaNome: String;
begin
  Result := 'Eu sou a classe TCliente';
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
