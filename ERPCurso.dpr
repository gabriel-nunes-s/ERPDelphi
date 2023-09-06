program ERPCurso;

uses
  Vcl.Forms,
  View.principal in 'src\view\View.principal.pas' {ViewPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  Service.conexao in 'src\service\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\service\Service.cadastro.pas' {ServiceCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
