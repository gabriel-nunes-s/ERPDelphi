object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 282
  Width = 345
  object FDConnection: TFDConnection
    Params.Strings = (
      'Server=127.0.0.1'
      'Port=3050'
      'CharacterSet=win1252'
      'ConnectionDef=ERPCurso')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 64
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 144
    Top = 112
  end
  object FDQueryFilial: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from FILIAL where CODIGO = :CODIGO')
    Left = 208
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryFilialCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFilialRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object FDQueryFilialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object FDQueryFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object FDQueryFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
  end
end
