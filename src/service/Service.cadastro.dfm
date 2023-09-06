object ServiceCadastro: TServiceCadastro
  OldCreateOrder = False
  Height = 333
  Width = 402
  object FDQueryPessoas: TFDQuery
    Connection = ServiceConexao.FDConnection
    SQL.Strings = (
      'select * from PESSOAS where CODIGO = :CODIGO')
    Left = 40
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryPessoasRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object FDQueryPessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object FDQueryPessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object FDQueryPessoasCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      Size = 50
    end
    object FDQueryPessoasRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object FDQueryPessoasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object FDQueryPessoasTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
  end
  object FDQueryEnderecos: TFDQuery
    Connection = ServiceConexao.FDConnection
    SQL.Strings = (
      'select * from ENDERECO where CODIGO = :CODIGO')
    Left = 48
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryEnderecosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEnderecosPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
    end
    object FDQueryEnderecosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
    end
    object FDQueryEnderecosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object FDQueryEnderecosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 10
    end
    object FDQueryEnderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object FDQueryEnderecosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object FDQueryEnderecosESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 2
    end
  end
end
