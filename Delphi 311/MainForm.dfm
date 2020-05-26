object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 430
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 64
    Top = 24
    Width = 473
    Height = 337
    ActivePage = TabSheet3
    TabOrder = 0
    object tbLista: TTabSheet
      Caption = 'tbLista'
      ExplicitLeft = 0
      ExplicitTop = 40
      object Button1: TButton
        Left = 184
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 0
      end
      object Animate1: TAnimate
        Left = 16
        Top = 32
        Width = 272
        Height = 60
        CommonAVI = aviCopyFile
        StopFrame = 22
      end
      object BitBtn1: TBitBtn
        Left = 16
        Top = 112
        Width = 75
        Height = 25
        Caption = 'BitBtn1'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object tabCadastro: TTabSheet
      Caption = 'tabCadastro'
      ImageIndex = 1
      object Button2: TButton
        Left = 352
        Top = 256
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 96
        Top = 72
        Width = 186
        Height = 21
        Date = 43976.000000000000000000
        Time = 0.652958738428424100
        DateFormat = dfLong
        TabOrder = 1
      end
      object MonthCalendar1: TMonthCalendar
        Left = 96
        Top = 112
        Width = 225
        Height = 160
        Date = 43976.000000000000000000
        TabOrder = 2
      end
      object Button3: TButton
        Left = 344
        Top = 112
        Width = 75
        Height = 25
        Caption = 'Button3'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
  object ShellResources1: TShellResources
    Left = 480
    Top = 96
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 288
    Top = 200
  end
end
