object ChangeColor: TChangeColor
  Left = 0
  Top = 0
  Caption = 'ChangeColor'
  ClientHeight = 138
  ClientWidth = 356
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnAmarelo: TButton
    Left = 8
    Top = 8
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Amarelo'
    TabOrder = 0
    OnClick = btnAmareloClick
  end
  object btnAzul: TButton
    Left = 121
    Top = 8
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Azul'
    TabOrder = 1
    OnClick = btnAzulClick
  end
  object btnVerde: TButton
    Left = 234
    Top = 8
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Verde'
    TabOrder = 2
    OnClick = btnVerdeClick
  end
  object btnPreto: TButton
    Left = 8
    Top = 71
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Preto'
    TabOrder = 3
    OnClick = btnPretoClick
  end
  object btnBranco: TButton
    Left = 121
    Top = 71
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Branco'
    TabOrder = 4
    OnClick = btnBrancoClick
  end
  object btnVermelho: TButton
    Left = 234
    Top = 71
    Width = 107
    Height = 57
    Cursor = crHandPoint
    Caption = 'Vermelho'
    TabOrder = 5
    OnClick = btnVermelhoClick
  end
end
