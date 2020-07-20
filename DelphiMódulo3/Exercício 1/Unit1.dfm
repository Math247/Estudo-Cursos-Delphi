object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 315
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResult: TLabel
    Left = 69
    Top = 107
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object btnAdicao: TButton
    Left = 69
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Adi'#231#227'o'
    TabOrder = 0
    OnClick = btnAdicaoClick
  end
  object btnSubtracao: TButton
    Left = 150
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Subtra'#231#227'o'
    TabOrder = 1
    OnClick = btnSubtracaoClick
  end
  object btnMultiplicacao: TButton
    Left = 231
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Multiplica'#231#227'o'
    TabOrder = 2
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisão: TButton
    Left = 312
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Divis'#227'o'
    TabOrder = 3
    OnClick = btnDivisãoClick
  end
  object edtPrimeiro: TEdit
    Left = 69
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtSegundo: TEdit
    Left = 69
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
