object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblTeste: TLabel
    Left = 248
    Top = 112
    Width = 36
    Height = 13
    Caption = 'Apareci'
    Visible = False
  end
  object btnHabi: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Habilita'
    TabOrder = 0
    OnClick = btnHabiClick
  end
  object btnDesab: TButton
    Left = 344
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Desabilita'
    TabOrder = 1
    OnClick = btnDesabClick
  end
end
