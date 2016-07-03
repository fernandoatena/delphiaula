object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 273
  Top = 124
  Height = 244
  Width = 416
  object ZConexao: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\Clientes\EXPRESSO\BANCODEDADOS.FDB'
    User = 'sysdba'
    Password = 'z6iu01lq'
    TransactIsolationLevel = tiReadCommitted
    Connected = True
    Left = 27
    Top = 34
  end
end
