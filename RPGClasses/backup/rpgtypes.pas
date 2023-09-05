unit RPGTypes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils,BGRABitmap,fgl;
type

  { TRPGTile }

  TRPGTile = class(TCollectionItem)
    private
    public
      TileBitmap:TBGRABitmap;
      TileName:String;
      TileID:LongInt;
      constructor Create(ACollection:TCollection);override;
  end;

  { TTileList }

  { TRPGTileList }

  TRPGTileList = class(TCollection)
  private
    function GetItems(Index: integer): TRPGTile;
    procedure SetItems(Index: integer; AValue: TRPGTile);
  public
    constructor Create;
  public
    function Add: TRPGTile;
    function Add(Bitmap:TBGRABitmap): TRPGTile;
    function Add(ID:LongInt; Name:String; Bitmap:TBGRABitmap): TRPGTile;
    property Items[Index: integer]: TRPGTile read GetItems write SetItems; default;
  end;
implementation

{ TRPGTile }

constructor TRPGTile.Create(ACollection: TCollection);
begin
  if Assigned(ACollection) then
    inherited Create(ACollection);
end;

{ TRPGTileList }

function TRPGTileList.GetItems(Index: integer): TRPGTile;
begin
  Result:=TRPGTile(inherited Items[Index]);
end;

procedure TRPGTileList.SetItems(Index: integer; AValue: TRPGTile);
begin
  Items[Index].Assign(AValue);
end;

constructor TRPGTileList.Create;
begin
  inherited Create(TRPGTile);
end;

function TRPGTileList.Add: TRPGTile;
begin
  Result := inherited Add as TRPGTile;
end;

function TRPGTileList.Add(Bitmap: TBGRABitmap): TRPGTile;
begin
  Result := inherited Add as THairItem;
  Result.TileBitmap:=Bitmap;
end;

function TRPGTileList.Add(ID: LongInt; Name: String; Bitmap: TBGRABitmap
  ): TRPGTile;
begin
  Result := inherited Add as THairItem;
  Result.TileBitmap:=Bitmap;
  Result.TileID:=ID;
  Result.TileName:=Name;
end;


end.

