program QuickReportPJ;

uses
  Forms,
  QuickReport in 'QuickReport.pas' {FrmQuickReport},
  DataModuleConexao in 'DataModuleConexao.pas' {DMConexao: TDataModule},
  Real001 in 'Real001.pas' {Form1},
  QRDetail001 in 'QRDetail001.pas' {FrmQRDetail001: TQuickRep},
  QRDetail002 in 'QRDetail002.pas' {FrmQRDetail002: TQuickRep},
  QRDetail003 in 'QRDetail003.pas' {FrmQRDetail003: TQuickRep},
  QRDetail004 in 'QRDetail004.pas' {FrmQRDetail004: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmQuickReport, FrmQuickReport);
  Application.CreateForm(TDMConexao, DMConexao);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
