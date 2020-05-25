object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 366
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
  object btnTeste: TButton
    Left = 472
    Top = 8
    Width = 113
    Height = 49
    Caption = 'Meu primeiro Bot'#227'o'
    Default = True
    DropDownMenu = PopupMenu1
    Style = bsSplitButton
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 175
    Height = 41
    Caption = 'Button1'
    Default = True
    Style = bsCommandLink
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 120
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 16
    object Primeiro1: TMenuItem
      Caption = 'Primeiro'
    end
    object Segundo1: TMenuItem
      Caption = 'Segundo'
    end
  end
end
