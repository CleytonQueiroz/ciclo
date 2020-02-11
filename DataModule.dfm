object DM1: TDM1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 390
  Width = 576
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 184
    Top = 80
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Cleyton\Documents\Embarcadero\Studio\Projects\' +
        'AppCiclo\DB\DbCiclo.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 88
    Top = 176
  end
  object Qry_geral: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 176
  end
  object Vendedor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from vendedor')
    Left = 352
    Top = 176
    object Vendedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Vendedorstatus: TWideMemoField
      FieldName = 'status'
      Origin = 'status'
      BlobType = ftWideMemo
    end
    object Vendedorresource: TWideMemoField
      FieldName = 'resource'
      Origin = 'resource'
      BlobType = ftWideMemo
    end
    object Vendedortype: TWideMemoField
      FieldName = 'type'
      Origin = 'type'
      BlobType = ftWideMemo
    end
    object Vendedoraccount_balance: TLargeintField
      FieldName = 'account_balance'
      Origin = 'account_balance'
    end
    object Vendedorcurrent_balance: TLargeintField
      FieldName = 'current_balance'
      Origin = 'current_balance'
    end
    object Vendedorvendedor_responsavel_id: TIntegerField
      FieldName = 'vendedor_responsavel_id'
      Origin = 'vendedor_responsavel_id'
    end
    object Vendedorfirst_name: TWideMemoField
      FieldName = 'first_name'
      Origin = 'first_name'
      BlobType = ftWideMemo
    end
    object Vendedorlast_name: TWideMemoField
      FieldName = 'last_name'
      Origin = 'last_name'
      BlobType = ftWideMemo
    end
    object Vendedoremail: TWideMemoField
      FieldName = 'email'
      Origin = 'email'
      BlobType = ftWideMemo
    end
    object Vendedorphone_number: TWideMemoField
      FieldName = 'phone_number'
      Origin = 'phone_number'
      BlobType = ftWideMemo
    end
    object Vendedorcpf: TWideMemoField
      FieldName = 'cpf'
      Origin = 'cpf'
      BlobType = ftWideMemo
    end
    object Vendedorbirthdate: TWideMemoField
      FieldName = 'birthdate'
      Origin = 'birthdate'
      BlobType = ftWideMemo
    end
    object Vendedorstatement_descriptor: TWideMemoField
      FieldName = 'statement_descriptor'
      Origin = 'statement_descriptor'
      BlobType = ftWideMemo
    end
    object Vendedordescription: TWideMemoField
      FieldName = 'description'
      Origin = 'description'
      BlobType = ftWideMemo
    end
    object Vendedoraddress: TIntegerField
      FieldName = 'address'
      Origin = 'address'
    end
    object Vendedordelinquent: TWideMemoField
      FieldName = 'delinquent'
      Origin = 'delinquent'
      BlobType = ftWideMemo
    end
    object Vendedordefault_debit: TWideMemoField
      FieldName = 'default_debit'
      Origin = 'default_debit'
      BlobType = ftWideMemo
    end
    object Vendedordefault_credit: TWideMemoField
      FieldName = 'default_credit'
      Origin = 'default_credit'
      BlobType = ftWideMemo
    end
    object Vendedormcc: TWideMemoField
      FieldName = 'mcc'
      Origin = 'mcc'
      BlobType = ftWideMemo
    end
    object Vendedormetadata: TWideMemoField
      FieldName = 'metadata'
      Origin = 'metadata'
      BlobType = ftWideMemo
    end
    object Vendedorcreated_at: TWideMemoField
      FieldName = 'created_at'
      Origin = 'created_at'
      BlobType = ftWideMemo
    end
    object Vendedorupdated_at: TWideMemoField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      BlobType = ftWideMemo
    end
  end
end
