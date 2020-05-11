object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit1: TMaskEdit
    Left = 64
    Top = 48
    Width = 222
    Height = 21
    EditMask = '999.999.999-99 '
    MaxLength = 15
    TabOrder = 0
    Text = '   .   .   -   '
  end
end
