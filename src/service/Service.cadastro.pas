unit Service.cadastro;

interface

uses
  System.SysUtils, System.Classes, Service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    FDQueryPessoas: TFDQuery;
    FDQueryPessoasCODIGO: TIntegerField;
    FDQueryPessoasRAZAO: TStringField;
    FDQueryPessoasFANTASIA: TStringField;
    FDQueryPessoasTELEFONE: TStringField;
    FDQueryPessoasCNPJCPF: TStringField;
    FDQueryPessoasRG: TStringField;
    FDQueryPessoasOBSERVACAO: TStringField;
    FDQueryPessoasTIPO: TIntegerField;
    FDQueryEnderecos: TFDQuery;
    FDQueryEnderecosCODIGO: TIntegerField;
    FDQueryEnderecosPESSOA: TIntegerField;
    FDQueryEnderecosCEP: TStringField;
    FDQueryEnderecosENDERECO: TStringField;
    FDQueryEnderecosNUMERO: TStringField;
    FDQueryEnderecosBAIRRO: TStringField;
    FDQueryEnderecosCIDADE: TStringField;
    FDQueryEnderecosESTADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
