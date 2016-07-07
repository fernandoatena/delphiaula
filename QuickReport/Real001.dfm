object Form1: TForm1
  Left = 354
  Top = 147
  Width = 383
  Height = 338
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 33
    Width = 71
    Height = 13
    Caption = 'Empresa Inicial'
  end
  object Label2: TLabel
    Left = 97
    Top = 33
    Width = 66
    Height = 13
    Caption = 'Empresa Final'
  end
  object Edit1: TEdit
    Left = 10
    Top = 48
    Width = 76
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 97
    Top = 48
    Width = 76
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 169
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 104
    Width = 169
    Height = 25
    Caption = 'Tarefa'
    TabOrder = 3
    OnClick = Button2Click
  end
end
