program QuickReportPJ;

uses
  Forms,
  QuickReport in 'QuickReport.pas' {FrmQuickReport},
  DataModuleConexao in 'DataModuleConexao.pas' {DMConexao: TDataModule},
  Real001 in 'Real001.pas' {Form1},
  QRDetail001 in 'QRDetail001.pas' {FrmQRDetail001: TQuickRep},
  QRDetail002 in 'QRDetail002.pas' {FrmQRDetail002: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmQuickReport, FrmQuickReport);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmQRDetail001, FrmQRDetail001);
  Application.CreateForm(TFrmQRDetail002, FrmQRDetail002);
  Application.Run;
end.
