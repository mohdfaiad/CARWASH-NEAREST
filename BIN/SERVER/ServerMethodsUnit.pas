unit ServerMethodsUnit;

interface

uses
  System.SysUtils, System.Classes, System.Json, DataSnap.DSProviderDataModuleAdapter,
  Datasnap.DSServer, Datasnap.DSAuth, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TServerMethods = class(TDSServerModule)
    sqlConnection: TFDConnection;
    t_WashService: TFDQuery;
    v_WashService: TFDQuery;
    t_Wash: TFDQuery;
    t_Service: TFDQuery;
    t_Orders: TFDQuery;
    t_OrderItem: TFDQuery;
    t_JobTime: TFDQuery;
    t_Client: TFDQuery;
    t_ClassAvto: TFDQuery;
    t_Box: TFDQuery;
    WASH: TDataSetProvider;
    JOBTIME: TDataSetProvider;
    BOX: TDataSetProvider;
    CLASSAVTO: TDataSetProvider;
    CLIENT: TDataSetProvider;
    ORDERS: TDataSetProvider;
    ORDERS_ITEM: TDataSetProvider;
    SERVICE: TDataSetProvider;
    v_Wash: TFDQuery;
    v_OrderItem: TFDQuery;
    v_Orders: TFDQuery;
    VIEW_WASH: TDataSetProvider;
    VIEW_WASH_SERVICE: TDataSetProvider;
    VIEW_ORDERS: TDataSetProvider;
    VIEW_ORDERS_ITEM: TDataSetProvider;
    WASH_SERVICE: TDataSetProvider;
    t_WashClient: TFDQuery;
    WASH_CLIENT: TDataSetProvider;
    ds_Wash: TDataSource;
    t_SQL: TFDQuery;
    ds_Service: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

uses
  System.StrUtils;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

