unit TLoadingClass;

interface

implementation


procedure FSPH;
begin
  Engine.LoadConfig('DrakosScriptFarmSPH');
  Delay(500);
end;


procedure FBSFarmAnomic;
begin
  Engine.LoadConfig('BS Anomic Foundy');
  Delay(500);
end;


procedure FBSFarmAnomic2;
begin
  Engine.LoadConfig('BS Anomic Foundy Spot 2');
  Delay(500);
end;


procedure FSpoilNecropolisDevotion;
begin
  Engine.LoadConfig('Spoil Necropolis Devotion');
  Engine.LoadZone('NecropolisOfDevotionANIMALBONE.zmap');
  Delay(500);
end;


procedure FSpoilNecropolisDiscipline;
begin
  Engine.LoadConfig('Spoil Necropolis Discipline');
  Delay(500);
end;


procedure FPoleChimera;
begin
  Engine.LoadConfig('Poleiro Chimera');
  Delay(500);
  Engine.LoadZone('ChimeraBaixo.zmap');
  Delay(500);
end;


procedure FSpoilCatacombBranded;
begin
  Engine.LoadConfig('Spoil Catacomb Branded');
  Delay(500);
end;


procedure FSpoilNecropolisWorkshipers;
begin
  Engine.LoadConfig('Spoil Worship');
  Delay(500);
end;


procedure FSpwGemDragon;
begin
  Engine.LoadConfig('Spw Gem Dragon');
  Delay(500);
end;


procedure FSpoilDrakosAssassin;
begin
  Engine.LoadConfig('Spoil Drakos Assassin Center');
  Delay(500);
end;


procedure FSpoilKnoriks;
begin
  Engine.LoadConfig('Spoil Knoriks');
  Delay(500);
end;

end.