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
  object lblCapEdit: TLabel
    Left = 112
    Top = 64
    Width = 3
    Height = 13
    Visible = False
  end
  object edtEscreve: TEdit
    Left = 112
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnTroca: TButton
    Left = 112
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Troca'
    TabOrder = 1
    OnClick = btnTrocaClick
  end
end
