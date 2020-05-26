object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 234
  ClientWidth = 177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnDiv: TSpeedButton
    Left = 122
    Top = 192
    Width = 23
    Height = 22
    Caption = '/'
    OnClick = btnDivClick
  end
  object btnMult: TSpeedButton
    Left = 88
    Top = 192
    Width = 28
    Height = 22
    Caption = 'X'
    OnClick = btnMultClick
  end
  object btnSub: TSpeedButton
    Left = 53
    Top = 192
    Width = 29
    Height = 22
    Caption = '-'
    OnClick = btnSubClick
  end
  object btnSoma: TSpeedButton
    Left = 24
    Top = 192
    Width = 23
    Height = 22
    Caption = '+'
    OnClick = btnSomaClick
  end
  object EdtValor1: TLabeledEdit
    Left = 24
    Top = 48
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor 1'
    TabOrder = 0
  end
  object EdtValor2: TLabeledEdit
    Left = 24
    Top = 96
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor 2'
    TabOrder = 1
  end
  object EdtResultado: TLabeledEdit
    Left = 24
    Top = 144
    Width = 121
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Resultado'
    TabOrder = 2
  end
end
