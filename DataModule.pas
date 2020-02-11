unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  system.IOUtils, FireDAC.Comp.UI, Data.Bind.Components, Data.Bind.DBScope;

type
  Tdm = class(TDataModule)
    qry_geral: TFDQuery;
    Qry_Vendedor: TFDQuery;
    FDConnection1: TFDConnection;
    Qry_Vendedorid: TFDAutoIncField;
    Qry_Vendedorstatus: TWideMemoField;
    Qry_Vendedorresource: TWideMemoField;
    Qry_Vendedortype: TWideMemoField;
    Qry_Vendedoraccount_balance: TLargeintField;
    Qry_Vendedorcurrent_balance: TLargeintField;
    Qry_Vendedorvendedor_responsavel_id: TIntegerField;
    Qry_Vendedorfirst_name: TWideMemoField;
    Qry_Vendedorlast_name: TWideMemoField;
    Qry_Vendedoremail: TWideMemoField;
    Qry_Vendedorphone_number: TWideMemoField;
    Qry_Vendedorcpf: TWideMemoField;
    Qry_Vendedorbirthdate: TWideMemoField;
    Qry_Vendedorstatement_descriptor: TWideMemoField;
    Qry_Vendedordescription: TWideMemoField;
    Qry_Vendedoraddress: TIntegerField;
    Qry_Vendedordelinquent: TWideMemoField;
    Qry_Vendedordefault_debit: TWideMemoField;
    Qry_Vendedordefault_credit: TWideMemoField;
    Qry_Vendedormcc: TWideMemoField;
    Qry_Vendedormetadata: TWideMemoField;
    Qry_Vendedorcreated_at: TWideMemoField;
    Qry_Vendedorupdated_at: TWideMemoField;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
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
