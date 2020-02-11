unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  system.IOUtils, FireDAC.Comp.UI;

type
  TDM1 = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    Qry_geral: TFDQuery;
    Vendedor: TFDQuery;
    Vendedorid: TFDAutoIncField;
    Vendedorstatus: TWideMemoField;
    Vendedorresource: TWideMemoField;
    Vendedortype: TWideMemoField;
    Vendedoraccount_balance: TLargeintField;
    Vendedorcurrent_balance: TLargeintField;
    Vendedorvendedor_responsavel_id: TIntegerField;
    Vendedorfirst_name: TWideMemoField;
    Vendedorlast_name: TWideMemoField;
    Vendedoremail: TWideMemoField;
    Vendedorphone_number: TWideMemoField;
    Vendedorcpf: TWideMemoField;
    Vendedorbirthdate: TWideMemoField;
    Vendedorstatement_descriptor: TWideMemoField;
    Vendedordescription: TWideMemoField;
    Vendedoraddress: TIntegerField;
    Vendedordelinquent: TWideMemoField;
    Vendedordefault_debit: TWideMemoField;
    Vendedordefault_credit: TWideMemoField;
    Vendedormcc: TWideMemoField;
    Vendedormetadata: TWideMemoField;
    Vendedorcreated_at: TWideMemoField;
    Vendedorupdated_at: TWideMemoField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM1.DataModuleCreate(Sender: TObject);
begin
with FDConnection1 do
        begin
                {$IFDEF IOS}
                Params.Values['DriverID'] := 'SQLite';
                try
                        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'DbCiclo.db');
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}

                {$IFDEF ANDROID}
                Params.Values['DriverID'] := 'SQLite';
                try
                        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'DbCiclo.db');
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}

                {$IFDEF MSWINDOWS}
                try
                        Params.Values['Database'] := 'C:\Users\Cleyton\Documents\Embarcadero\Studio\Projects\AppCiclo\DB\DbCiclo.db';
                        Connected := true;
                except on E:Exception do
                        raise Exception.Create('Erro de conexão com o banco de dados: ' + E.Message);
                end;
                {$ENDIF}
        end;
end;

end.
