unit View.clients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.lists, Data.DB, Vcl.StdCtrls,
  Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Service.cadastro, FireDAC.Stan.Param;

type
  TViewClients = class(TViewBaseLists)
    btnClose: TButton;
  procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    procedure Configuracoes;
  public
    procedure getPerson(iType: Integer);
  end;

var
  ViewClients: TViewClients;

implementation

{$R *.dfm}

procedure TViewClients.getPerson(iType: Integer);
begin
  ServiceCadastro.FDQueryPessoas.Close;
  ServiceCadastro.FDQueryPessoas.SQL.Clear;
  ServiceCadastro.FDQueryPessoas.SQL.Add('select * from PESSOAS where TIPO = :TIPO');
  ServiceCadastro.FDQueryPessoas.Params[0].AsInteger := iType;
  ServiceCadastro.FDQueryPessoas.Open();

end;

procedure TViewClients.btnCloseClick(Sender: TObject);
begin
  inherited;
  Close;

end;

procedure TViewClients.Configuracoes;
begin
  PageControl1.ActivePage := tabSearch;
end;

procedure TViewClients.FormShow(Sender: TObject);
begin
  inherited;
  Configuracoes;
  getPerson(1);
end;

end.
