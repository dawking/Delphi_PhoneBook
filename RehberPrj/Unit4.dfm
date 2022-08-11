object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Telefon Rehberi'
  ClientHeight = 570
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 115
  TextHeight = 16
  object nokayit: TPanel
    Left = 0
    Top = 0
    Width = 1092
    Height = 257
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 43
      Width = 29
      Height = 16
      Caption = #304'sim:'
    end
    object Label2: TLabel
      Left = 40
      Top = 83
      Width = 49
      Height = 16
      Caption = 'Soyisim:'
    end
    object Label3: TLabel
      Left = 40
      Top = 131
      Width = 45
      Height = 16
      Caption = 'Numara'
    end
    object Label4: TLabel
      Left = 40
      Top = 171
      Width = 63
      Height = 16
      Caption = 'Ki'#351'isel Not:'
    end
    object kaydet: TButton
      Left = 160
      Top = 213
      Width = 89
      Height = 38
      Caption = 'Kaydet'
      TabOrder = 0
      OnClick = kaydetClick
    end
    object temizle: TButton
      Left = 40
      Top = 213
      Width = 89
      Height = 38
      Caption = 'Temizle'
      TabOrder = 1
      OnClick = temizleClick
    end
    object ksoyisim: TEdit
      Left = 128
      Top = 80
      Width = 161
      Height = 24
      MaxLength = 20
      TabOrder = 2
      TextHint = 'Soyisim'
    end
    object knum: TEdit
      Left = 128
      Top = 128
      Width = 161
      Height = 24
      MaxLength = 12
      NumbersOnly = True
      TabOrder = 3
      TextHint = 'Numara'
    end
    object knot: TEdit
      Left = 128
      Top = 168
      Width = 161
      Height = 24
      MaxLength = 60
      TabOrder = 4
      TextHint = 'Ki'#351'isel Not'
    end
    object kisim: TEdit
      Left = 128
      Top = 40
      Width = 161
      Height = 24
      MaxLength = 30
      TabOrder = 5
      TextHint = #304'sim'
    end
    object Memo1: TMemo
      Left = 88
      Top = 257
      Width = 825
      Height = 84
      Lines.Strings = (
        
          'insert into kisi (isim,soyisim,numara,kisiselnot) values(:isim, ' +
          ':soyisim, :numara, :kisiselnot)')
      TabOrder = 6
      Visible = False
    end
    object Panel1: TPanel
      Left = 248
      Top = 280
      Width = 185
      Height = 41
      Caption = 'Panel1'
      TabOrder = 7
    end
  end
  object sorgulama: TPanel
    Left = 0
    Top = 257
    Width = 1092
    Height = 267
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label5: TLabel
      Left = 40
      Top = 0
      Width = 29
      Height = 16
      Caption = #304'sim:'
    end
    object Label6: TLabel
      Left = 296
      Top = 0
      Width = 49
      Height = 16
      Caption = 'Soyisim:'
    end
    object Label7: TLabel
      Left = 533
      Top = 69
      Width = 29
      Height = 16
      Caption = #304'sim:'
    end
    object Label8: TLabel
      Left = 513
      Top = 107
      Width = 49
      Height = 16
      Caption = 'Soyisim:'
    end
    object Label9: TLabel
      Left = 513
      Top = 150
      Width = 45
      Height = 16
      Caption = 'Numara'
    end
    object Label10: TLabel
      Left = 499
      Top = 190
      Width = 63
      Height = 16
      Caption = 'Ki'#351'isel Not:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 0
      Width = 121
      Height = 24
      TabOrder = 0
      TextHint = #304'sme g'#246're ara...'
      OnKeyUp = Edit1KeyUp
    end
    object Edit2: TEdit
      Left = 368
      Top = 0
      Width = 121
      Height = 24
      TabOrder = 1
      TextHint = 'Soyisme g'#246're ara...'
      OnKeyUp = Edit2KeyUp
    end
    object DBGrid1: TDBGrid
      Left = 18
      Top = 30
      Width = 475
      Height = 232
      Align = alCustom
      DataSource = dts1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'isim'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'soyisim'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numara'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kisiselnot'
          Width = 175
          Visible = True
        end>
    end
    object adtext: TEdit
      Left = 568
      Top = 66
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object soyadtext: TEdit
      Left = 568
      Top = 104
      Width = 121
      Height = 24
      TabOrder = 4
    end
    object numaratext: TEdit
      Left = 568
      Top = 147
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object kntext: TEdit
      Left = 568
      Top = 187
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object dbguncelle: TButton
      Left = 727
      Top = 69
      Width = 106
      Height = 59
      Caption = 'Ki'#351'iyi G'#252'ncelle'
      TabOrder = 7
      OnClick = dbguncelleClick
    end
    object updateid: TEdit
      Left = 568
      Top = 25
      Width = 121
      Height = 24
      NumbersOnly = True
      TabOrder = 8
      Visible = False
    end
    object Button1: TButton
      Left = 727
      Top = 157
      Width = 106
      Height = 56
      Caption = 'Ki'#351'iyi Sil'
      TabOrder = 9
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 368
    Top = 64
    object Rehber1: TMenuItem
      Caption = 'Rehber'
      object Kiikayd1: TMenuItem
        Caption = 'Ki'#351'i kayd'#305
        OnClick = Kiikayd1Click
      end
      object NumaraAra1: TMenuItem
        Caption = 'Numara Ara'
        OnClick = NumaraAra1Click
      end
    end
  end
  object kayıtq: TADOQuery
    Connection = Form3.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from kisi')
    Left = 320
    Top = 56
  end
  object sorguq: TADOQuery
    Active = True
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kisi')
    Left = 480
    Top = 81
  end
  object dts1: TDataSource
    DataSet = sorguq
    Left = 440
    Top = 121
  end
end
