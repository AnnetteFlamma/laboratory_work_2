unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, ShellApi;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Label1: TLabel;
    FileListBox2: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    DriveComboBox2: TDriveComboBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
//    procedure FileListBox2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    function DeleteDir(Dir  : string):boolean;

implementation

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
begin
   CopyFile(PChar(FileListBox1.FileName),PChar(DirectoryListBox1.Directory+'\'+edit2.Text),false);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   CreateDir( PChar(DirectoryListBox1.Directory)+'\'+PChar(edit1.text)+'\');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DeleteFile(Pchar(FileListBox1.FileName));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if(DeleteDir(pChar(DirectoryListBox1.Directory+'\'))) then
   showmessage('�������');
end;

function DeleteDir(Dir  : string):boolean;
Var Found  : integer;
      SearchRec : TSearchRec;
begin  
result:=false;  
if IOResult<>0 then ;  
ChDir(Dir); 
 if IOResult<>0 then 
begin   ShowMessage('�� ���� ����� � �������: '+Dir); exit;  end; 
Found := FindFirst('*.*', faAnyFile, SearchRec);  
while Found = 0 do  begin 
  if (SearchRec.Name<>'.')and(SearchRec.Name<>'..') then   
 if (SearchRec.Attr and faDirectory)<>0 then
 begin   
  if not DeleteDir(SearchRec.Name) then 
exit;   
 end
 else     if not DeleteFile(SearchRec.Name) then 
begin     
 ShowMessage('�� ���� ������� ����: '+SearchRec.Name);
 exit;     
end;  
  Found := FindNext(SearchRec);  
end; 
 FindClose(SearchRec);  ChDir('..'); RmDir(Dir);
  result:=IOResult=0;
end; 


end.
