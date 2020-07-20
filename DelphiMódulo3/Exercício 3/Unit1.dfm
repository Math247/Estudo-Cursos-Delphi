object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 317
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblKm: TLabel
    Left = 96
    Top = 80
    Width = 14
    Height = 13
    Caption = 'Km'
  end
  object lblResultado: TLabel
    Left = 96
    Top = 216
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object lblMs: TLabel
    Left = 440
    Top = 80
    Width = 17
    Height = 13
    Caption = 'M/s'
  end
  object lblResultado2: TLabel
    Left = 440
    Top = 216
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtPrimeiro: TEdit
    Left = 96
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSegundo: TEdit
    Left = 440
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnMetroSegundo: TButton
    Left = 96
    Top = 163
    Width = 75
    Height = 25
    Caption = 'To M/S'
    TabOrder = 2
    OnClick = btnMetroSegundoClick
  end
  object btnKm: TButton
    Left = 440
    Top = 163
    Width = 75
    Height = 25
    Caption = 'To Km/h'
    TabOrder = 3
    OnClick = btnKmClick
  end
end
