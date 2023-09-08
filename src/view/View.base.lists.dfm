inherited ViewBaseLists: TViewBaseLists
  BorderStyle = bsNone
  Caption = 'ViewBaseLists'
  ClientHeight = 449
  ClientWidth = 790
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object pnlFooter: TPanel
    Left = 0
    Top = 414
    Width = 790
    Height = 35
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 788
    object btnNew: TSpeedButton
      Left = 364
      Top = 1
      Width = 85
      Height = 33
      Align = alRight
      GroupIndex = 1
      Caption = 'New'
      ExplicitLeft = 344
    end
    object btnSave: TSpeedButton
      Left = 619
      Top = 1
      Width = 85
      Height = 33
      Align = alRight
      Caption = 'Save'
      ExplicitLeft = 512
    end
    object btnCancel: TSpeedButton
      Left = 704
      Top = 1
      Width = 85
      Height = 33
      Align = alRight
      Caption = 'Cancel'
      ExplicitLeft = 414
    end
    object btnEdit: TSpeedButton
      Left = 534
      Top = 1
      Width = 85
      Height = 33
      Align = alRight
      Caption = 'Edit'
      ExplicitLeft = 443
    end
    object btnDelete: TSpeedButton
      Left = 449
      Top = 1
      Width = 85
      Height = 33
      Align = alRight
      Caption = 'Delete'
      ExplicitLeft = 427
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 790
    Height = 379
    ActivePage = tabSearch
    Align = alClient
    TabOrder = 1
    object tabSearch: TTabSheet
      Caption = 'Search'
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 46
        Width = 772
        Height = 297
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        DataSource = DataSourceSearch
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnlSearchTop: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 392
        ExplicitTop = 24
        ExplicitWidth = 185
        object SearchBox1: TSearchBox
          Left = 19
          Top = 8
          Width = 289
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Enter your search here'
        end
      end
    end
    object tabRegister: TTabSheet
      Caption = 'Register'
      ImageIndex = 1
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 35
    Align = alTop
    TabOrder = 2
    object pnlTitle: TPanel
      Left = 1
      Top = 1
      Width = 96
      Height = 33
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Title'
      TabOrder = 0
    end
  end
  object DataSourceSearch: TDataSource
    Left = 712
    Top = 64
  end
end
