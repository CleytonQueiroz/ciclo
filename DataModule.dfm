object dm: Tdm
  OldCreateOrder = False
  Height = 492
  Width = 533
  object qry_geral: TFDQuery
    Connection = FDConnection1
    Left = 256
    Top = 48
  end
  object Qry_Vendedor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from vendedor')
    Left = 360
    Top = 48
    object Qry_Vendedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Qry_Vendedorstatus: TWideMemoField
      FieldName = 'status'
      Origin = 'status'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorresource: TWideMemoField
      FieldName = 'resource'
      Origin = 'resource'
      BlobType = ftWideMemo
    end
    object Qry_Vendedortype: TWideMemoField
      FieldName = 'type'
      Origin = 'type'
      BlobType = ftWideMemo
    end
    object Qry_Vendedoraccount_balance: TLargeintField
      FieldName = 'account_balance'
      Origin = 'account_balance'
    end
    object Qry_Vendedorcurrent_balance: TLargeintField
      FieldName = 'current_balance'
      Origin = 'current_balance'
    end
    object Qry_Vendedorvendedor_responsavel_id: TIntegerField
      FieldName = 'vendedor_responsavel_id'
      Origin = 'vendedor_responsavel_id'
    end
    object Qry_Vendedorfirst_name: TWideMemoField
      FieldName = 'first_name'
      Origin = 'first_name'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorlast_name: TWideMemoField
      FieldName = 'last_name'
      Origin = 'last_name'
      BlobType = ftWideMemo
    end
    object Qry_Vendedoremail: TWideMemoField
      FieldName = 'email'
      Origin = 'email'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorphone_number: TWideMemoField
      FieldName = 'phone_number'
      Origin = 'phone_number'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorcpf: TWideMemoField
      FieldName = 'cpf'
      Origin = 'cpf'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorbirthdate: TWideMemoField
      FieldName = 'birthdate'
      Origin = 'birthdate'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorstatement_descriptor: TWideMemoField
      FieldName = 'statement_descriptor'
      Origin = 'statement_descriptor'
      BlobType = ftWideMemo
    end
    object Qry_Vendedordescription: TWideMemoField
      FieldName = 'description'
      Origin = 'description'
      BlobType = ftWideMemo
    end
    object Qry_Vendedoraddress: TIntegerField
      FieldName = 'address'
      Origin = 'address'
    end
    object Qry_Vendedordelinquent: TWideMemoField
      FieldName = 'delinquent'
      Origin = 'delinquent'
      BlobType = ftWideMemo
    end
    object Qry_Vendedordefault_debit: TWideMemoField
      FieldName = 'default_debit'
      Origin = 'default_debit'
      BlobType = ftWideMemo
    end
    object Qry_Vendedordefault_credit: TWideMemoField
      FieldName = 'default_credit'
      Origin = 'default_credit'
      BlobType = ftWideMemo
    end
    object Qry_Vendedormcc: TWideMemoField
      FieldName = 'mcc'
      Origin = 'mcc'
      BlobType = ftWideMemo
    end
    object Qry_Vendedormetadata: TWideMemoField
      FieldName = 'metadata'
      Origin = 'metadata'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorcreated_at: TWideMemoField
      FieldName = 'created_at'
      Origin = 'created_at'
      BlobType = ftWideMemo
    end
    object Qry_Vendedorupdated_at: TWideMemoField
      FieldName = 'updated_at'
      Origin = 'updated_at'
      BlobType = ftWideMemo
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Cleyton\Documents\Embarcadero\Studio\Projects\' +
        'AppCiclo\DB\DbCiclo.db'
      'OpenMode=ReadWrite'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 152
    Top = 160
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 112
    Top = 32
  end
end
