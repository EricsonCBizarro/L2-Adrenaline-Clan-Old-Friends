unit  LVL2lettersoflove;

interface

const
  Darin = 7048;
  Roxxy = 7006;
  Baulro = 7033;
  
procedure  LVL2lettersoflove;

implementation
{
  Letters Of Love
  Level: 2
  Start Location: Talking Island
  Start Npc: Darin
  Races: All
  Classes: All
  Repeatable: No (Party)
  Reward: 450 Adena;
  Prerequisite: LVL 2
  Required materials: No
}
procedure  LVL2lettersoflove;
var
  i: integer;
begin

Print('Iniciando Quest Letters Of Love para LVL 2');
Print('Level atual do personagem:');
Print(User.Level);

if (User.Level=2) then  
  begin
    Print('Movendo para localiza��o do NPC:');
    Print('Darin');
    while not (User.InRange (-84505, 242721, -3730, 200)) do
    begin
       Engine.MoveTo (-84505, 242721, -3730);
    end;
    Print('Falando com NPC:');
    Print('Darin');
    Engine.settarget(Darin);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Roxxy');
    while not (User.InRange (-84234, 244540, -3730, 200)) do
    begin
       Engine.MoveTo (-85126, 243974, -3730);  
       Engine.MoveTo (-84234, 244540, -3730);
    end;
    Print('Falando com NPC:');
    Print('Roxxy');
    Engine.settarget(Roxxy);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Darin');
    while not (User.InRange (-84505, 242721, -3730, 200)) do
    begin
       Engine.MoveTo (-85126, 243974, -3730);
       Engine.MoveTo (-84505, 242721, -3730);
    end;
    Print('Falando com NPC:');
    Print('Darin');
    Engine.settarget(Darin);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Baulro');
    while not (User.InRange (-84775, 245004, -3728, 200)) do
    begin
       Engine.MoveTo (-85126, 243974, -3730);
       Engine.MoveTo (-85444, 244517, -3730);
       Engine.MoveTo (-84775, 245004, -3728);
    end;
    Print('Falando com NPC:');
    Print('Baulro');
    Engine.settarget(Baulro);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Movendo para localiza��o do NPC:');
    Print('Darin');
    while not (User.InRange (-84505, 242721, -3730, 200)) do
    begin
       Engine.MoveTo (-85444, 244517, -3730);
       Engine.MoveTo (-85126, 243974, -3730);
       Engine.MoveTo (-84505, 242721, -3730);
    end;
    Print('Falando com NPC:');
    Print('Darin');
    Engine.settarget(Darin);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Print('Quest Letters Of Love finalizada');
  end;
end;


BEGIN
   LVL2lettersoflove;
END.