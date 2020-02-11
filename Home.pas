unit Home;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, MultiDetailAppearanceU, Data.Bind.GenData,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFormHome = class(TForm)
    Ret1: TRectangle;
    Ret_cartao: TRectangle;
    listaMenu2: TListView;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHome: TFormHome;

implementation

{$R *.fmx}

procedure TFormHome.FormShow(Sender: TObject);
var
   ListItem: TListViewItem;

Begin

   ListItem := listaMenu2.Items.Add;
   ListItem.Text:= 'Minha evolução sustentável';
end;
end.
