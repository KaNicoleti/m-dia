unit untMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCalcMedia = class(TForm)
    btnCalc: TButton;
    btnFechar: TButton;
    edtN1: TEdit;
    edtN2: TEdit;
    edtN3: TEdit;
    edtMedia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnLimpar: TButton;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    procedure btnFecharClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalcMedia: TfrmCalcMedia;

implementation

{$R *.dfm}

procedure TfrmCalcMedia.btnCalcClick(Sender: TObject);
var n1,n2,n3,res: real;
begin
    n1 := StrToFloat(edtN1.Text);
    n2 := StrToFloat(edtN2.Text);
    n3 := StrToFloat(edtN3.Text);
    res := (n1 + n2 + n3) / 3;
    edtMedia.Text := FormatFloat('#.0',res);
end;

procedure TfrmCalcMedia.btnFecharClick(Sender: TObject);
begin
  if Application.MessageBox('Desejar Fechar?','Confirme',
     MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
     close;
end;

procedure TfrmCalcMedia.btnLimparClick(Sender: TObject);
begin
     edtN1.Clear;
     edtN2.Clear;
     edtN3.Clear;
     edtMedia.Clear;
     edtN1.SetFocus;
end;

procedure TfrmCalcMedia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f2 then
      btnCalc.Click;
    if key = vk_f3 then
      btnLimpar.Click;
    if key = VK_ESCAPE then
      btnFechar.Click;
end;

procedure TfrmCalcMedia.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[0].Text := DateToStr(date);
     StatusBar1.Panels[1].Text := FormatDateTime('hh:mm',Time);
end;

end.
