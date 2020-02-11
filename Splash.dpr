program Splash;

uses
  System.StartUpCopy,
  FMX.Forms,
  Apresentacao in 'Apresentacao.pas' {FormApresentacao},
  FormCadUsuario in 'FormCadUsuario.pas' {FormCadastroUsuario},
  DataModule in 'DataModule.pas' {dm: TDataModule},
  Home in 'Home.pas' {FormHome},
  Login1 in 'Login1.pas' {FormLogin},
  Form_LoginFacebook in 'Form_LoginFacebook.pas' {Frm_LoginFacebook},
  MultiDetailAppearanceU in '..\..\..\..\..\..\Public\Documents\Embarcadero\Studio\20.0\Samples\Object Pascal\Multi-Device Samples\User Interface\ListView\ListViewMultiDetailAppearance\MultiDetailAppearanceU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormApresentacao, FormApresentacao);
  Application.CreateForm(TFormCadastroUsuario, FormCadastroUsuario);
  Application.CreateForm(TFrm_LoginFacebook, Frm_LoginFacebook2);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
