unit ContactU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB;

type
  TContactF = class(TForm)
    Label1: TLabel;
    newconEd: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContactF: TContactF;

implementation
uses DataU,ProfileU;

{$R *.dfm}

procedure TContactF.Button1Click(Sender: TObject);
var
  ExistingContacts: string;
begin
try
//start transaction
DataM.Connection1.StartTransaction;
//Ensure the dataset is open
DataM.Query2.Open;

// Check if the profile already exists in con_dtl
if DataM.Query2.Locate('profile_id', StrToInt(ProfileF.DBEdit1.Text), []) then
  begin
  // Profile exists, update the existing contact field
  ExistingContacts := DataM.Query2.FieldByName('contact').AsString;
  // Append the new contact to the existing contacts, separated by a comma
  if ExistingContacts <> '' then
    ExistingContacts := ExistingContacts + ', ' + ContactF.newconEd.Text
    else
    ExistingContacts := ContactF.newconEd.Text;
  // Update the contact field
  DataM.Query2.Edit;
  DataM.Query2.FieldByName('contact').AsString := ExistingContacts;
  DataM.Query2.Post;
  //DataM.Query2.CommitUpdates; // Commit the changes to the database
  end;
  if DataM.Query1.Locate('id', StrToInt(ProfileF.DBEdit1.Text), []) then
  begin
  ExistingContacts := DataM.Query1.FieldByName('contact').AsString;
  if ExistingContacts <> '' then
  ExistingContacts := ExistingContacts + ', ' + ContactF.newconEd.Text
  else
  ExistingContacts := ContactF.newconEd.Text;
  DataM.Query1.Edit;
  DataM.Query1.FieldByName('contact').AsString := ExistingContacts;
  DataM.Query1.Post;
  end;
  ShowMessage('Contact added successfully');
  //commit the transaction
  DataM.Connection1.Commit;
except
  on E: Exception do
  begin
  //if transaction fail, rollback
  DataM.Connection1.Rollback;
  ShowMessage('Transaction failed: ' + E.Message);
  end;
end;
end;
end.
