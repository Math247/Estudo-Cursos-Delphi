object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 408
  ClientWidth = 696
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
    Left = 80
    Top = 21
    Width = 56
    Height = 13
    Caption = 'Tecnologias'
  end
  object Label2: TLabel
    Left = 336
    Top = 21
    Width = 54
    Height = 13
    Caption = 'Habilidades'
  end
  object SpeedButton1: TSpeedButton
    Left = 280
    Top = 128
    Width = 23
    Height = 22
    Caption = '<'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 280
    Top = 88
    Width = 23
    Height = 22
    Caption = '>'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 280
    Top = 168
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 280
    Top = 208
    Width = 23
    Height = 22
    Caption = '<<'
    OnClick = SpeedButton4Click
  end
  object ListBox1: TListBox
    Left = 80
    Top = 40
    Width = 161
    Height = 257
    DragMode = dmAutomatic
    ItemHeight = 13
    Items.Strings = (
      'Delphi'
      'C'
      'C#'
      'C++'
      'Java'
      'JavaScript')
    TabOrder = 0
    OnDragDrop = ListBox1DragDrop
    OnDragOver = ListBox1DragOver
  end
  object ListBox2: TListBox
    Left = 336
    Top = 40
    Width = 161
    Height = 257
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 1
    OnDragDrop = ListBox2DragDrop
    OnDragOver = ListBox2DragOver
  end
end
