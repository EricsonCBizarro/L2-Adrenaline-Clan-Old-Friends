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
   TBuff.FMage;
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
     TTeleport.FAnomicFoundyUltimoSpot;
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
    Engine.MoveTo(26936, 247352, -3216);
    Print('Primeira Zona');
    Delay(1000);
    Engine.MoveTo(27800, 245096, -3680);
    Print('Segunda Zona');
    Engine.MoveTo(28296, 243800, -3696);
    Print('Segunda Zona');
    TLoadingClass.FBSFarmAnomic;    //COLOCA NOME DO CHAR AQUI
    Print('Start Farm!');
    Engine.Facecontrol(0,True);
end;

procedure toInvite;
   begin
   TUtilitarios.FInvitePorPm;
end;


//-----------------------------------------------------------------------------
begin    //repete novamente o script
Print('repete novamente');
  repeat
   toVillageIfDeath;
   toBuff;
   toInvite;
  until Engine.Status = lsOffline;
  Delay(5000);
end.