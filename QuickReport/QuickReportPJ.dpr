program QuickReportPJ;

uses
  Forms,
  QuickReport in 'QuickReport.pas' {FrmQuickReport},
  DataModuleConexao in 'DataModuleConexao.pas' {DMConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TFrmQuickReport, FrmQuickReport);
  Application.Run;
end.