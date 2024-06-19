uses SysUtils,TBuff,TTeleport,TUtilitarios,TLoadingClass;

var Figth_Flag:boolean;
     Item: TL2Item;
     Npc: TL2Npc;
     Obj: TL2Buff;
     IdBuff: integer;
     Buffs:TL2Buff;
var L2Skill: TL2Skill;

procedure toHunter;
begin
    TTeleport.FHunter;
    delay(5000);
end;


procedure toDragonValey;
begin
    TTeleport.FDragonValeyEntrance;
    delay(5000);
end;


procedure toMove;
begin
    TUtilitarios.FIrSpotGemDragonMove;
end;

//-----------------------------------------------------------------------------
begin
toMove;
end.