object FrmQuickReport: TFrmQuickReport
  Left = 253
  Top = 132
  Width = 870
  Height = 95
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
        object RealAula1: TMenuItem
          Break = mbBarBreak
          Caption = 'Report - Class 1'
          OnClick = RealAula1Click
        end
        object RelatorioAula21: TMenuItem
          Caption = '    - Task of report 1'
          OnClick = RelatorioAula21Click
        end
        object RelatorioAula22: TMenuItem
          Caption = 'Report - Class 2'
          OnClick = RelatorioAula22Click
        end
        object RelatorioAula2tarefa1: TMenuItem
          Caption = '    - Task of report 2'
          OnClick = RelatorioAula2tarefa1Click
        end
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
