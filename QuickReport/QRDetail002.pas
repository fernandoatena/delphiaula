unit QRDetail002;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ZAbstractRODataset,
  ZDataset;

type
  TFrmQRDetail002 = class(TQuickRep)
    ZNFDoctounico: TZReadOnlyQuery;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRGroup1: TQRGroup;
    ChildBand1: TQRChildBand;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
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
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  FrmQRDetail002: TFrmQRDetail002;

implementation

uses DataModuleConexao;

{$R *.DFM}

procedure TFrmQRDetail002.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ZNFDoctounico.Active := true;
end;

end.
