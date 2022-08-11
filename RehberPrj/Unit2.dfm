object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  BorderWidth = 10
  Caption = 'Kullan'#305'c'#305' Giri'#351'i'
  ClientHeight = 386
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 115
  TextHeight = 16
  object Label1: TLabel
    Left = 160
    Top = 83
    Width = 73
    Height = 16
    Caption = 'Kullan'#305'c'#305' Ad'#305':'
  end
  object Label2: TLabel
    Left = 160
    Top = 131
    Width = 32
    Height = 16
    Caption = #350'ifre:'
  end
  object kadi: TEdit
    Left = 240
    Top = 80
    Width = 209
    Height = 24
    TabOrder = 0
    TextHint = 'Kullan'#305'c'#305' ad'#305
  end
  object sifre: TEdit
    Left = 240
    Top = 128
    Width = 209
    Height = 24
    PasswordChar = 'x'
    TabOrder = 1
    TextHint = #350'ifre'
  end
  object giris: TBitBtn
    Left = 240
    Top = 200
    Width = 209
    Height = 33
    Caption = 'G'#304'R'#304#350
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = girisClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\Db' +
      '\rehber.mdb;Mode=Share Deny None;Persist Security Info=False;Jet' +
      ' OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:D' +
      'atabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database L' +
      'ocking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glob' +
      'al Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OL' +
      'EDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fals' +
      'e;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact' +
      ' Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 152
    Top = 232
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select * from kullanici')
    Left = 312
    Top = 280
  end
end
