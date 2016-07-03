object FrmQuickReport: TFrmQuickReport
  Left = 253
  Top = 132
  Width = 870
  Height = 61
  Caption = 'Delphi Class about QuickReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 207
    Top = 8
    object Configurao1: TMenuItem
      Caption = 'Settings'
    end
    object QuickReport1: TMenuItem
      Caption = 'QuickReport'
      object ReportDetails1: TMenuItem
        Caption = 'Report Details'
        OnClick = ReportDetails1Click
      end
      object ReportSubDetails1: TMenuItem
        Caption = 'Report SubDetails'
      end
      object ReportCharts1: TMenuItem
        Caption = 'Report Charts'
      end
    end
  end
end
