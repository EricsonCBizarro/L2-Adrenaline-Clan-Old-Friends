unit  LVL2delivergoods;

interface

const
  Darin = 7048;
  Roxxy = 7006;
  Baulro = 7033;
  Arnold = 7041;
  Jackson = 7002;
  Silvia = 7003;
  Rant = 7054;
  

procedure  LVL2delivergoods;

implementation
{
  Deliver Goods
  Level: 2
  Start Location: Talking Island
  Start Npc: Darin
  Races: All
  Classes: All
  Repeatable: No (Party)
  Reward: 600 Adena;
  Prerequisite: LVL 2
  Required materials: No
}
procedure  LVL2delivergoods;
var
  i: integer;
begin

Print('Iniciando Quest Letters Of Love para LVL 2');
Print('Level atual do personagem:');
Print(User.Level);

if (User.Level=2) then
  begin
    Print('Movendo para localiza��o do NPC:');
    Print('Arnold');
    while not (User.InRange (-82335, 244781, -3728, 200)) do
    begin
       Engine.MoveTo (-82335, 244781, -3728);
    end;
    Print('Falando com NPC:');
    Print('Arnold');
    Engine.settarget(Arnold);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Jackson');
    while not (User.InRange (-86646, 242958, -3722, 200)) do
    begin
       Engine.MoveTo (-84673, 243270, -3730);
       Engine.MoveTo (-86222, 242927, -3722);
       Engine.MoveTo (-86646, 242958, -3722);
    end;
    Print('Falando com NPC:');
    Print('Jackson');
    Engine.settarget(Jackson);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Silvia');
    end;
    while not (User.InRange (-83830, 240826, -3720, 200)) do
    begin
       Engine.MoveTo (-86430, 242569, -3730);
       Engine.MoveTo (-86024, 341565, -3730);
       Engine.MoveTo (-84694, 241704, -3730);
       Engine.MoveTo (-83923, 241075, -3721);
       Engine.MoveTo (-83830, 240826, -3720);
    end;
    Print('Falando com NPC:');
    Print('Jackson');
    Engine.settarget(Silvia);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    while not (User.InRange (-81920, 243884, -3716, 200)) do
    begin
       Engine.MoveTo (-83923, 241075, -3721);
       Engine.MoveTo (-83169, 241275, -3730);
       Engine.MoveTo (-82083, 243661, -3716);
       Engine.MoveTo (-81920, 243884, -3716);
    end;
    Print('Falando com NPC:');
    Print('Rant');
    Engine.settarget(Rant);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Arnold');
    while not (User.InRange (-82335, 244781, -3728, 200)) do
    begin
       Engine.MoveTo (-82083, 243661, -3716);
       Engine.MoveTo (-83310, 244050, -3730);
       Engine.MoveTo (-82335, 244781, -3728);
    end;
    Print('Falando com NPC:');
    Print('Arnold');
    Engine.settarget(Arnold);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Quest Deliver Goods finalizada');
end;


BEGIN
 Engine.MoveTo (-82335, 244781, -3728);
   //LVL2delivergoods;
END.