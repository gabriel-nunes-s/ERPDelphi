inherited ViewClients: TViewClients
  Caption = 'ViewClients'
  ClientWidth = 769
  OnShow = FormShow
  ExplicitWidth = 769
  PixelsPerInch = 120
  TextHeight = 16
  inherited pnlFooter: TPanel
    Width = 769
    inherited btnNew: TSpeedButton
      Left = 343
    end
    inherited btnSave: TSpeedButton
      Left = 598
    end
    inherited btnCancel: TSpeedButton
      Left = 683
    end
    inherited btnEdit: TSpeedButton
      Left = 513
    end
    inherited btnDelete: TSpeedButton
      Left = 428
    end
  end
  inherited PageControl1: TPageControl
    Width = 769
    inherited tabSearch: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 751
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'ID'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO'
            Title.Caption = 'Raz'#227'o'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Caption = 'Fantasia'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Title.Caption = 'Phone'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJCPF'
            Title.Caption = 'CNPJ/CPF'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Title.Caption = 'Obs.'
            Width = 120
            Visible = True
          end>
      end
      inherited pnlSearchTop: TPanel
        Width = 761
      end
    end
  end
  inherited pnlTop: TPanel
    Width = 769
    Color = clGray
    ParentBackground = False
    inherited pnlTitle: TPanel
      Caption = 'Clients'
      Color = clGray
      Font.Color = clWhite
      ParentBackground = False
      ParentFont = False
    end
    object btnClose: TButton
      Left = 712
      Top = 1
      Width = 56
      Height = 33
      Align = alRight
      Caption = 'Close'
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  inherited DataSourceSearch: TDataSource
    DataSet = ServiceCadastro.FDQueryPessoas
  end
end
