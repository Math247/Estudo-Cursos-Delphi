object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 303
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 106
    Height = 13
    Caption = 'Formulario Secundario'
  end
  object Button1: TButton
    Left = 440
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
end
