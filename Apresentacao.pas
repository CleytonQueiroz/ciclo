unit Apresentacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Layouts, System.Actions, FMX.ActnList, FMX.Gestures,
  FMX.Ani, FMX.Effects, FMX.Filter.Effects, FMX.Controls.Presentation,
  FMX.StdCtrls, Login1, FMX.StdActns, FMX.MultiView, FMX.ScrollBox,
  FMX.Memo, FMX.Edit, Xml.xmldom, Xml.XmlTransform, DataModule;

type
  TFormApresentacao = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Layout1: TLayout;
    Circle1: TCircle;
    Circle2: TCircle;
    Circle3: TCircle;
    ActionList1: TActionList;
    GestureManager1: TGestureManager;
    ChangeTabAction1: TChangeTabAction;
    ChangeTabAction2: TChangeTabAction;
    FadeTransitionEffect1: TFadeTransitionEffect;
    FloatAnimation1: TFloatAnimation;
    Button1: TButton;
    WindowClose1: TWindowClose;
    ActLogin: TChangeTabAction;
    ActVoltaTab3: TChangeTabAction;
    ActGoogle: TChangeTabAction;
    ActCaduser: TChangeTabAction;
    XMLTransform1: TXMLTransform;
    procedure ChangeTabAction1Update(Sender: TObject);
    procedure ChangeTabAction2Update(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
  private
    procedure controlaCircle();
  public
    { Public declarations }
  end;

var
  FormApresentacao: TFormApresentacao;

implementation

{$R *.fmx}

procedure TFormApresentacao.Button1Click(Sender: TObject);
begin
    Form_Login := TFormLogin.Create(Application);
    Form_Login.Show;
//    ActLogin.ExecuteTarget(Sender);
//    Layout1.Visible := false;
end;

procedure TFormApresentacao.ChangeTabAction1Update(Sender: TObject);
begin
 if    TabControl1.ActiveTab = TabItem3 then
       TabControl1.ActiveTab := TabItem2
       else
       if TabControl1.ActiveTab = TabItem2 then
       TabControl1.ActiveTab := TabItem1;

       controlaCircle;
        //transição entre telas.

        FadeTransitionEffect1.Enabled :=true;

       //FadeTransitionEffect1.Enabled := true;
       FloatAnimation1.Start;
end;

procedure TFormApresentacao.ChangeTabAction2Update(Sender: TObject);
begin
if    TabControl1.ActiveTab = TabItem1 then
       TabControl1.ActiveTab := TabItem2
       else
       if TabControl1.ActiveTab = TabItem2 then
       TabControl1.ActiveTab := TabItem3;

       controlaCircle;

        //transição entre telas.
        FadeTransitionEffect1.Enabled :=true;
       FloatAnimation1.Start;
end;
     procedure TFormApresentacao.controlaCircle;
begin
if TabControl1.ActiveTab = TabItem1 then
    begin
      circle1.Fill.Color := TAlphaColors.Chocolate;
      circle2.Fill.Color := TAlphaColors.black;
      circle3.Fill.Color := TAlphaColors.black;

      end

      else
      if TabControl1.ActiveTab = TabItem2 then
    begin
      circle1.Fill.Color := TAlphaColors.black;
      circle2.Fill.Color := TAlphaColors.Deeppink;
      circle3.Fill.Color := TAlphaColors.black;

    end

    else
      if TabControl1.ActiveTab = TabItem3 then
    begin
      circle1.Fill.Color := TAlphaColors.black;
      circle2.Fill.Color := TAlphaColors.black;
      circle3.Fill.Color := TAlphaColors.Chartreuse;
      end

end;


procedure TFormApresentacao.FormShow(Sender: TObject);
begin
    TabControl1.ActiveTab := TabItem1;
    circle1.Fill.Color := TAlphaColors.Chocolate;
    circle2.Fill.Color := TAlphaColors.black;
    circle3.Fill.Color := TAlphaColors.black;
end;

procedure TFormApresentacao.Image4Click(Sender: TObject);
begin
//  jsAuthGoogle.Clear;
//
//  jsAuthGoogle.IdClient :=
//    '872618480264-816t62lhsimtbfjlahalilm2591oh77s.apps.googleusercontent.com';
//  jsAuthGoogle.MessageAuth := 'Autenticando no Google...';
//
//
//
//      Mm_Google.Lines.Clear;
//      Mm_Google.Lines.Add(' ID : ' + jsAuthGoogle.Id);
//      Mm_Google.Lines.Add(' Nome : ' + jsAuthGoogle.PersonsName);
//      Mm_Google.Lines.Add(' Primeiro Nome : ' + jsAuthGoogle.FirstPersonsName);
//      Mm_Google.Lines.Add(' Link : ' + jsAuthGoogle.LinkProfile);
//      Mm_Google.Lines.Add(' Website : ' + jsAuthGoogle.Website);
//      Mm_Google.Lines.Add(' Token Access : ' + jsAuthGoogle.AccessToken);
//      Mm_Google.Lines.Add(' Token Refresh : ' + jsAuthGoogle.RefreshToken);
//      Mm_Google.Lines.Add(' AuthCode : ' + jsAuthGoogle.AuthCode);
//
//      if jsAuthGoogle.ImgProfile <> Nil then
//        Cir_Google.Fill.Bitmap.Bitmap.LoadFromStream(jsAuthGoogle.ImgProfile);
//
//      TabControl1.ActiveTab := TabPerfil_google;
//
//
//  ActGoogle.ExecuteTarget(Sender);
//      Layout1.Visible := false;
end;

procedure TFormApresentacao.Image7Click(Sender: TObject);
begin
    ActVoltaTab3.ExecuteTarget(Sender);
      Layout1.Visible := true;
end;

procedure TFormApresentacao.Rectangle5Click(Sender: TObject);
begin
       ActCaduser.ExecuteTarget(Sender);
end;

end.
