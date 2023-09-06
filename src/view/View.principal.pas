unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TViewPrincipal = class(TForm)
    pnlTop: TPanel;
    pnlMenu: TPanel;
    pnlContent: TPanel;
    pnlVersion: TPanel;
    pnlUserData: TPanel;
    lblAccount: TLabel;
    lblUsername: TLabel;
    btnClients: TSpeedButton;
    btnProducts: TSpeedButton;
    btnSuppliers: TSpeedButton;
    btnFinance: TSpeedButton;
    lblFilial: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

end.
