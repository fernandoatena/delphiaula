unit QuickReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmQuickReport = class(TForm)
    MainMenu: TMainMenu;
    Configurao1: TMenuItem;
    QuickReport1: TMenuItem;
    ReportDetails1: TMenuItem;
    ReportSubDetails1: TMenuItem;
    ReportCharts1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQuickReport: TFrmQuickReport;

implementation

{$R *.dfm}

end.
