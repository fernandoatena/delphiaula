unit DataModuleConexao;

interface

uses
  SysUtils, Classes, ZConnection;

type
  TDMConexao = class(TDataModule)
    ZConnection: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMConexao: TDMConexao;

implementation

{$R *.dfm}

procedure TDMConexao.DataModuleCreate(Sender: TObject);
var
  Path, PathDBA, PasswordDBA: string;
begin
    try
    Linha := ExtractFileDir(Application.ExeName);
    if FileExists(ExtractFileDir(Application.ExeName) + '\configemail.ini') = false then
    begin
      ShowMessage ('(ConfigEmail.INI) n�o encontrado !!');
      Application.Terminate; Abort;
    end;
    Assignfile(FileInput,ExtractFileDir(Application.ExeName) + '\configemail.ini');
    Reset(FileInput);
    while not eof(FileInput) do
    begin
      Readln(FileInput, Linha);
      if pos('[DBA]', Linha) > 0 then
      begin
         if not eof(FileInput) then
           Readln(FileInput, Linha);
        if pos('PATHDBA=', UpperCase(Linha)) > 0 then
          EnderecodoBanco := trim(copy(Linha,14,100));
      end;
      if pos('[PASSWORDDBA]', UpperCase(Linha)) > 0 then
      begin
        if not eof(FileInput) then
          Readln(FileInput, Linha);
        if pos('PASSWORDDBA=', UpperCase(Linha)) > 0 then
          SenhadoBanco := trim(copy(Linha,10,100));
      end;
      if pos('[VERSION]', UpperCase(Linha)) > 0 then
      begin
        if not eof(FileInput) then
          Readln(FileInput, Linha);
        if pos('VERSION=', UpperCase(Linha)) > 0 then
          VersaodoBanco := trim(copy(Linha,8,100));
      end;
    end;
    CloseFile(FileInput);
  except;
    CloseFile(FileInput);
  end;
end;

end.