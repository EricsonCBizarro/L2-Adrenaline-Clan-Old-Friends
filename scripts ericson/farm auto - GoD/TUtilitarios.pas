unit TUtilitarios;

interface

implementation

procedure FtoVillageIfDeath;
begin
  Delay(100);
    if (User.HP=0) then
      begin
       Print('Char Morto');
       Delay(1000);
       Engine.GoHome;
       Engine.Facecontrol(0,False);
       Delay(5000);
       Print('To Vilage');
      end;
end;

procedure FIrSpotGemDragonMove;
begin
    Print('Movendo até os gem Dragon');
    Engine.MoveTo(73432, 117816, -3720);
    delay(500);
    Print('1 Pos');
    Engine.MoveTo(77192, 117288, -3760);
    delay(500);
    Print('2 Pos');
    Engine.MoveTo(79800, 115656, -3712);
    delay(500);
    Print('3 Pos');
    Engine.MoveTo(81096, 114424, -3576);
    delay(500);
    Print('4 Pos');
    Engine.MoveTo(82312, 113736, -3104);
    delay(500);
    Print('5 Pos');
    Engine.MoveTo(84632, 112296, -3056);
    delay(500);
    Print('6 Pos');
    Engine.MoveTo(87352, 112184, -3296);
    delay(500);
    Print('7 Pos');
    Engine.MoveTo(90088, 112696, -3024);
    delay(500);
    Print('8 Pos');
    Engine.MoveTo(92936, 112920, -3072);
    delay(500);
    Print('9 Pos');
    Engine.MoveTo(94616, 112760, -3024);
    delay(500);
        Print('6 Pos');
    Engine.MoveTo(87352, 112184, -3296);
    delay(500);
end;

procedure FFalaComSeparated;
begin
  engine.settarget(32864);
  delay(500);
  engine.dlgopen;
  delay(500);
  engine.dlgsel(2);
  delay(500);
end;

procedure FativaAutoFarm;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('13');
  delay(500);
  Engine.BypassToServer('00');
  delay(500);
  Print('Ativa auto farm');
end;

procedure FInvitePorPm;
begin
if (ChatMessage.Text = '102030') and ChatMessage.Unread then
  if (ChatMessage.ChatType = ctPrivate) then
    Engine.InviteParty(chatmessage.sender);
  end;
end.


end.
