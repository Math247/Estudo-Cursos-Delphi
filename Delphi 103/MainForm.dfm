object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 292
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object butTeste: TButton
    Left = 8
    Top = 198
    Width = 193
    Height = 41
    Caption = 'Total NF'
    TabOrder = 0
    OnClick = butTesteClick
  end
  object Edit1: TEdit
    Left = 288
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 288
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 288
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 288
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit4'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'Arquivos Texto|*.txt'
    Title = 'Abra um arquivo texto'
    Left = 128
    Top = 144
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 56
    Top = 144
  end
end
