unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.FileCtrl;

type
  TMainF = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    edSearch: TEdit;
    btExit: TButton;
    btAdd: TButton;
    btEdit: TButton;
    btDelete: TButton;
    btSearch: TButton;
    ComboBox: TComboBox;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
   // procedure FilterComboBoxChange(Sender: TObject);
    procedure ApplyAgeFilter;
    procedure ResetFilter;
    procedure ComboBoxChange(Sender: TObject);
    procedure edSearchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainF: TMainF;

implementation
//link data module to main form
uses DataU,ProfileU;

{$R *.dfm}

procedure TMainF.btAddClick(Sender: TObject);
begin
//To add new record
DataM.Query1.Append;
ProfileF.Showmodal;
end;

procedure TMainF.btDeleteClick(Sender: TObject);
var response: Integer;
begin
//Display a confirmation dialog with Yes and No buttons
response := MessageDlg('Are you sure you want to delete this record?', mtConfirmation, [mbYes, mbNo], 0);
//Check the user's response
if response = mrYes then
  begin
  //To delete the message
  DataM.Query1.Delete;
  ShowMessage('Record is deleted.');
  end
else
  begin
  ShowMessage('Record is not deleted.');
  end;
end;

procedure TMainF.btEditClick(Sender: TObject);
begin
//To edit record
DataM.Query1.Edit;
ProfileF.Showmodal;
end;


procedure TMainF.btExitClick(Sender: TObject);
begin
//Exit
close;
end;

procedure TMainF.btSearchClick(Sender: TObject);
begin
if edSearch.Text = '' then
exit;
//Search by name
//if DataM.Query1.Locate('name', edSearch.Text, [loCaseInsensitive]) then
//  begin
//  ShowMessage('Found by Name');
//  end
////If not found by name, try to locate by NIC
//else if DataM.Query1.Locate('NIC', edSearch.Text, [loCaseInsensitive]) then
//  begin
//  ShowMessage('Found by NIC');
//  end
////If not found by NIC, try to locate by contact
//else if DataM.Query1.Locate('contact', edSearch.Text, [loCaseInsensitive]) then
//  begin
//  ShowMessage('Found by Contact');
//  end
//else
//  begin
//  ShowMessage('Not found');
//  end;

//search by name and contact
with DataM.Query1 do
begin
  if Locate('name;contact', VarArrayOf(['edSearch.Text', 'edSearch.Text']), [loCaseInsensitive]) then
    ShowMessage('Found the profile')
  else
    ShowMessage('Profile not found');
end;
end;

procedure TMainF.ComboBoxChange(Sender: TObject);
begin
if ComboBox.Text = 'Age >18' then
  begin
    ApplyAgeFilter;
  end
  else
  begin
    ResetFilter;
  end;
end;

//implement grid title click event for sorting
procedure TMainF.DBGrid1TitleClick(Column: TColumn);
begin
with DataM.Query1 do
  begin
    if IndexFieldNames = Column.FieldName + ':A' then
      IndexFieldNames := Column.FieldName + ':D'
    else
      IndexFieldNames := Column.FieldName + ':A';
    // Reopen the dataset to apply the sorting
    Close;
    Open;
  end;
end;

procedure TMainF.edSearchChange(Sender: TObject);
var
  FilterStr: string;
begin
    if edSearch.Text <> '' then
  begin
    FilterStr := 'Name LIKE ''' + edSearch.Text + '%''';
    DataM.Query1.Filter := FilterStr;
    DataM.Query1.Filtered := True;
  end
  else
  begin
    DataM.Query1.Filtered := False;
  end;
end;
procedure TMainF.ApplyAgeFilter;
begin
  with DataM.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM profile WHERE Age > 18');
    Open;
  end;
end;

procedure TMainF.ResetFilter;
begin
  with DataM.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM profile');
    Open;
  end;
end;
end.
