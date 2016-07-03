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
    procedure ReportDetails1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQuickReport: TFrmQuickReport;

implementation

uses DataModuleConexao, Real001;



{$R *.dfm}

procedure TFrmQuickReport.ReportDetails1Click(Sender: TObject);
begin
  Form1 := TForm1.create(self);
  Form1.show;
end;

end.
