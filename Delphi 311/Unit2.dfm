object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 373
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FlowPanel1: TFlowPanel
    Left = 16
    Top = 8
    Width = 553
    Height = 153
    Caption = 'FlowPanel1'
    TabOrder = 0
    object Edit1: TEdit
      Left = 1
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 122
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 243
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 364
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'Edit4'
    end
  end
  object GridPanel1: TGridPanel
    Left = 17
    Top = 176
    Width = 544
    Height = 189
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 1
        Control = Memo1
        Row = 0
      end
      item
        Column = 0
        Control = Edit5
        Row = 1
      end
      item
        Column = 1
        Control = Button1
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 1
    DesignSize = (
      544
      189)
    object Label1: TLabel
      Left = 121
      Top = 41
      Width = 31
      Height = 13
      Anchors = []
      Caption = 'Label1'
      ExplicitLeft = 256
      ExplicitTop = 88
    end
    object Memo1: TMemo
      Left = 315
      Top = 3
      Width = 185
      Height = 89
      Anchors = []
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 184
      ExplicitTop = 48
    end
    object Edit5: TEdit
      Left = 76
      Top = 130
      Width = 121
      Height = 21
      Anchors = []
      TabOrder = 1
      Text = 'Edit5'
      ExplicitLeft = 216
      ExplicitTop = 88
    end
    object Button1: TButton
      Left = 370
      Top = 128
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Button1'
      TabOrder = 2
      ExplicitLeft = 232
      ExplicitTop = 80
    end
  end
end
