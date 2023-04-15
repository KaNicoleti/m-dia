program prjMedia;

uses
  Vcl.Forms,
  untMedia in 'untMedia.pas' {frmCalcMedia},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmCalcMedia, frmCalcMedia);
  Application.Run;
end.
