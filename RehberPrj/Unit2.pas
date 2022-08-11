unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm3 = class(TForm)
    kadi: TEdit;
    sifre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    giris: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure girisClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm3.girisClick(Sender: TObject);
begin

     ADOQuery1.Close;
     ADOQuery1.SQL.Text:='select * from kullanici where kadii='#39+kadi.Text+#39' and sifree='+#39+sifre.Text+#39;
     ADOQuery1.Open;


       if ADOquery1.RecordCount=0 then
       begin
         ShowMessage('Yanlýþ Kullanýcý adý veya Þifre!!!')
       end;


       if ADOquery1.RecordCount>1 then
       begin
       Form4.Show;
       Form3.Visible:=False;
       end;


end;

end.
