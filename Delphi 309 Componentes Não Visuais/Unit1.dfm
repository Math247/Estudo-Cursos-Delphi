object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 404
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 385
    Width = 643
    Height = 19
    AutoHint = True
    Panels = <>
    SimplePanel = True
    ExplicitLeft = 328
    ExplicitTop = 224
    ExplicitWidth = 0
  end
  object MainMenu1: TMainMenu
    Images = ImageList1
    Left = 600
    Top = 16
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
        Hint = 'Comando Abrir | Este Comando Abre um Arquivo '
      end
      object N1: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Salvar1: TMenuItem
        Break = mbBarBreak
        Caption = 'Salvar'
        object SalvarComo1: TMenuItem
          Caption = 'Salvar Como'
        end
        object Salvartodos1: TMenuItem
          Caption = 'Salvar Todos'
        end
      end
      object Fechar1: TMenuItem
        Action = mnFechar
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Copiar1: TMenuItem
        Caption = 'Copiar'
        ShortCut = 16451
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
        ShortCut = 16470
      end
      object Gravar1: TMenuItem
        AutoCheck = True
        Caption = 'Gravar'
        ShortCut = 16455
        OnClick = Gravar1Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 600
    Top = 72
  end
  object ActionList1: TActionList
    Left = 600
    Top = 128
    object mnFechar: TAction
      Caption = 'Fechar'
      OnExecute = mnFecharExecute
    end
  end
end
