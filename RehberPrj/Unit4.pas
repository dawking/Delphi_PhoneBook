unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    Rehber1: TMenuItem;
    nokayit: TPanel;
    kaydet: TButton;
    temizle: TButton;
    ksoyisim: TEdit;
    knum: TEdit;
    knot: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    kisim: TEdit;
    Kiikayd1: TMenuItem;
    kayýtq: TADOQuery;
    Memo1: TMemo;
    Panel1: TPanel;
    sorgulama: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    NumaraAra1: TMenuItem;
    DBGrid1: TDBGrid;
    sorguq: TADOQuery;
    dts1: TDataSource;
    adtext: TEdit;
    soyadtext: TEdit;
    numaratext: TEdit;
    kntext: TEdit;
    dbguncelle: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    updateid: TEdit;
    Button1: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Kiikayd1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kaydetClick(Sender: TObject);
    procedure temizleClick(Sender: TObject);
   procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NumaraAra1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure dbguncelleClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

   
  private
    { Private declarations }
  public
    var updateidint : Integer;
  end;

var
  Form4: TForm4;

implementation
uses Unit2;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin


DBGrid1.DataSource.DataSet.Delete;
 sorguq.Close;
adtext.Text:='';
  soyadtext.Text:='';
  numaratext.Text:='';
  kntext.Text:='';
  Edit2.Clear;
  Edit1.Clear;
  ShowMessage('Kiþi Baþarý Ýle Silinmiþtir!!!');
  sorguq.Open;



end;


procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
  

  adtext.Text := DBGrid1.DataSource.DataSet.FieldByName('isim').AsString;
  soyadtext.Text := DBGrid1.DataSource.DataSet.FieldByName('soyisim').AsString;
  numaratext.Text := DBGrid1.DataSource.DataSet.FieldByName('numara').AsString;
  kntext.Text := DBGrid1.DataSource.DataSet.FieldByName('kisiselnot').AsString;
  updateid.Text:= DBGrid1.DataSource.DataSet.FieldByName('id').AsString;
  updateidint:= StrToInt(updateid.Text);
  

end;


procedure TForm4.dbguncelleClick(Sender: TObject);
begin

if updateid.Text<>'' then

   begin


  sorguq.Close;
  updateidint:= StrToInt(updateid.Text);
  sorguq.SQL.Text:=Memo1.Text;
  sorguq.ParamCheck := true;
  sorguq.SQL.Text:='Update kisi Set isim="'+adtext.Text+'" Where id='+updateidint.ToString+'';
  sorguq.ExecSQL;

  sorguq.SQL.Text:='Update kisi Set soyisim="'+soyadtext.Text+'" Where id='+updateidint.ToString+'';
  sorguq.ExecSQL;

  sorguq.SQL.Text:='Update kisi Set numara="'+numaratext.Text+'" Where id='+updateidint.ToString+'';
  sorguq.ExecSQL;

  sorguq.SQL.Text:='Update kisi Set kisiselnot="'+kntext.Text+'" Where id='+updateidint.ToString+'';
  sorguq.ExecSQL;





  adtext.Text:='';
  soyadtext.Text:='';
  numaratext.Text:='';
  kntext.Text:='';
  Edit2.Clear;
  Edit1.Clear;



      ShowMessage('Kayýt Baþarý Ýle Güncellenmiþtir.');

      sorguq.close;
      sorguq.SQL.text:='select * from kisi';
      sorguq.Open;

  //nokayit.Visible:=True;
    end
    else
    begin
     ShowMessage('Kayýtlý bir Kiþi Seçmediniz!!!');
     sorguq.Close;

      sorguq.Open;
    end;
  


      sorguq.Open;
end;

procedure TForm4.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

sorguq.Close;
sorguq.SQL.Text:='select * from kisi where isim like '+#39+#37+Edit1.text+#37+#39;
sorguq.Open;



end;

procedure TForm4.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin


sorguq.Close;
sorguq.SQL.Text:='select * from kisi where soyisim like '+#39+#37+Edit2.text+#37+#39;
sorguq.Open;

end;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   Form3.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
 nokayit.Visible:=True;
 sorgulama.Visible:=False;
end;

procedure TForm4.kaydetClick(Sender: TObject);
begin


if kisim.Text='' then
begin
ShowMessage('Güncellemek için bir kiþi seçiniz!!!');
end
else
begin
kayýtq.SQL.Text:=Memo1.Text;
kayýtq.Close;
kayýtq.ParamCheck := true;
kayýtq.Parameters.ParamByName('isim').Value:=kisim.Text;
kayýtq.Parameters.ParamByName('soyisim').Value:=ksoyisim.Text;
kayýtq.Parameters.ParamByName('numara').Value:=knum.Text;
kayýtq.Parameters.ParamByName('kisiselnot').Value:=knot.Text;
kayýtq.ExecSQL;
temizle.Click;
ShowMessage('Kayýt Baþarý Ýle Alýnmýþtýr.');
end;




end;

procedure TForm4.Kiikayd1Click(Sender: TObject);
begin
nokayit.Visible:=True;
sorgulama.Visible:=False;
end;



procedure TForm4.NumaraAra1Click(Sender: TObject);
begin
sorgulama.Visible:=True;
nokayit.Visible:=False;
DBGrid1.Columns[1].Title.Caption := 'Ýsim';
DBGrid1.Columns[2].Title.Caption := 'Soy Ýsim';
DBGrid1.Columns[3].Title.Caption := 'Numara';
DBGrid1.Columns[4].Title.Caption := 'Kiþisel Not';
sorguq.Close;
sorguq.Open;



end;



procedure TForm4.temizleClick(Sender: TObject);
begin
kisim.Text:='';
ksoyisim.Text:='';
knum.Text:='';
knot.Text:='';
end;


end.
