unit mapeditor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls,Graphics, ExtCtrls,RPGTypes;

type

  { TMapEditorFrame }

  TMapEditorFrame = class(TFrame)
    MapPaint: TPaintBox;
    ScrollBox1: TScrollBox;
    procedure ScrollBox1Click(Sender: TObject);
  private

  public

  end;

implementation

{$R *.lfm}

{ TMapEditorFrame }

procedure TMapEditorFrame.ScrollBox1Click(Sender: TObject);
begin

end;

end.

