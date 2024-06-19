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

                                            
procedure TeleportHunter;
begin
    TTeleport.FHunter;
    delay(500);
    Buff;
end;



procedure RunTo;
begin
     TTeleport.FDragonValeyEntrance;
     delay(500);
     Fight;
end;


procedure toBuff;
  begin
  IdBuff:= 1323 ; //Check BUFF
   while not User.Buffs.ById(IdBuff,obj) do begin
        Print('Sem Nobles');
        Engine.Facecontrol(0,False);
        TeleportHunter;
   end;
end;


procedure Fight;
   begin
   Print('Fight zone');
    Engine.MoveTo(73832, 117736, -3744);
    Print('Primeira Zona');
    Delay(1000);
    Engine.MoveTo(75112, 117560, -3752);
    Print('Segunda Zona');
    Delay(1000);
    Engine.MoveTo(77704, 116968, -3800);
    Print('Terceira Zona');
    Delay(1000);
    Engine.MoveTo(79880, 116296, -3648);
    Delay(1000);
    Print('Quarta Zona');
    Engine.MoveTo(82728, 117288, -3056);
    Delay(1000);
    Print('Quinta Zona');
    TLoadingClass.FSPH;    //COLOCA NOME DO CHAR AQUI
    Engine.LoadZone('Drakosprimeirasubida.zmap');   //NOME DA ZONA DO MAPA AQUI
    Print('FEITO!');
    Engine.Facecontrol(0,True);
end;


//-----------------------------------------------------------------------------
begin    //repete novamente o script
Print('repete novamente');
  repeat
   toBuff;
   toVillageIfDeath;
  until Engine.Status = lsOffline;
  Delay(5000);
end.