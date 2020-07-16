object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = btnVermelho
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblVermelho: TLabel
    Left = 88
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Vermelho'
    Visible = False
  end
  object lblAmarelo: TLabel
    Left = 224
    Top = 72
    Width = 39
    Height = 13
    Caption = 'Amarelo'
    Visible = False
  end
  object lblVerde: TLabel
    Left = 368
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Verde'
    Visible = False
  end
  object btnVermelho: TButton
    Left = 88
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 0
    OnClick = btnVermelhoClick
  end
  object btnAmarelo: TButton
    Left = 224
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Amarelo'
    TabOrder = 1
    OnClick = btnAmareloClick
  end
  object btnVerde: TButton
    Left = 368
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 2
    OnClick = btnVerdeClick
  end
end
