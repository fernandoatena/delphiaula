unit QRDetail001;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ZAbstractRODataset,
  ZDataset;

type
  TFrmQRDetail001 = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    ZNFdoctounico: TZReadOnlyQuery;
    QRGroup1: TQRGroup;
    ZNFdoctounicoNUMEROREGISTRO: TIntegerField;
    ZNFdoctounicoCODIGOPRODUTO: TStringField;
    ZNFdoctounicoIDENTIFICADORNFE: TStringField;
    ZNFdoctounicoNUMERODANF: TIntegerField;
    ZNFdoctounicoSERIE: TStringField;
    ZNFdoctounicoDATAEMISSAONF: TDateField;
    ZNFdoctounicoQUANTIDADE: TFloatField;
    ZNFdoctounicoPESOVOLUME: TFloatField;
    ZNFdoctounicoNUMERODOCONHECIMENTO: TIntegerField;
    ZNFdoctounicoDATAEMISSAO: TDateField;
    ZNFdoctounicoSERIECTRC: TStringField;
    ZNFdoctounicoCPFFRETEAPAGAR: TStringField;
    ZNFdoctounicoDESCRICAO: TStringField;
    ZNFdoctounicoRAZAOSOCIAL: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  FrmQRDetail001: TFrmQRDetail001;

implementation

uses DataModuleConexao;

{$R *.DFM}

procedure TFrmQRDetail001.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ZNFdoctounico.Active := true;
end;

end.
