object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o de Envio de Email'
  ClientHeight = 226
  ClientWidth = 521
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
  object EdtHost: TLabeledEdit
    Left = 8
    Top = 32
    Width = 145
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Host'
    TabOrder = 0
  end
  object EdtPassword: TLabeledEdit
    Left = 8
    Top = 144
    Width = 145
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'PassWord'
    TabOrder = 1
  end
  object EdtUser: TLabeledEdit
    Left = 8
    Top = 88
    Width = 145
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'UserName'
    TabOrder = 2
  end
  object EdtRemetente: TLabeledEdit
    Left = 216
    Top = 32
    Width = 177
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Remetente'
    TabOrder = 3
  end
  object EdtEmail: TLabeledEdit
    Left = 216
    Top = 88
    Width = 177
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Email'
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 192
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
