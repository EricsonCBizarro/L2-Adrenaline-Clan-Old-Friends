unit TBuff;

interface

implementation

procedure FMage;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet mage 0 0');
  delay(500);
  Print('Buff TMage');
end;

procedure FMageFarm;
begin
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_cast 318 x x');
  delay(500);
  Print('Buff TMage');
end;

procedure FFighter;
begin
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet figher 0 0');
  delay(500);
  Print('Buff TFighter');
end;

procedure FSchemeFarm;
begin
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_cast 69 x x');
  delay(500);
  Print('Buff TScheme');
end;

procedure FSchemeFarmPolero;
begin
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_cast 111 x x');
  delay(500);
  Print('Buff TScheme');
end;



procedure FSchemeFarmPikena;
begin
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_cast 153 x x');
  delay(500);
  Print('Buff TScheme');
end;



end.

