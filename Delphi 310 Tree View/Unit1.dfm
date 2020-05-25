object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 322
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 201
    Height = 249
    Indent = 19
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Arquivo Texto'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 134
    Top = 263
    Width = 75
    Height = 25
    Caption = 'Din'#226'mica'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListView1: TListView
    Left = 232
    Top = 48
    Width = 327
    Height = 150
    Columns = <>
    Groups = <
      item
        Header = 'Primeiro Grupo'
        GroupID = 0
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end
      item
        Header = 'Segundo Grupo'
        GroupID = 1
        State = [lgsNormal]
        HeaderAlign = taLeftJustify
        FooterAlign = taLeftJustify
        TitleImage = -1
      end>
    Items.ItemData = {
      05A20000000400000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      00085000720069006D006500690072006F0000000000FFFFFFFFFFFFFFFF0000
      000000000000000000000753006500670075006E0064006F0000000000FFFFFF
      FFFFFFFFFF000000000100000000000000085400650072006300650069007200
      6F0000000000FFFFFFFFFFFFFFFF000000000100000000000000065100750061
      00720074006F00}
    GroupView = True
    TabOrder = 3
  end
end
