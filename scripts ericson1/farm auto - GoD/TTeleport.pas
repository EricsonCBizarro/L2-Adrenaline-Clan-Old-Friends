unit TTeleport;

interface

implementation

procedure FHunter;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_15_1');
  Print('Indo para Hunter');
  delay(5000);
end;


procedure FDragonValeyEntrance;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-18');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_32_8');
  Print('Indo para FDragonValeyEntrance');
  delay(5000);
end;

procedure FAnomicFoundyUltimoSpot;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_52_5');
  delay(500);
  Print('Indo para Anomic Foundy');
  delay(5000);
end;


procedure FDragonValeyCenter;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_bbspage:teleport/special');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_37_2');
  delay(500);
  Print('Indo para Anomic Foundy');
  delay(5000);
end;


procedure FNecropolisDevotion;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-25');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_50_5');
  delay(500);
  Print('Indo para Necropolis Devotion');
  delay(5000);
end;

procedure FNecropolisWorkshipers;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-25');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_50_3');
  delay(500);
  Print('Indo para Necropolis Devotion');
  delay(5000);
end;


end.