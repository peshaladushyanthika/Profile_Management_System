unit ProfileU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,System.DateUtils;

type
  TProfileF = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    nameEd: TDBEdit;
    Label3: TLabel;
    dobEd: TDBEdit;
    Label4: TLabel;
    nicEd: TDBEdit;
    Label5: TLabel;
    conEd: TDBEdit;
    Label6: TLabel;
    addEd: TDBEdit;
    btClose: TButton;
    btSave: TButton;
    Label7: TLabel;
    ageEd: TDBEdit;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    btaddcon: TButton;
    btdelcon: TButton;
    DataSource2: TDataSource;
    procedure btSaveClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure dobEdChange(Sender: TObject);
    function CalculateAge(BirthDate: TDateTime): Integer;
    procedure FormShow(Sender: TObject);
    procedure btaddconClick(Sender: TObject);
    procedure btdelconClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfileF: TProfileF;

implementation
uses DataU,ContactU;

{$R *.dfm}

procedure TProfileF.btaddconClick(Sender: TObject);
begin
ContactF.ShowModal;
end;

procedure TProfileF.btCloseClick(Sender: TObject);
begin
//Close after checking state
if DataM.Query1.State in [dsEdit,dsInsert] then
DataM.Query1.cancel;
close;
end;

procedure TProfileF.btdelconClick(Sender: TObject);
begin
if not DataM.Query2.IsEmpty then
  begin
    DataM.Query2.Delete;
    DataM.Query2.CommitUpdates; // Commit the deletion to the database
    ShowMessage('Contact deleted successfully');
  end
else
  begin
    ShowMessage('No contact to delete');
  end;
end;

procedure TProfileF.btSaveClick(Sender: TObject);
var msg: string;
var Result:boolean;
var ProfileID: integer;
begin
msg := '';
if Trim(nameEd.Text) = '' then
msg := msg + 'Name cannot be empty'+ sLineBreak;
if Trim(dobEd.Text) = '' then
msg := msg + 'DOB cannot be empty'+ sLineBreak;
if Trim(nicEd.Text) = '' then
msg := msg + 'NIC cannot be empty'+ sLineBreak;
if Trim(conEd.Text) = '' then
msg := msg + 'Contact cannot be empty'+ sLineBreak;
if Trim(addEd.Text) = '' then
msg := msg + 'Adderess cannot be empty'+ sLineBreak;
Result := (msg='');
if Result then
  begin
  // Save record
  if DataM.Query1.State in [dsEdit,dsInsert] then
  DataM.Query1.Post;
  //DataM.Query1.CommitUpdates;
  DataM.Query2.SQL.Clear;
  DataM.Query2.SQL.Add('SELECT * FROM con_dtl WHERE profile_id = :ProfileID');
  DataM.Query2.Params.ParamByName('ProfileID').AsInteger := StrToInt(DBEdit1.Text);
  DataM.Query2.Open;

  // Check if the contact already exists
  if DataM.Query2.Locate('profile_id', StrToInt(DBEdit1.Text), []) then
  begin
    DataM.Query2.Edit;
  end
  else
  begin
    DataM.Query2.Append;
    DataM.Query2.FieldByName('profile_id').AsInteger := StrToInt(DBEdit1.Text);
  end;
    DataM.Query2.FieldByName('contact').AsString := conEd.Text;
    if DataM.Query2.State in [dsEdit,dsInsert] then
    DataM.Query2.Post;
  end
  else
  showmessage(msg);
end;
procedure TProfileF.dobEdChange(Sender: TObject);
var
  Age: Integer;
  BirthDate: TDateTime;
begin
  BirthDate := StrToDateDef(dobEd.Text, 0); // birth date
  if BirthDate <> 0 then
  begin
  Age := CalculateAge(BirthDate);
  ageEd.Text := IntToStr(Age);
  end;
end;

function TProfileF.CalculateAge(BirthDate: TDateTime): Integer;
begin
  //subtract the year of birth from the current year
  Result := YearOf(Now) - YearOf(BirthDate);
end;

procedure TProfileF.FormShow(Sender: TObject);
begin
DataM.Query2.Close;
DataM.Query2.SQL.Clear;
DataM.Query2.SQL.Add('SELECT * FROM con_dtl WHERE profile_id = :profile_id');
DataM.Query2.ParamByName('profile_id').AsInteger := StrToInt(DBEdit1.Text);
DataM.Query2.Open;
end;
end.
