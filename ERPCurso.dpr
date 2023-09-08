program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\view\View.principal.pas' {ViewPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  Service.conexao in 'src\service\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\service\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  View.base in 'src\view\View.base.pas' {ViewBase},
  View.base.lists in 'src\view\View.base.lists.pas' {ViewBaseLists},
  View.clients in 'src\view\View.clients.pas' {ViewClients};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseLists, ViewBaseLists);
  Application.CreateForm(TViewClients, ViewClients);
  Application.Run;
end.
