object frmRelAbastecimento: TfrmRelAbastecimento
  Left = 0
  Top = 0
  Caption = 'frmRelAbastecimento'
  ClientHeight = 710
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlrepAbastecimento: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsRelAbastecimentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 0
        Top = 20
        Width = 718
        Height = 22
        Align = faBottom
        Alignment = taCenter
        Caption = 'Posto ABC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 72
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object lblPeriodo: TRLLabel
        Left = 3
        Top = 50
        Width = 56
        Height = 16
        Caption = 'Per'#237'odo: '
        Layout = tlCenter
      end
      object RLLabel2: TRLLabel
        Left = 234
        Top = 25
        Width = 250
        Height = 22
        Caption = 'Relat'#243'rio de Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 153
      Width = 718
      Height = 144
      DataFields = 'DATA_INC'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 70
        BandType = btHeader
        object RLLabel3: TRLLabel
          Left = 3
          Top = 16
          Width = 90
          Height = 16
          Caption = 'Lan'#231'amentos: '
        end
        object RLDBText1: TRLDBText
          Left = 99
          Top = 16
          Width = 66
          Height = 16
          DataField = 'DATA_INC'
          DataSource = dsRelAbastecimentos
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 3
          Top = 48
          Width = 46
          Height = 16
          Caption = 'Tanque'
        end
        object RLLabel5: TRLLabel
          Left = 67
          Top = 48
          Width = 45
          Height = 16
          Caption = 'Bomba'
        end
        object RLLabel6: TRLLabel
          Left = 307
          Top = 48
          Width = 32
          Height = 16
          Caption = 'Qtde'
        end
        object RLLabel7: TRLLabel
          Left = 371
          Top = 48
          Width = 65
          Height = 16
          Caption = 'Valor Unit.'
        end
        object RLLabel8: TRLLabel
          Left = 483
          Top = 48
          Width = 55
          Height = 16
          Caption = 'SubTotal'
        end
        object RLLabel9: TRLLabel
          Left = 571
          Top = 48
          Width = 35
          Height = 16
          Caption = 'Tarifa'
        end
        object RLLabel10: TRLLabel
          Left = 646
          Top = 48
          Width = 69
          Height = 16
          Caption = 'Valor Tarifa'
        end
        object RLDraw1: TRLDraw
          Left = 0
          Top = 64
          Width = 718
          Height = 6
          Align = faBottom
          DrawKind = dkLine
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 70
        Width = 718
        Height = 21
        object RLDBText3: TRLDBText
          Left = 67
          Top = 1
          Width = 45
          Height = 16
          AutoSize = False
          DataField = 'BOMBA_ID'
          DataSource = dsRelAbastecimentos
          DisplayMask = '00'
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 121
          Top = 1
          Width = 122
          Height = 16
          AutoSize = False
          DataField = 'TIPOBOMBA'
          DataSource = dsRelAbastecimentos
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 301
          Top = 1
          Width = 39
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTDE'
          DataSource = dsRelAbastecimentos
          DisplayMask = '#.###'
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 366
          Top = 1
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORUNIT'
          DataSource = dsRelAbastecimentos
          DisplayMask = '#.###'
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 467
          Top = 1
          Width = 71
          Height = 16
          Alignment = taRightJustify
          DataField = 'SUBTOTAL'
          DataSource = dsRelAbastecimentos
          DisplayMask = 'R$ #,##0.00'
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 568
          Top = 1
          Width = 42
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'PERCENTUALTARIFA'
          DataSource = dsRelAbastecimentos
          DisplayMask = '#0,00%'
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 624
          Top = 1
          Width = 91
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALORTARIFA'
          DataSource = dsRelAbastecimentos
          DisplayMask = 'R$ #,##0.00'
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 3
          Top = 1
          Width = 46
          Height = 16
          AutoSize = False
          DataField = 'TANQUE_ID'
          DataSource = dsRelAbastecimentos
          Text = ''
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 91
        Width = 718
        Height = 44
        BandType = btFooter
        object RLDBResult1: TRLDBResult
          Left = 423
          Top = 16
          Width = 115
          Height = 16
          Alignment = taRightJustify
          DataField = 'SUBTOTAL'
          DataSource = dsRelAbastecimentos
          DisplayMask = 'R$ #,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel11: TRLLabel
          Left = 296
          Top = 16
          Width = 85
          Height = 16
          Caption = 'Totalizadores:'
        end
        object RLDBResult2: TRLDBResult
          Left = 578
          Top = 16
          Width = 137
          Height = 16
          Alignment = taRightJustify
          DataField = 'VALORTARIFA'
          DataSource = dsRelAbastecimentos
          DisplayMask = 'R$ #,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw2: TRLDraw
          Left = 296
          Top = 8
          Width = 422
          Height = 6
          DrawKind = dkLine
        end
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 329
      Width = 718
      Height = 16
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = -1
        Width = 37
        Height = 16
        Info = itNow
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 628
        Top = -2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 297
      Width = 718
      Height = 32
      BandType = btSummary
      object RLDBResult3: TRLDBResult
        Left = 423
        Top = 13
        Width = 115
        Height = 16
        Alignment = taRightJustify
        DataField = 'SUBTOTAL'
        DataSource = dsRelAbastecimentos
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 304
        Top = 13
        Width = 102
        Height = 16
        Caption = 'Total do Per'#237'odo:'
      end
      object RLDBResult4: TRLDBResult
        Left = 581
        Top = 13
        Width = 137
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALORTARIFA'
        DataSource = dsRelAbastecimentos
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object qryRelAbastecimentos: TFDQuery
    Connection = dmConexao.fdconBomba
    SQL.Strings = (
      
        'select t.tanque_id, a.bomba_id, t.tipo_tanque as tipobomba, data' +
        '_inc, hora_inc, qtde,'
      '       a.valorunit, subtotal, percentualtarifa, valortarifa'
      'from abastecimentos a'
      'left join bombas b on a.bomba_id = b.bomba_id'
      'left join tanques t on b.tanque_id = t.tanque_id '
      'where data_inc between :dataini and :datafin')
    Left = 80
    Top = 424
    ParamData = <
      item
        Name = 'DATAINI'
        ParamType = ptInput
      end
      item
        Name = 'DATAFIN'
        ParamType = ptInput
      end>
  end
  object dsRelAbastecimentos: TDataSource
    DataSet = qryRelAbastecimentos
    Left = 72
    Top = 504
  end
end
