unit Real001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses QRDetail001, DataModuleConexao;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FrmQRDetail001 := TFrmQRDetail001.Create(self);
  FrmQRDetail001.Preview;
end;

end.
