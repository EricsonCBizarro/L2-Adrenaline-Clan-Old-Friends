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

procedure FSPHGemDragonCenter;
begin
  Engine.LoadConfig('SPH Gem Dragon');
  Delay(500);
end;

procedure FSpoilNecropolisDevotion;
begin
  Engine.LoadConfig('Spoil Necropolis Devotion');
  Engine.LoadZone('NecropolisOfDevotionANIMALBONE.zmap');
  Delay(500);
end;

procedure FSpoilNecropolisWorkshipers;
begin
  Engine.LoadConfig('Spoil Worship');
  Delay(500);
end;

end.