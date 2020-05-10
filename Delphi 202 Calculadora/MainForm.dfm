object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 144
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 151
    Top = 27
    Width = 25
    Height = 18
    Caption = '='
  end
  object Valor1: TEdit
    Left = 24
    Top = 24
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Valor2: TEdit
    Left = 87
    Top = 24
    Width = 58
    Height = 21
    TabOrder = 1
  end
  object Resultado: TEdit
    Left = 178
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 57
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 87
    Top = 64
    Width = 58
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 151
    Top = 64
    Width = 50
    Height = 25
    Caption = 'x'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 207
    Top = 64
    Width = 50
    Height = 25
    Caption = 'div'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 263
    Top = 64
    Width = 50
    Height = 25
    Caption = '/'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 319
    Top = 64
    Width = 58
    Height = 25
    Caption = 'mod'
    TabOrder = 8
    OnClick = Button6Click
  end
end
