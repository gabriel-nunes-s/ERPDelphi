unit Service.conexao;

interface

uses
  System.SysUtils, System.Classes, System.IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TServiceConexao = class(TDataModule)
    FDConnection: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    FDQueryFilial: TFDQuery;
    FDQueryFilialCODIGO: TIntegerField;
    FDQueryFilialRAZAO: TStringField;
    FDQueryFilialFANTASIA: TStringField;
    FDQueryFilialCNPJ: TStringField;
    FDQueryFilialTELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile : TIniFile;
  LDatabase : String;
  LUsername : String;
  LPassword : String;
  LServer : String;
  LPort : Integer;
  LDirectory: String;

begin
  try
    FDConnection.Connected := False;

    LDirectory := ExtractFileDir(ParamStr(0)) + '\Login.ini';
    LIniFile := TIniFile.Create(LDirectory);

    LDatabase := LIniFile.ReadString('Connection', 'Database', LDatabase);
    LServer := LIniFile.ReadString('Connection', 'Server', LServer);
    LPort := LIniFile.ReadInteger('Connection', 'Port', LPort);

    LUsername := 'SYSDBA';
    LPassword := 'masterkey';

    FDConnection.Params.Values['Database'] := LDatabase;
    FDConnection.Params.Values['User_name'] := LUsername;
    FDConnection.Params.Values['Password'] := LPassword;
    FDConnection.Params.Values['Server'] := LServer;
    FDConnection.Params.Values['Port'] := LPort.ToString;

    FDConnection.Connected := True;

  finally
    FreeAndNil(LIniFile);
  end;

  FDQueryFilial.Close;
  FDQueryFilial.Params[0].AsInteger := 1;
  FDQueryFilial.Open();

end;

end.
