object Form1: TForm1
  Left = 488
  Top = 274
  Caption = 'Form1'
  ClientHeight = 195
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 64
    Width = 8
    Height = 13
    Caption = '='
  end
  object lblResult: TLabel
    Left = 216
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtN: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtM: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnResult: TButton
    Left = 16
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 2
    OnClick = btnResultClick
  end
end
