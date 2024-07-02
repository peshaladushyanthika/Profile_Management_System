unit DataU;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataM = class(TDataModule)
    Connection1: TFDConnection;
    Query1: TFDQuery;
    DataSource1: TDataSource;
    Query1id: TFDAutoIncField;
    Query1name: TStringField;
    Query1dob: TDateField;
    Query1NIC: TStringField;
    Query1contact: TStringField;
    Query1address: TStringField;
    Query1age: TIntegerField;
    DataSource2: TDataSource;
    Query2: TFDQuery;
    Query2id: TFDAutoIncField;
    Query2profile_id: TIntegerField;
    Query2contact: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM: TDataM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataM.DataModuleCreate(Sender: TObject);
begin
//Set the date format
formatsettings.ShortDateFormat := 'yyyy-mm-dd';
//open connection
connection1.Open();
//open query object
Query1.Open();
end;

end.
