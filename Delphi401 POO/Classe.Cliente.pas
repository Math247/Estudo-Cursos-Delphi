unit Classe.Cliente;

interface

uses Classe.Pessoa;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
    procedure SetValorCredito(const Value: Currency);

  public
    constructor Create; overload;
    constructor Create (Value : String); overload;
    constructor Create (Value : TPessoa); overload;
    property ValorCredito : Currency read FValorCredito write SetValorCredito;
    //SINALIZA PARA O PROGRAMADOR QUE A FUN��O FOI REESCRITA
    function RetornaNome : String; override;

    function MetodoAbstrato : String; override;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  //ser� executado sempre que criado um novo objeto cliente;
  Nome := 'Novo Cliente';
end;

constructor TCliente.Create(Value: String);
begin
  Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa);
begin
  Nome := Value.Nome;
  DataNasc := Value.DataNasc;
  Sexo := Value.Sexo;
end;

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
