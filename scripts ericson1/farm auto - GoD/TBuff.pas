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
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_cast 3329 x x');
  delay(500);
  Print('Buff TMage');
end;

procedure FFighter;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet figher 0 0');
  delay(500);
  Print('Buff TFighter');
end;

end.

