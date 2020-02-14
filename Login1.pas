unit Login1;


interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.MultiView,
  REST.Types, REST.Client, REST.Authenticator.OAuth, Data.Bind.Components,
  Data.Bind.ObjectScope, FMX.Forms

  ,REST.Utils
  ,System.JSON
  ,Web.HTTPApp
  ,System.Net.HttpClient
  ,IdHTTP, FMX.Effects, FMX.Filter.Effects, FMX.Edit;

type
  TFormLogin = class(TForm)
    MultiView1: TMultiView;
    Rectangle1: TRectangle;
    bt_login_google: TImage;
    bt_login_face: TImage;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Rectangle4: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Rectangle5: TRectangle;
    Image3: TImage;
    Image4: TImage;
    LineTransitionEffect1: TLineTransitionEffect;
    edt_nome: TEdit;
    edt_email: TEdit;
    procedure Image4Click(Sender: TObject);
    procedure bt_login_googleClick(Sender: TObject);
    procedure bt_login_faceClick(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FAccessToken : string;
  end;

var
  Form_Login: TFormLogin;
 // FormFacebook: TFrm_LoginFacebook;

implementation

{$R *.fmx}

uses Form_LoginFacebook, FormCadUsuario;
         //Home
function LoadStreamFromURL(url : string): TMemoryStream;
var
        MS : TMemoryStream;
        imagem: TBitmap;
        http : THTTPClient;
begin
//        MS := TMemoryStream.Create;
//        http := THTTPClient.Create;
//
//        imagem := TBitmap.Create;
//        try
//                try
//                        http.Get(url, MS);
//
//                except on e: EIdHTTPProtocolException do
//                begin
//                        if e.ErrorCode = 404 then
//                        begin
//                                // url nao encontada...
//                                showmessage('Foto não encontrada');
//                        end
//                        else
//                        begin
//                                // outro erro...
//                                showmessage('Ocorreu um erro ao buscar a foto');
//                        end;
//                end;
//                end;
//
//                MS.Position := 0;
//                Result := MS;
//        finally
//                imagem.Free;
//        end;

end;

procedure TFormLogin.bt_login_googleClick(Sender: TObject);
begin



// jsAuthGoogle.Clear;
//
//  jsAuthGoogle.IdClient :=
//    '872618480264-816t62lhsimtbfjlahalilm2591oh77s.apps.googleusercontent.com';
//  jsAuthGoogle.MessageAuth := 'Autenticando no Google...';
//
//  if (jsAuthGoogle.AuthCode <> '') And (jsAuthGoogle.AccessToken <> '') then
//  Begin
//
//    ShowMessage('Config Encontrada');
//    If jsAuthGoogle.GetInfoGoogle Then
//    Begin
//      Label8.Text := ' ID : ' + jsAuthGoogle.Id +
//      ' Nome : ' + jsAuthGoogle.PersonsName +
//      ' Primeiro Nome : ' + jsAuthGoogle.FirstPersonsName +
//      ' Link : ' + jsAuthGoogle.LinkProfile +
//      ' Website : ' + jsAuthGoogle.Website +
//      ' Token Access : ' + jsAuthGoogle.AccessToken +
//      ' Token Refresh : ' + jsAuthGoogle.RefreshToken +
//      ' AuthCode : ' + jsAuthGoogle.AuthCode;
//
////      Mm_Google.Lines.Clear;
////      Mm_Google.Lines.Add(' ID : ' + jsAuthGoogle.Id);
////      Mm_Google.Lines.Add(' Nome : ' + jsAuthGoogle.PersonsName);
////      Mm_Google.Lines.Add(' Primeiro Nome : ' + jsAuthGoogle.FirstPersonsName);
////      Mm_Google.Lines.Add(' Link : ' + jsAuthGoogle.LinkProfile);
////      Mm_Google.Lines.Add(' Website : ' + jsAuthGoogle.Website);
////      Mm_Google.Lines.Add(' Token Access : ' + jsAuthGoogle.AccessToken);
////      Mm_Google.Lines.Add(' Token Refresh : ' + jsAuthGoogle.RefreshToken);
////      Mm_Google.Lines.Add(' AuthCode : ' + jsAuthGoogle.AuthCode);
//
////      if jsAuthGoogle.ImgProfile <> Nil then
////        Cir_Google.Fill.Bitmap.Bitmap.LoadFromStream(jsAuthGoogle.ImgProfile);
////
////      TabControl1.ActiveTab := Tab_Google;
//
//    End
//    Else
//      ShowMessage('Erro ao recuperar informações da conta.');
//
//  End
//  Else
//  begin
//
//    jsAuthGoogle.AutoSave := True;
//    jsAuthGoogle.jsAuth(
//      procedure
//      begin
//
//        If (jsAuthGoogle.AuthCode <> '') Then
//        Begin
//
//          If jsAuthGoogle.GetInfoGoogle Then
//          Begin
//
//          Label8.Text := ' ID : ' + jsAuthGoogle.Id +
//      ' Nome : ' + jsAuthGoogle.PersonsName +
//      ' Primeiro Nome : ' + jsAuthGoogle.FirstPersonsName +
//      ' Link : ' + jsAuthGoogle.LinkProfile +
//      ' Website : ' + jsAuthGoogle.Website +
//      ' Token Access : ' + jsAuthGoogle.AccessToken +
//      ' Token Refresh : ' + jsAuthGoogle.RefreshToken +
//      ' AuthCode : ' + jsAuthGoogle.AuthCode;
//
////            Mm_Google.Lines.Clear;
////            Mm_Google.Lines.Add(' ID : ' + jsAuthGoogle.Id);
////            Mm_Google.Lines.Add(' Nome : ' + jsAuthGoogle.PersonsName);
////            Mm_Google.Lines.Add(' Primeiro Nome : ' +
////              jsAuthGoogle.FirstPersonsName);
////            Mm_Google.Lines.Add(' Link : ' + jsAuthGoogle.LinkProfile);
////            Mm_Google.Lines.Add(' Website : ' + jsAuthGoogle.Website);
////            Mm_Google.Lines.Add(' Token Access : ' + jsAuthGoogle.AccessToken);
////            Mm_Google.Lines.Add(' Token Refresh : ' +
////              jsAuthGoogle.RefreshToken);
////            Mm_Google.Lines.Add(' AuthCode : ' + jsAuthGoogle.AuthCode);
////
////            if jsAuthGoogle.ImgProfile <> Nil then
////              Cir_Google.Fill.Bitmap.Bitmap.LoadFromStream
////                (jsAuthGoogle.ImgProfile);
////
////            TabControl1.ActiveTab := Tab_Google;
//
//          End
//          Else
//            ShowMessage('Erro ao recuperar informações da conta.');
//
//        End
//        Else
//          ShowMessage('Erro na autenticação');
//
//      End);
//
//  End;
end;

procedure TFormLogin.bt_login_faceClick(Sender: TObject);
//var
        //id_aplicativo, LURL : string;
begin
          FormCadastroUsuario.FormCreate(Application);
          //FormCadastroUsuario.Show;

//        try
//                FAccessToken := '';
//                id_aplicativo := '1539938356182489'; // Colocar o codigo do seu aplicativo aqui...
//
//                LURL := 'https://www.facebook.com/dialog/oauth'
//                        + '?client_id=' + URIEncode(id_aplicativo)
//                        + '&response_type=token'
//                        + '&scope=' + URIEncode('public_profile,email')
//                        //+ '&scope=' + URIEncode('user_about_me,user_birthday')
//                        + '&redirect_uri=' + URIEncode('https://www.facebook.com/connect/login_success.html');
//
//
//                // Abre tela de login do facebook...
//                try
//                        Frm_LoginFacebook2 := TFrm_LoginFacebook.Create(nil);
//                        Frm_LoginFacebook2.Wbinfoface.Navigate(LURL);
//                        Frm_LoginFacebook2.ShowModal(
//                                        procedure(ModalResult: TModalResult)
//                                        begin
//                                                if FAccessToken <> '' then
//                                                begin
//                                                        RESTRequest.ResetToDefaults;
//                                                        RESTClient.ResetToDefaults;
//                                                        RESTResponse.ResetToDefaults;
//
//                                                        RESTClient.BaseURL := 'https://graph.facebook.com';
//                                                        RESTClient.Authenticator := OAuth2_Facebook;
//                                                       // RESTRequest.Resource := 'me?fields=first_name,last_name,email,picture.height(150)';
//
//                                                        RESTRequest.Resource := 'me?fields=first_name,last_name,email';
//                                                        OAuth2_Facebook.AccessToken := FAccessToken;
//
//                                                        RESTRequest.Execute;
//                                                end;
//                                        end);
//                finally
//
//                end;

//
//        except on e:exception do
//                showmessage(e.Message);
//        end;
end;

procedure TFormLogin.Image4Click(Sender: TObject);
begin
   Form_Login.Close;
end;

procedure TFormLogin.Rectangle5Click(Sender: TObject);
begin
    FormCadastroUsuario := TFormCadastroUsuario.Create(Application);
    FormCadastroUsuario.Show;
end;


end.
