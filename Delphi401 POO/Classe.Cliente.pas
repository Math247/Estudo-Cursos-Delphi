unit Classe.Cliente;

interface

uses Classe.Pessoa, Classe.Endereco;

type
  TCliente = class(TPessoa)
  private
    FValorCredito: Currency;
    FEndereco: TEndereco;
    procedure SetValorCredito(const Value: Currency);
    procedure SetEndereco(const Value: TEndereco);

  public
    constructor Create; overload;
    constructor Create (Value : String); overload;
    constructor Create (Value : TPessoa); overload;
    destructor Destroy; override;
    property Endereco : TEndereco read FEndereco write SetEndereco;
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
  FEndereco := TEndereco.Create;
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

destructor TCliente.Destroy;
begin
  //sempre que o cliente for destruido com o Cliente.Free, o endere�o tbm ser�
  FEndereco.Free;
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

procedure TCliente.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin
  FValorCredito := Value;
end;

end.
