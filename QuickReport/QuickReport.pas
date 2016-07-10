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
    RealAula1: TMenuItem;
    RelatorioAula21: TMenuItem;
    RelatorioAula22: TMenuItem;
    RelatorioAula2tarefa1: TMenuItem;
    procedure RealAula1Click(Sender: TObject);
    procedure RelatorioAula21Click(Sender: TObject);
    procedure RelatorioAula22Click(Sender: TObject);
    procedure RelatorioAula2tarefa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmQuickReport: TFrmQuickReport;

implementation

uses DataModuleConexao, Real001, QRDetail002, QRDetail001, QRDetail003,
  QRDetail004;



{$R *.dfm}

procedure TFrmQuickReport.RealAula1Click(Sender: TObject);
begin
  FrmQRDetail001 := TFrmQRDetail001.Create(nil);
  FrmQRDetail001.Preview;
end;

procedure TFrmQuickReport.RelatorioAula21Click(Sender: TObject);
begin
  FrmQRDetail002 := TFrmQRDetail002.Create(nil);
  FrmQRDetail002.Preview;
end;

procedure TFrmQuickReport.RelatorioAula22Click(Sender: TObject);
begin
  FrmQRDetail003 := TFrmQRDetail003.Create(nil);
  FrmQRDetail003.Preview;
end;

procedure TFrmQuickReport.RelatorioAula2tarefa1Click(Sender: TObject);
begin
  FrmQRDetail004 := TFrmQRDetail004.Create(nil);
  FrmQRDetail004.Preview
end;

end.
