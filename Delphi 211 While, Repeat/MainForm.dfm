object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 333
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 240
    Width = 75
    Height = 25
    Caption = 'First'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 16
    Width = 520
    Height = 209
    Ctl3D = True
    DoubleBuffered = False
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object Button2: TButton
    Left = 469
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Final'
    TabOrder = 2
    OnClick = Button2Click
  end
end
