unit FormCadUsuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Layouts, FMX.Ani, FMX.StdCtrls, FMX.Controls.Presentation, REST.Types,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, Login1,
  REST.Authenticator.OAuth, DataModule,

   REST.Utils
  ,System.JSON
  ,Web.HTTPApp
  ,System.Net.HttpClient
  ,IdHTTP, FMX.Effects, FMX.Filter.Effects, Apresentacao;

type
  TFormCadastroUsuario = class(TForm)
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
    RESTClient: TRESTClient;
    RESTResponse: TRESTResponse;
    RESTRequest: TRESTRequest;
    OAuth2_Facebook: TOAuth2Authenticator;
    procedure ed_priNomeEnter(Sender: TObject);
    procedure ed_emailEnter(Sender: TObject);
    procedure ed_tipoEnter(Sender: TObject);
    procedure ed_descEnter(Sender: TObject);
    procedure ed_ultimoNomeEnter(Sender: TObject);
    procedure ed_mmcEnter(Sender: TObject);
    procedure ed_foneEnter(Sender: TObject);
    procedure ed_cnpjEnter(Sender: TObject);
    procedure ed_enderecoEnter(Sender: TObject);
    procedure ed_mod_pgtEnter(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure RESTRequestAfterExecute(Sender: TCustomRESTRequest);
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
    foco : TControl;
  public
    { Public declarations }
    FAccessToken : string;
  end;

var
  FormCadastroUsuario: TFormCadastroUsuario;

implementation

{$R *.fmx}
uses Form_LoginFacebook;

procedure Ajustar_Scroll();
var
        x : integer;
begin
        with FormCadastroUsuario do
        begin
                VScroll.Margins.Bottom := 250;
                VScroll.ViewportPosition := PointF(VScroll.ViewportPosition.X,
                                            TControl(foco).Position.Y - 90);

        end;
end;

procedure TFormCadastroUsuario.btn_salvarClick(Sender: TObject);
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
              //FormCadastroUsuario.Close;
          except
        on E: Exception do
          showmessage('Erro3.' + UpperCase(E.Message));
  end;
end;

procedure TFormCadastroUsuario.ed_cnpjEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_descEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_emailEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_enderecoEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_foneEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_mmcEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_mod_pgtEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_priNomeEnter(Sender: TObject);
begin
        foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;


procedure TFormCadastroUsuario.ed_tipoEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;

procedure TFormCadastroUsuario.ed_ultimoNomeEnter(Sender: TObject);
begin
foco := TControl(TEdit(sender).Parent);
        Ajustar_Scroll();
end;


procedure TFormCadastroUsuario.FormCreate(Sender: TObject);
var
      id_aplicativo, LURL : string;
begin
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
                    Frm_LoginFacebook2 := TFrm_LoginFacebook.Create(nil);
                    Frm_LoginFacebook2.Wbinfoface.Navigate(LURL);
                    Frm_LoginFacebook2.ShowModal(
                        procedure(ModalResult: TModalResult)
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
                        end);
                finally

                end;


        except on e:exception do
                showmessage(e.Message);
        end;


end;

procedure TFormCadastroUsuario.FormHide(Sender: TObject);
begin
    FormCadastroUsuario.Close;
end;

procedure TFormCadastroUsuario.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
    VScroll.Margins.Bottom := 0;
end;


procedure TFormCadastroUsuario.RESTRequestAfterExecute(Sender: TCustomRESTRequest);
var
        LJsonObj  : TJSONObject;
        LElements: TJSONValue;

        msg, nome,sobrenome, email, user_id : string;

        MS: TMemoryStream;
begin
        try
                msg := '';
                FormCadastroUsuario.FAccessToken := '';


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
