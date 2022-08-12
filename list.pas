unit list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    bAdd: TButton;
    bEdit: TButton;
    ListSurname: TListBox;
    Label2: TLabel;
    EditText: TEdit;
    bDelete: TButton;
    procedure bAddClick(Sender: TObject);
    procedure ShowList();
    procedure FormCreate(Sender: TObject);
    procedure ListSurnameClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bDeleteClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Surname: array of string;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  SetLength(Surname,0);
end;


procedure TForm1.bAddClick(Sender: TObject);
var n: integer;
begin
  n:= Length(Surname);
  SetLength(Surname, n+1);

  Surname[n] := EditText.Text;
  EditText.clear;

  ShowList;
  EditText.SetFocus;
end;


procedure TForm1.bDeleteClick(Sender: TObject);
var
  i, j : Integer;
begin
  for i := 0 to ListSurname.Items.Count - 1 do
    if ListSurname.Selected[i] then
    begin
      for j:=i+1 to Length(Surname)-1 do
        Surname[j-1] := Surname[j];
      SetLength(Surname, Length(Surname) - 1);
    end;
  ListSurname.DeleteSelected();
  EditText.SetFocus;
end;


procedure TForm1.bEditClick(Sender: TObject);
begin
  Surname[ListSurname.ItemIndex] := EditText.Text;
  ListSurname.Items.Strings[ListSurname.ItemIndex] := EditText.Text;
  EditText.Clear;
  EditText.SetFocus;
end;


procedure TForm1.ListSurnameClick(Sender: TObject);
begin
  EditText.Text := ListSurname.Items.Strings[ListSurname.ItemIndex];
end;


procedure TForm1.ShowList;
var i: integer;
begin
  ListSurname.clear;
  for i := 0 to Length(Surname)-1 do
    ListSurname.Items.Add(Surname[i]);
end;

end.
