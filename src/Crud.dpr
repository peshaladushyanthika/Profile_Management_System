program Crud;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {MainF},
  DataU in 'DataU.pas' {DataM: TDataModule},
  ProfileU in 'ProfileU.pas' {ProfileF},
  Vcl.Themes,
  Vcl.Styles,
  ContactU in 'ContactU.pas' {ContactF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TMainF, MainF);
  Application.CreateForm(TDataM, DataM);
  Application.CreateForm(TProfileF, ProfileF);
  Application.CreateForm(TContactF, ContactF);
  Application.Run;
end.
