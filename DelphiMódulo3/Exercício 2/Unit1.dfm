object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 308
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblConverteFah: TLabel
    Left = 56
    Top = 80
    Width = 107
    Height = 13
    Caption = 'Conver'#231#227'o Fahrenheit'
  end
  object lblConvertCel: TLabel
    Left = 388
    Top = 80
    Width = 88
    Height = 13
    Caption = 'Conver'#231#227'o Celsius'
  end
  object lblResult1: TLabel
    Left = 56
    Top = 192
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object lblResult2: TLabel
    Left = 388
    Top = 192
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtTemperatura: TEdit
    Left = 56
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCelsius: TButton
    Left = 56
    Top = 152
    Width = 75
    Height = 25
    Caption = 'To Celsius'
    TabOrder = 1
    OnClick = btnCelsiusClick
  end
  object btnFahrenheit: TButton
    Left = 388
    Top = 152
    Width = 75
    Height = 25
    Caption = 'To Fahrenheit'
    TabOrder = 2
    OnClick = btnFahrenheitClick
  end
  object edtTemperatura2: TEdit
    Left = 388
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
