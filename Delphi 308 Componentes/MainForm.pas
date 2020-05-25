unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    Edit5: TEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    lblOpcao: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  //ao clicar no botão, eu pego o conteudo no Edit5, e mando pro meu ListBox;
  ListBox1.Items.Add(Edit5.Text);
  //ao adicionar o conteúdo, ele limpa o texto do Edit;
  Edit5.Clear;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  //só conseguirei mexer no combobox se o checkedbox estiver retornando verdadeiro;
  ComboBox1.Enabled := CheckBox1.Checked;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  //Pegou o item selecionado no indice do item selecionado, viu qual era esse item, e
  //mandou pro Label para ser exibido;
  lblOpcao.Caption := RadioGroup1.Items[RadioGroup1.ItemIndex];
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  //o botão irá adicionar no combobox o item que estiver selecionado no ListBox;
  ComboBox1.Items.Add(ListBox1.Items[ListBox1.ItemIndex]);
end;

end.
