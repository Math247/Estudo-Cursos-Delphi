unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  //estou chamando o clique do botão quando arrasto para tal lista;
  SpeedButton2.Click;
end;

procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source <> Sender;
end;

procedure TForm1.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  SpeedButton1.Click;
end;

procedure TForm1.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source <> Sender;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  //se algo estiver selecionado
  if ListBox2.ItemIndex > -1 then
    //adiciono o que está selecionado na outra lista
    ListBox1.Items.Add(ListBox2.Items[ListBox2.ItemIndex]);
    //deleto na outra lista
    ListBox2.DeleteSelected;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
    ListBox2.Items.Add(ListBox1.Items[ListBox1.ItemIndex]);
    ListBox1.DeleteSelected;

end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  Item : String;
begin
  //para cada item da primeira lista
  for Item in ListBox1.Items do
  begin
    //eu adiciono cada um na segunda lista
    ListBox2.Items.Append(Item);
  end;
  //no final limpo a primeira lista;
  ListBox1.Clear;

end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  Item : String;
begin
  for Item in ListBox2.Items do
  begin
    ListBox1.Items.Append(Item);
  end;
  ListBox2.Clear;

end;

end.
