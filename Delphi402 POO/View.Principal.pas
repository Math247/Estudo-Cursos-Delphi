unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Administrativo,
  Classe.Pessoa, Classe.Vendedor;

type
  TEnumFuncao = (tpAdministrativo, tpVendedor, tpFuncionario);

type
  TForm1 = class(TForm)
    Label1: TLabel;
    cbFuncao: TComboBox;
    Label2: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtSalario: TEdit;
    Label4: TLabel;
    edtBonus: TEdit;
    btnCadastrar: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    btnCalcular: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure fnc_IncluirAdministrativo;
    procedure fnc_IncluirVendedor;
    procedure fnc_IncluirFuncionario;
    procedure fnc_ExibirDados(Pos : Integer);
    { Private declarations }
  public
    { Public declarations }
    Funcionario: Array [1 .. 100] of TPessoa;
    QtdFunc: Integer;
    RegAtual : Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  try
    case TEnumFuncao(cbFuncao.ItemIndex) of
      tpAdministrativo:
        begin
          fnc_IncluirAdministrativo;
        end;
      tpVendedor:
        begin
          fnc_IncluirVendedor;
        end;
      tpFuncionario:
        begin
          fnc_IncluirFuncionario;
        end;
    end;
    Inc(QtdFunc);
  except
    raise Exception.Create('Erro ao Cadastrar Funcion�rio!');
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  QtdFunc := 0;
  RegAtual := 0;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RegAtual <= 0 then
    exit;

  RegAtual := RegAtual - 1;
  fnc_ExibirDados(RegAtual);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if RegAtual >= QtdFunc then
    exit;

  RegAtual := RegAtual + 1;
  fnc_ExibirDados(RegAtual);
end;

procedure TForm1.fnc_ExibirDados(Pos: Integer);
begin
  edtNome.Text := Funcionario[RegAtual].Nome;
  edtSalario.Text := CurrToStr(Funcionario[RegAtual].Salario);

  if (Funcionario[RegAtual].ClassName = 'TAdministrativo') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TAdministrativo(Funcionario[RegAtual]).Bonus);
    cbFuncao.ItemHeight := Integer(tpAdministrativo);
  end;
  if (Funcionario[RegAtual].ClassName = 'TVendedor') then
  begin
    edtBonus.Enabled := true;
    edtBonus.Text := CurrToStr(TVendedor(Funcionario[RegAtual]).Comissao);
    cbFuncao.ItemHeight := Integer(tpVendedor);
  end;
  if (Funcionario[RegAtual].ClassName = 'TPessoa') then
  begin
    edtBonus.Enabled := false;
    edtBonus.Text := '';
    cbFuncao.ItemIndex := Integer(tpFuncionario);
  end;

end;

procedure TForm1.fnc_IncluirAdministrativo;
begin
  Funcionario[QtdFunc] := TAdministrativo.Create;
  TAdministrativo(Funcionario[QtdFunc]).Bonus := StrToCurr(edtBonus.Text);
  TAdministrativo(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TAdministrativo(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirVendedor;
begin
  Funcionario[QtdFunc] := TVendedor.Create;
  TVendedor(Funcionario[QtdFunc]).Comissao := StrToCurr(edtBonus.Text);
  TVendedor(Funcionario[QtdFunc]).Nome := edtNome.Text;
  TVendedor(Funcionario[QtdFunc]).Salario := StrToCurr(edtSalario.Text);
end;

procedure TForm1.fnc_IncluirFuncionario;
begin
  Funcionario[QtdFunc] := TPessoa.Create;
  Funcionario[QtdFunc].Nome := edtNome.Text;
  Funcionario[QtdFunc].Salario := StrToCurr(edtSalario.Text);
end;

end.
