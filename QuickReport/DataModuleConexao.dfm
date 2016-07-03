object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 256
  Top = 124
  Height = 244
  Width = 416
  object ZConnection: TZConnection
    TransactIsolationLevel = tiReadCommitted
    Left = 27
    Top = 34
  end
end
