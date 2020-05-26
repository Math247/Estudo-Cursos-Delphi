object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 378
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
  object CategoryButtons1: TCategoryButtons
    Left = 0
    Top = 0
    Height = 378
    Align = alLeft
    ButtonFlow = cbfVertical
    Categories = <
      item
        Caption = 'Cadastro'
        Color = 16771818
        Collapsed = True
        Items = <
          item
            Caption = 'Novo'
          end
          item
            Caption = 'Perfil'
          end>
      end
      item
        Caption = 'Koe'
        Color = 15400959
        Collapsed = False
        Items = <>
      end
      item
        Caption = 'Rapaziada'
        Color = 16777194
        Collapsed = False
        Items = <>
      end>
    DoubleBuffered = False
    ParentDoubleBuffered = False
    RegularButtonColor = clWhite
    SelectedButtonColor = 15132390
    ShowHint = False
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 8
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 100
    Top = 0
    Width = 185
    Height = 378
    Align = alLeft
    Caption = 'Panel1'
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 106
    ExplicitHeight = 349
    object Splitter2: TSplitter
      Left = 1
      Top = 1
      Width = 4
      Height = 376
      ExplicitLeft = 0
      ExplicitHeight = 347
    end
  end
  object Panel2: TPanel
    Left = 285
    Top = 0
    Width = 382
    Height = 378
    Align = alClient
    Caption = 'Panel2'
    Color = clBackground
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 312
    ExplicitTop = 168
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Splitter1: TSplitter
      Left = 1
      Top = 1
      Height = 376
      ExplicitLeft = 6
      ExplicitTop = 2
      ExplicitHeight = 347
    end
  end
end
