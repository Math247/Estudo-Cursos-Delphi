unit Calculadora;

interface

uses
  System.SysUtils;

type

  ESomaError = class(Exception);
  ESubtraiError = class(Exception);
  EMultiplicaError = class(Exception);
  EDivideError = class(Exception);
  //enumerado
  TOperacao = (opSomar, opSubtrair, opMultiplicar, opDividir);

  TCalculadora = class
  private
    FN1: Double;
    FN2: Double;
    FResultado: String;
    FValor2: String;
    FValor1: String;
    procedure SetValor1(const Value: String);
    procedure SetValor2(const Value: String);

  protected

    procedure Somar;
    procedure Subtrair;
    procedure Multiplicar;
    procedure Dividir;

  public
    procedure ExecutaOperacao(Op: TOperacao);

  published
    property Valor1: String read FValor1 write SetValor1;
    property Valor2: String read FValor2 write SetValor2;
    property Resultado: String read FResultado;

  end;

implementation

{ TCalculadora }

procedure TCalculadora.Dividir;
begin
  try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);
    FResultado := FloatToStr(FN1 / FN2);
  except
    //Trato a exceção que por ventura posso ocorrer, derrubo ela, e ergo minha própria excessão com o raise;
    raise EDivideError.Create('Ocorreu um erro ao tentar executar uma operação de divisão!');
  end;
end;

procedure TCalculadora.ExecutaOperacao(Op: TOperacao);
begin
  case Op of
    opSomar: Somar;
    opSubtrair: Subtrair;
    opMultiplicar: Multiplicar;
    opDividir: Dividir;
  end;
end;

procedure TCalculadora.Multiplicar;
begin
  try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);
    FResultado := FloatToStr(FN1 * FN2);
  except
    //Trato a exceção que por ventura posso ocorrer, derrubo ela, e ergo minha própria excessão com o raise;
    raise EMultiplicaError.Create('Ocorreu um erro ao tentar executar uma operação de multiplicação!');
  end;
end;

procedure TCalculadora.SetValor1(const Value: String);
begin
  FValor1 := Value;
end;

procedure TCalculadora.SetValor2(const Value: String);
begin
  FValor2 := Value;
end;

procedure TCalculadora.Somar;
begin
  try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);
    FResultado := FloatToStr(FN1 + FN2);
  except
    //Trato a exceção que por ventura posso ocorrer, derrubo ela, e ergo minha própria excessão com o raise;
    raise ESomaError.Create('Ocorreu um erro ao tentar executar uma operação de soma!');
  end;
end;

procedure TCalculadora.Subtrair;
begin
  try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);
    FResultado := FloatToStr(FN1 - FN2);
  except
    //Trato a exceção que por ventura posso ocorrer, derrubo ela, e ergo minha própria excessão com o raise;
    raise ESubtraiError.Create('Ocorreu um erro ao tentar executar uma operação de subtrair!');
  end;
end;

end.
