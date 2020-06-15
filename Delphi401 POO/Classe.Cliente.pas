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
    //SINALIZA PARA O PROGRAMADOR QUE A FUN��O FOI REESCRITA
    function RetornaNome : String; override;

    function MetodoAbstrato : String; override;
  end;

implementation

{ TCliente }

function TCliente.MetodoAbstrato: String;
begin
  Result := 'Eu sou o m�todo abstrato';
end;

function TCliente.RetornaNome: String;
begin
  //vai na classe m�e, executa o c�digo da mesma fu���o da classe, depois retorna para c�
  inherited;
  Result := 'Eu sou filha de' + Nome;
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
