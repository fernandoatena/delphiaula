unit QRDetail003;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ZAbstractRODataset,
  ZDataset;

type
  TFrmQRDetail003 = class(TQuickRep)
    ZNFDoctounico: TZReadOnlyQuery;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRGroup1: TQRGroup;
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
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    ZNFDoctounicoDATAEMISSAOCTE: TDateField;
    QRE_SUMSUBTOTALVALORNFE: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRE_SUMTOTALVALORNFE: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel13: TQRLabel;
    QRGroup3: TQRGroup;
    QRDBText10: TQRDBText;
    QRLabel14: TQRLabel;
    ZNFDoctounicoRAZAOSOCIAL: TStringField;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  FrmQRDetail003: TFrmQRDetail003;

implementation

uses DataModuleConexao;

{$R *.DFM}

procedure TFrmQRDetail003.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ZNFDoctounico.Active := true;
end;

end.
