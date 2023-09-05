unit TileSelector;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, ComCtrls, ExtCtrls, StdCtrls;

type

  { TTileSelectorFrame }

  TTileSelectorFrame = class(TFrame)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    TileTools: TToolBar;
  private

  public

  end;

implementation

{$R *.lfm}

end.

