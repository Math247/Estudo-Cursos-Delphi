object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 241
  ClientWidth = 436
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
    Left = 11
    Top = 27
    Width = 35
    Height = 13
    Caption = 'Fun'#231#227'o'
  end
  object Label2: TLabel
    Left = 11
    Top = 54
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 162
    Top = 54
    Width = 32
    Height = 13
    Caption = 'Salario'
  end
  object Label4: TLabel
    Left = 306
    Top = 54
    Width = 29
    Height = 13
    Caption = 'Bonus'
  end
  object cbFuncao: TComboBox
    Left = 52
    Top = 24
    Width = 376
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Administrativo'
    Items.Strings = (
      'Administrativo'
      'Vendedor'
      'Funcion'#225'rio')
  end
  object edtNome: TEdit
    Left = 44
    Top = 51
    Width = 104
    Height = 21
    TabOrder = 1
  end
  object edtSalario: TEdit
    Left = 203
    Top = 51
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object edtBonus: TEdit
    Left = 347
    Top = 51
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object btnCadastrar: TButton
    Left = 11
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 332
    Top = 96
    Width = 41
    Height = 25
    Caption = '<<'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 379
    Top = 96
    Width = 40
    Height = 25
    Caption = '>>'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 8
    Top = 127
    Width = 420
    Height = 89
    TabOrder = 7
  end
  object btnCalcular: TButton
    Left = 232
    Top = 96
    Width = 94
    Height = 25
    Caption = 'Calcular Sal'#225'rio'
    TabOrder = 8
  end
end
