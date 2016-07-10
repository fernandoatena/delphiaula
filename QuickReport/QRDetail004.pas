unit QRDetail004;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ZAbstractRODataset,
  ZDataset;

type
  TFrmQRDetail004 = class(TQuickRep)
    ZNFDoctounico: TZReadOnlyQuery;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ZNFDoctounicoNUMEROREGISTRO: TIntegerField;
    ZNFDoctounicoCODIGOPRODUTO: TStringField;
    ZNFDoctounicoIDENTIFICADORNFE: TStringField;
    ZNFDoctounicoNUMERODANF: TIntegerField;
    ZNFDoctounicoSERIE: TStringField;
    ZNFDoctounicoDATAEMISSAONF: TDateField;
    ZNFDoctounicoQUANTIDADE: TFloatField;
    ZNFDoctounicoPESOVOLUME: TFloatField;
    ZNFDoctounicoVALORNFE: TFloatField;
    ZNFDoctounicoNUMERODOCONHECIMENTO: TIntegerField;
    ZNFDoctounicoDATAEMISSAO: TDateField;
    ZNFDoctounicoSERIECTRC: TStringField;
    ZNFDoctounicoCPFFRETEAPAGAR: TStringField;
    ZNFDoctounicoVALORTARIFA: TFloatField;
    ZNFDoctounicoVALORFRETETONELAGEM: TFloatField;
    ZNFDoctounicoVALOROUTROSVALORES: TFloatField;
    ZNFDoctounicoVALORTOTAL: TFloatField;
    ZNFDoctounicoDESCRICAO: TStringField;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel14: TQRLabel;
    ZNFDoctounicoRAZAOSOCIAL: TStringField;
    QRSysData1: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel10: TQRLabel;
    QRExpr4: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel13Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  FrmQRDetail004: TFrmQRDetail004;

implementation

uses DataModuleConexao;

{$R *.DFM}

procedure TFrmQRDetail004.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ZNFDoctounico.Active := true;
end;

procedure TFrmQRDetail004.QRLabel13Print(sender: TObject;
  var Value: String);
begin
  value := ZNFDoctounicoCPFFRETEAPAGAR.Value + ' / ' + ZNFDoctounicoRAZAOSOCIAL.Value; 
end;

end.
