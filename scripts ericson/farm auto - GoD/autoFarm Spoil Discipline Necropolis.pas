uses SysUtils,TBuff,TTeleport,TUtilitarios,TLoadingClass;

var Figth_Flag:boolean;
     Item: TL2Item;
     Npc: TL2Npc;
     Obj: TL2Buff;
     IdBuff: integer;
     Buffs:TL2Buff;
var L2Skill: TL2Skill;


procedure toVillageIfDeath;
begin
  TUtilitarios.FtoVillageIfDeath;
end;

// rebuffa
procedure Buff;
begin
   TBuff.FFighter;
   delay(500);
   RunTo;
end;

                                            
procedure toTeleportHunter;
begin
    TTeleport.FHunter;
    delay(500);
    Buff;
end;



procedure RunTo;
begin
     TTeleport.FNecropolisDiscipline;
     delay(500);
     Fight;
end;


procedure toBuff;
  begin
  IdBuff:= 1323 ; //Check BUFF
  toVillageIfDeath;
   while not User.Buffs.ById(IdBuff,obj) do begin
        Print('Sem Nobles');
        toVillageIfDeath;
        Engine.Facecontrol(0,False);
        toTeleportHunter;
   end;
end;


procedure Fight;
   begin
    Print('Fight zone');
    Engine.MoveTo(111640, 174888, -5432);
    Engine.MoveTo(113416, 174968, -5416);
    TLoadingClass.FSpoilNecropolisWorkshipers;
    Print('Start Farm!');
    Engine.Facecontrol(0,True);
end;


//-----------------------------------------------------------------------------
begin    //repete novamente o script
Print('repete novamente');
  repeat
   toVillageIfDeath;
   toBuff;
   TUtilitarios.FInvitePorPm;
  until Engine.Status = lsOffline;
  Delay(5000);
end.