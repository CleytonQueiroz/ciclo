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
  ,IdHTTP, FMX.Effects, FMX.Filter.Effects, FMX.Edit, FMX.WebBrowser,
  FMX.TabControl, FMX.Layouts, FMX.Ani, System.Actions, FMX.ActnList, DataModule,
  Home;

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
    Rectangle6: TRectangle;
    TabControl1: TTabControl;
    TBLogin: TTabItem;
    TBFacebook: TTabItem;
    Rectangle7: TRectangle;
    btn_voltar: TSpeedButton;
    Wbinfoface: TWebBrowser;
    CadUsuario: TTabItem;
    OAuth2_Facebook: TOAuth2Authenticator;
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    ToolBar1: TToolBar;
    Label8: TLabel;
    btn_salvar: TSpeedButton;
    ColorAnimation1: TColorAnimation;
    VScroll: TVertScrollBox;
    lay_mmc: TLayout;
    Label9: TLabel;
    ed_mmc: TEdit;
    lay_mod_pgto: TLayout;
    Label10: TLabel;
    ed_mod_pgt: TEdit;
    lay_endereco: TLayout;
    Label13: TLabel;
    ed_endereco: TEdit;
    lay_email: TLayout;
    Label14: TLabel;
    ed_email: TEdit;
    lay_cnpj: TLayout;
    Label15: TLabel;
    ed_cnpj: TEdit;
    lay_fone: TLayout;
    Label18: TLabel;
    ed_fone: TEdit;
    lay_ult_nome: TLayout;
    Label17: TLabel;
    ed_ultimoNome: TEdit;
    lay_pri_nome: TLayout;
    Label16: TLabel;
    ed_priNome: TEdit;
    lay_descricao: TLayout;
    Label19: TLabel;
    ed_desc: TEdit;
    lay_tipo: TLayout;
    Label11: TLabel;
    ed_tipo: TEdit;
    ActionList2: TActionList;
    ActLogin: TChangeTabAction;
    TabFacebook: TChangeTabAction;
    TBCadUsuario: TChangeTabAction;
    procedure bt_login_googleClick(Sender: TObject);
    procedure bt_login_faceClick(Sender: TObject);
    procedure btn_voltarClick(Sender: TObject);
    procedure WbinfofaceDidFinishLoad(ASender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RESTRequestAfterExecute(Sender: TCustomRESTRequest);
    procedure btn_salvarClick(Sender: TObject);


   type
   TWebFormRedirectEvent = procedure(const AURL : string; var DoCloseWebView: boolean) of object;



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



procedure TFormLogin.FormCreate(Sender: TObject);
//Inicia sempre no tab login
begin
        TabControl1.ActiveTab := TbLogin;
        TabControl1.TabPosition := TTabPosition.None;
end;

procedure TFormLogin.btn_salvarClick(Sender: TObject);
begin
  try
        //dm.FDConnection1.Connected:= false;
        if  ed_priNome.Text = '' then
        begin
                showmessage('Informe o nome.');
                exit;
        end;


              //dm1.Qry_geral.Active := True;

              dm1.Qry_geral.Active := False;
              dm1.Qry_geral.sql.Clear;
              dm1.Qry_geral.sql.Add('insert into vendedor(first_name,last_name,email)');
              dm1.Qry_geral.sql.Add('values(:first_name,:last_name,:email)');
              dm1.Qry_geral.ParamByName('first_name').Value := ed_priNome.Text;
              dm1.Qry_geral.ParamByName('last_name').Value := ed_ultimoNome.Text;
              dm1.Qry_geral.ParamByName('email').Value := ed_email.Text;
              dm1.Qry_geral.ExecSQL;

              showmessage('Cadastrado com sucesso.');
              Form_login.Close;
              FormHome.show;

          except
        on E: Exception do
          showmessage('Erro3.' + UpperCase(E.Message));
  end;
end;

procedure TFormLogin.btn_voltarClick(Sender: TObject);
begin
        ActLogin.ExecuteTarget(self);
        Form_Login.FAccessToken := '';
        ModalResult := mrOk;
end;

procedure TFormLogin.bt_login_faceClick(Sender: TObject);
var
  id_aplicativo, LURL : string;

  begin
   TabFacebook.ExecuteTarget(Sender);

        try
                FAccessToken := '';
                id_aplicativo := '1539938356182489'; // Colocar o codigo do seu aplicativo aqui...

                LURL := 'https://www.facebook.com/dialog/oauth'
                        + '?client_id=' + URIEncode(id_aplicativo)
                        + '&response_type=token'
                        + '&scope=' + URIEncode('public_profile,email')
                        //+ '&scope=' + URIEncode('user_about_me,user_birthday')
                        + '&redirect_uri=' + URIEncode('https://www.facebook.com/connect/login_success.html');


                // Abre tela de login do facebook...
                try
                    //Form_login := TBFacebook.Create(nil);
                     Wbinfoface.Navigate(LURL);
                    
                        begin
                                if FAccessToken <> '' then
                                begin
                                        RESTRequest.ResetToDefaults;
                                        RESTClient.ResetToDefaults;
                                        RESTResponse.ResetToDefaults;

                                        RESTClient.BaseURL := 'https://graph.facebook.com';
                                        RESTClient.Authenticator := OAuth2_Facebook;
                                       // RESTRequest.Resource := 'me?fields=first_name,last_name,email,picture.height(150)';

                                        RESTRequest.Resource := 'me?fields=first_name,last_name,email';
                                        OAuth2_Facebook.AccessToken := FAccessToken;

                                        RESTRequest.Execute;
                                end;
                        end;
                finally

                end;


        except on e:exception do
                showmessage(e.Message);
        end;

end;
procedure Facebook_AccessTokenRedirect(const AURL: string; var DoCloseWebView: boolean);
var
      LATPos: integer;
      LToken: string;
begin
        try
                LATPos := Pos('access_token=', AURL);

                if (LATPos > 0) then
                begin
                        LToken := Copy(AURL, LATPos + 13, Length(AURL));

                        if (Pos('&', LToken) > 0) then
                        begin
                                LToken := Copy(LToken, 1, Pos('&', LToken) - 1);
                        end;

                        Form_Login.FAccessToken := LToken;

                        if (LToken <> '') then
                        begin
                                DoCloseWebView := True;
                        end;
                end
                else
                begin
                        LATPos := Pos('api_key=', AURL);

                        if LATPos <= 0 then
                        begin
                                LATPos := Pos('access_denied', AURL);

                                if (LATPos > 0) then
                                begin
                                        // Acesso negado, cancelado ou usuário não permitiu o acesso...
                                        Form_login.FAccessToken := '';
                                        DoCloseWebView := True;
                                end;
                        end;
                end;
      except
        on E: Exception do
          ShowMessage(E.Message);
      END;
    end;




    procedure TFormLogin.WbinfofaceDidFinishLoad(ASender: TObject);
var
        CloseWebView : boolean;
        url : string;
begin
        url := TWebBrowser(ASender).URL;
        CloseWebView := false;

        if url <> '' then
                Facebook_AccessTokenRedirect(url, CloseWebView);

        if CloseWebView then
        begin
                TWebBrowser(ASender).Stop;
                TWebBrowser(ASender).URL := '';
                //TWebBrowser
                ModalResult := mrok;
                TBCadUsuario.ExecuteTarget(ASender);
                //TabFacebook.ExecuteTarget(ASender);
        end;

end;
procedure TFormLogin.RESTRequestAfterExecute(Sender: TCustomRESTRequest);
var
        LJsonObj  : TJSONObject;
        LElements: TJSONValue;

        msg, nome,sobrenome, email, user_id : string;

        MS: TMemoryStream;
begin
        try
                msg := '';
                FAccessToken := '';


                // Valida JSON retornado...
                if Assigned(RESTResponse.JSONValue) then
                        msg := RESTResponse.JSONValue.ToString;


                // Extrai campos do JSON...
                LJsonObj := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(msg), 0) as TJSONObject;

                try
                        user_id := HTMLDecode(StringReplace(TJSONObject(LJsonObj).Get('id').JsonValue.ToString, '"', '', [rfReplaceAll]));
                except
                end;

                try
                        email := StringReplace(TJSONObject(LJsonObj).Get('email').JsonValue.ToString, '"', '', [rfReplaceAll]);
                except
                end;

                try
                        // Primeiro nome...
                        nome := StringReplace(TJSONObject(LJsonObj).Get('first_name').JsonValue.ToString, '"', '', [rfReplaceAll]);
                except
                end;

                try
                        // Sobrenome...
                        sobrenome := StringReplace(TJSONObject(LJsonObj).Get('last_name').JsonValue.ToString, '"', '', [rfReplaceAll]);
                except
                end;

                try
                       // LElements := TJSONObject(TJSONObject(LJsonObj).Get('picture').JsonValue).Get('data').JsonValue;
                        //url_foto := StringReplace(TJSONObject(LElements).Get('url').JsonValue.ToString, '"', '', [rfReplaceAll]);
                except
                end;




                // Download da foto...
                try
                        MS := TMemoryStream.Create;
                     //   MS := LoadStreamFromURL(url_foto);

                       // circle_foto.Fill.Bitmap.Bitmap.LoadFromStream(MS);

                except
                        showmessage('Erro a criar a foto');
                end;

                ed_priNome.Text := nome;
                ed_ultimoNome.Text := sobrenome;
                ed_email.Text := email;
               // showmessage('Erro a criar a foto');
        except

        end;
end;

end.
