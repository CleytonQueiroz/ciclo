program Splash;

uses
  System.StartUpCopy,
  FMX.Forms,
  Apresentacao in 'Apresentacao.pas' {FormApresentacao},
  Home in 'Home.pas' {FormHome},
  Login1 in 'Login1.pas' {FormLogin},
  MultiDetailAppearanceU in '..\..\..\..\..\..\Public\Documents\Embarcadero\Studio\20.0\Samples\Object Pascal\Multi-Device Samples\User Interface\ListView\ListViewMultiDetailAppearance\MultiDetailAppearanceU.pas',
  DataModule in 'DataModule.pas' {DM1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormApresentacao, FormApresentacao);
  //Application.CreateForm(TFrm_LoginFacebook2, Frm_LoginFacebook2);
  Application.CreateForm(TFormHome, FormHome);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
