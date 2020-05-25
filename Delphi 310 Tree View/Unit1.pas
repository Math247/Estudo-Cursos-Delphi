unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Button2: TButton;
    ListView1: TListView;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  //est� carregando do meu arquivo txt, o que ser� incluido na TreeView;
  TreeView1.LoadFromFile('Tecnologias.txt');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Node, SubNo: TTreeNode;
begin
  TreeView1.Items.Clear;
  Node := TreeView1.Items.Add(nil,'N� Principal');
  SubNo := TreeView1.Items.Add(Node, 'Primeiro N�');
  TreeView1.Items.AddChild(SubNo, 'Segundo N�');
  TreeView1.Items.AddChild(SubNo, 'Terceiro N�');
  TreeView1.Items.AddChild(SubNo, 'Quarto N�');
  SubNo := TreeView1.Items.AddChild(SubNo, 'Novo N�');

end;

end.
