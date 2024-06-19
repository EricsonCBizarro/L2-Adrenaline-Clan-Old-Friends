unit  LVL3sacrificetothesea;

interface

const
  Darin = 7048;
  Roxxy = 7006;
  Baulro = 7033;
  Arnold = 7041;
  Jackson = 7002;
  Silvia = 7003;
  Rant = 7054;
  Rockswell = 7312;


procedure  LVL3sacrificetothesea;

implementation
{
  Sacrifice To The Sea
  Level: 3
  Start Location: Talking Island - Farol Leste da vila
  Start Npc: Rockswell
  Races: All
  Classes: All
  Repeatable: No (Party)
  Reward: 400 Adena; 1100 Experience;
  Prerequisite: LVL 3
  Required materials: No
}
procedure  LVL3sacrificetothesea;
var
  i: integer;
begin

Print('Iniciando Quest Sacrifice To The Sea para LVL 3');
Print('Level atual do personagem:');
Print(User.Level);

if (User.Level=3) then
  begin
    Print('Movendo para localiza��o do NPC:');
    Print('Rockswell');
    while not (User.InRange (-82335, 244781, -3728, 200)) do
    begin
       Engine.MoveTo (-82335, 244781, -3728);
    end;
    Print('Falando com NPC:');
    Print('Rockswell');
    Engine.settarget(Rockswell);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Print('Movendo para zona de item Drop');

  end;
end;

BEGIN
    User
   //  LVL3sacrificetothesea
END.
