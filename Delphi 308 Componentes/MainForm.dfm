object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 405
  ClientWidth = 667
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
    Left = 504
    Top = 8
    Width = 57
    Height = 13
    Caption = 'S'#243' Numeros'
  end
  object Label2: TLabel
    Left = 504
    Top = 54
    Width = 63
    Height = 13
    Caption = 'Caixa Normal'
  end
  object Label3: TLabel
    Left = 505
    Top = 100
    Width = 56
    Height = 13
    Caption = 'Caixa Baixa'
  end
  object Label4: TLabel
    Left = 505
    Top = 146
    Width = 49
    Height = 13
    Caption = 'Caixa Alta'
  end
  object lblOpcao: TLabel
    Left = 8
    Top = 265
    Width = 41
    Height = 13
    Caption = 'lblOpcao'
  end
  object Edit1: TEdit
    Left = 503
    Top = 27
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    TextHint = 'OnlyNumber'
  end
  object Edit2: TEdit
    Left = 503
    Top = 73
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'NormalCase'
  end
  object Edit3: TEdit
    Left = 505
    Top = 119
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 2
    TextHint = 'lowercase'
  end
  object Edit4: TEdit
    Left = 505
    Top = 165
    Width = 121
    Height = 21
    BevelInner = bvNone
    CharCase = ecUpperCase
    TabOrder = 3
    TextHint = 'UPPERCASE'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 43
    Width = 137
    Height = 90
    ItemHeight = 13
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Nome'
  end
  object Button1: TButton
    Left = 144
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Inserir'
    Default = True
    TabOrder = 6
    OnClick = Button1Click
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 146
    Width = 249
    Height = 113
    Caption = 'Escolha uma Op'#231#227'o:'
    Columns = 2
    Items.Strings = (
      'Pizza'
      'Bolo'
      'Coca Cola'
      'Guaran'#225)
    TabOrder = 7
    OnClick = RadioGroup1Click
  end
  object GroupBox1: TGroupBox
    Left = 394
    Top = 224
    Width = 232
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 8
    object SpeedButton1: TSpeedButton
      Left = 16
      Top = 32
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object ComboBox1: TComboBox
      Left = 61
      Top = 34
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 61
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
end
