object Dialogo: TDialogo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dialogo'
  ClientHeight = 161
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 289
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 280
    Top = 112
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object Button2: TButton
    Left = 361
    Top = 112
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
end
