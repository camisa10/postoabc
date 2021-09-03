inherited frmBombas: TfrmBombas
  Caption = 'Bombas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tbsDados
    inherited tbsListagem: TTabSheet
      inherited dbgListagem: TDBGrid
        DataSource = dsCadastro
        Columns = <
          item
            Expanded = False
            FieldName = 'BOMBA_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMBUSTIVEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORLITRO'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TANQUE_ID'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEATUAL'
            Visible = True
          end>
      end
    end
    inherited tbsDados: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 56
        Width = 68
        Height = 13
        Caption = 'C'#243'digo Bomba'
        FocusControl = dbedtCodigo
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 101
        Width = 96
        Height = 13
        Caption = 'Tipo de Combust'#237'vel'
      end
      object dbedtCodigo: TDBEdit
        Left = 24
        Top = 72
        Width = 134
        Height = 21
        DataField = 'BOMBA_ID'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 1
      end
      object dblkpcbxTipoCombustivel: TDBLookupComboBox
        Left = 24
        Top = 120
        Width = 489
        Height = 21
        DataField = 'TIPO_COMBUSTIVEL'
        DataSource = dsCadastro
        KeyField = 'TANQUE_ID'
        ListField = 'TANQUE_ID; TIPO_TANQUE; VALORUNIT; DESCRICAO'
        ListSource = dsTanques
        TabOrder = 2
      end
    end
  end
  inherited qryCadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from bombas')
    object qryCadastroTANQUE_ID: TIntegerField
      DisplayLabel = 'C'#243'digo Tanque'
      FieldName = 'TANQUE_ID'
      Origin = 'TANQUE_ID'
      Required = True
    end
    object qryCadastroBOMBA_ID: TIntegerField
      DisplayLabel = 'C'#243'digo Bomba'
      FieldName = 'BOMBA_ID'
      KeyFields = 'BOMBA_ID'
      Origin = 'BOMBA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object qryCadastroTIPO_COMBUSTIVEL: TStringField
      DisplayLabel = 'Tipo de Combust'#237'vel'
      FieldKind = fkLookup
      FieldName = 'TIPO_COMBUSTIVEL'
      LookupDataSet = qryTanques
      LookupKeyFields = 'TANQUE_ID'
      LookupResultField = 'TIPO_TANQUE'
      KeyFields = 'TANQUE_ID'
      Lookup = True
    end
    object qryCadastroESTOQUEATUAL: TFloatField
      DisplayLabel = 'Estoque Atual do Tanque'
      FieldKind = fkLookup
      FieldName = 'ESTOQUEATUAL'
      LookupDataSet = qryTanques
      LookupKeyFields = 'TANQUE_ID'
      LookupResultField = 'ESTOQUEATUAL'
      KeyFields = 'TANQUE_ID'
      DisplayFormat = '#,###'
      Lookup = True
    end
    object qryCadastroVALORLITRO: TCurrencyField
      DisplayLabel = 'Valor do Litro'
      FieldKind = fkLookup
      FieldName = 'VALORLITRO'
      LookupDataSet = qryTanques
      LookupKeyFields = 'TANQUE_ID'
      LookupResultField = 'VALORUNIT'
      KeyFields = 'TANQUE_ID'
      DisplayFormat = 'R$ #,##0.000'
      Lookup = True
    end
  end
  object qryTanques: TFDQuery
    Connection = dmConexao.fdconBomba
    SQL.Strings = (
      'select *'
      'from tanques')
    Left = 160
    Top = 240
    object qryTanquesTANQUE_ID: TIntegerField
      DisplayWidth = 5
      FieldName = 'TANQUE_ID'
      Origin = 'TANQUE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanquesTIPO_TANQUE: TStringField
      FieldName = 'TIPO_TANQUE'
      Origin = 'TIPO_TANQUE'
      Required = True
    end
    object qryTanquesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object qryTanquesCAPACIDADE: TSingleField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
    end
    object qryTanquesESTOQUEATUAL: TSingleField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'ESTOQUEATUAL'
      Required = True
    end
    object qryTanquesVALORUNIT: TBCDField
      DisplayWidth = 10
      FieldName = 'VALORUNIT'
      Origin = 'VALORUNIT'
      Required = True
      Precision = 18
      Size = 3
    end
  end
  object dsTanques: TDataSource
    AutoEdit = False
    DataSet = qryTanques
    Left = 256
    Top = 304
  end
end
