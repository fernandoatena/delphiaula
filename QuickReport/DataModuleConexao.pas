unit DataModuleConexao;

interface

uses
  SysUtils, Classes, ZConnection, StrUtils, Windows,
  Forms, Messages, Dialogs;


type
  TDMConexao = class(TDataModule)
    ZConexao: TZConnection;
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
  Linha, pathDBA, userDBA, passwordDBA, versionDBA: string;
  FileInput: TextFile;
begin
  try
    userDBA := 'SYSDBA';
    Linha := ExtractFileDir(Application.ExeName);
    if FileExists(ExtractFileDir(Application.ExeName) + '\configemail.ini') = false then
    begin
      ShowMessage ('(ConfigEmail.INI) não encontrado !!');
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
          pathDBA := trim(copy(Linha,9,100));
      end;
      if pos('[PASSWORDDBA]', UpperCase(Linha)) > 0 then
      begin
        if not eof(FileInput) then
          Readln(FileInput, Linha);
        if pos('PASSWORDDBA=', UpperCase(Linha)) > 0 then
          passwordDBA := trim(copy(Linha,13,100));
      end;
      if pos('[VERSION]', UpperCase(Linha)) > 0 then
      begin
        if not eof(FileInput) then
          Readln(FileInput, Linha);
        if pos('VERSION=', UpperCase(Linha)) > 0 then
          versionDBA := trim(copy(Linha,9,100));
      end;
    end;
    CloseFile(FileInput);
  except;
    CloseFile(FileInput);
  end;
  ZConexao.Disconnect;
  ZConexao.HostName := '';
  ZConexao.Database := pathDBA;
  ZConexao.User := userDBA;
  ZConexao.Password := passwordDBA;
  ZConexao.Connected := true;
end;

end.
