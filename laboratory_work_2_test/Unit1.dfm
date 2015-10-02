object Form1: TForm1
  Left = 191
  Top = 52
  Width = 832
  Height = 616
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 79
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1072#1081#1083
  end
  object lbl1: TLabel
    Left = 24
    Top = 280
    Width = 44
    Height = 13
    Caption = 'Name Dir'
  end
  object lbl2: TLabel
    Left = 160
    Top = 280
    Width = 47
    Height = 13
    Caption = 'Name File'
  end
  object FileListBox1: TFileListBox
    Left = 24
    Top = 176
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 24
    Top = 72
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object DriveComboBox1: TDriveComboBox
    Left = 24
    Top = 40
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 176
    Top = 40
    Width = 145
    Height = 21
    FileList = FileListBox1
    Filter = 'All files (*.*)|*.*|docx|*.docx|png|*.png|jpg|*.jpg'
    TabOrder = 3
  end
  object FileListBox2: TFileListBox
    Left = 328
    Top = 176
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object DirectoryListBox2: TDirectoryListBox
    Left = 328
    Top = 72
    Width = 145
    Height = 97
    FileList = FileListBox2
    ItemHeight = 16
    TabOrder = 5
  end
  object DriveComboBox2: TDriveComboBox
    Left = 328
    Top = 40
    Width = 145
    Height = 19
    DirList = DirectoryListBox2
    TabOrder = 6
  end
  object Button1: TButton
    Left = 160
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Copy/Create'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 328
    Width = 75
    Height = 25
    Caption = 'CreateDir'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 160
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Button3: TButton
    Left = 160
    Top = 368
    Width = 75
    Height = 25
    Caption = 'DeleteFile'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 368
    Width = 75
    Height = 25
    Caption = 'DeleteDir'
    TabOrder = 12
    OnClick = Button4Click
  end
end
