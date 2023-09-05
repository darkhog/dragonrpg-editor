unit mnfrm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls, BCGameGrid, BGRAVirtualScreen, BGRAGraphicControl,
  BGRAImageManipulation, tileselector, mapeditor,LCLType;

type

  { TMain }

  TMain = class(TForm)
    MapEditorFrame1: TMapEditorFrame;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    ToolbarImages: TImageList;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    NewProjectItem: TMenuItem;
    MenuItem3: TMenuItem;
    DatabaseItem: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    OpenProjectItem: TMenuItem;
    SaveProjectItem: TMenuItem;
    ExitItem: TMenuItem;
    Separator1: TMenuItem;
    Panel1: TPanel;
    Splitter1: TSplitter;
    status: TStatusBar;
    TileSelector: TTileSelectorFrame;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure NewProjectItemClick(Sender: TObject);
    procedure statusResize(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
  private

  public

  end;

var
  Main: TMain;

implementation

{$R *.lfm}

{ TMain }

procedure TMain.statusResize(Sender: TObject);
var
  fullwidth:LongInt;
  sp:TCollectionItem;
begin
  fullwidth:=0;
  for sp in status.Panels do
  begin
    fullwidth+=(sp as TStatusPanel).Width;
  end;
  fullwidth := fullwidth - status.Panels.Items[0].width;

  status.Panels.Items[0].width:=Status.Width-fullwidth;
end;

procedure TMain.NewProjectItemClick(Sender: TObject);
begin
  Application.MessageBox('New project?!','Cute!',MB_OK+MB_ICONINFORMATION);
end;

procedure TMain.ToolBar1Click(Sender: TObject);
begin

end;

end.

