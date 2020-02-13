unit Home;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, MultiDetailAppearanceU, Data.Bind.GenData,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.ObjectScope, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFormHome = class(TForm)
    Ret1: TRectangle;
    Ret_cartao: TRectangle;
    Layout1: TLayout;
    Rect1: TRectangle;
    Rect2: TRectangle;
    Rect3: TRectangle;
    Rect4: TRectangle;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RectBtn1: TRectangle;
    RectBtn2: TRectangle;
    RectBtn3: TRectangle;
    RectBtn4: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;

implementation

{$R *.fmx}

end.
