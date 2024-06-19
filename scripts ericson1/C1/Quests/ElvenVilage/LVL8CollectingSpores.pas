unit  LVL8CollectingSpores;

interface

const
  herbiel = 7150;
  questItemId = 1118;
  questId = 313;

procedure  LVL8CollectingSpores;

implementation
var quantidadeQuestFeitas: Integer;
{
  Collecting Spores - Elven Vilage
  Level: 8
  Start Location: Elven Vilage - Grocery
  Start Npc: Herbiel
  Races: All
  Classes: All
  Repeatable: No (Party)
  Reward: 2000 Adena; ? Experience;
  Prerequisite: LVL 8
  Required materials: No
}

procedure moveToGroceryElvenVilage;
begin
    while not (User.InRange (42832, 50075, -2980, 200)) do
    begin
       Engine.MoveTo (44738, 49747, -3056);
       Engine.MoveTo (43359, 50442, -2992);
       Engine.MoveTo (43031, 50038, -2981);
       Engine.MoveTo (42832, 50075, -2980);
    end;
end;

procedure pegandoQuest;
begin
    Engine.settarget(herbiel);
    Engine.DlgOpen;
    Delay (500);
    Engine.DlgSel ('Quest');
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
    Engine.DlgSel (1);
    Delay (500);
end;

procedure movendoParaSpot;
begin
  Engine.MoveTo(42914, 50649, -2984);
  Delay (500);
  Engine.MoveTo(42913, 51193, -2992);
  Delay (500);  
  Engine.MoveTo(42019, 51869, -3016);
  Delay (500);
  Engine.MoveTo(40562, 52983, -3256);
  Delay (500);
  Engine.MoveTo(40819, 53861, -3304);
  Delay (500);
  Engine.MoveTo(42024, 56669, -3648);
  Delay (500);
  Engine.MoveTo(42815, 58504, -3672);
  Delay (500);
  Engine.MoveTo(41859, 59476, -3568);
  Delay (500);
  Engine.MoveTo(39698, 60227, -3592);
  Delay (500);
  Engine.MoveTo(38537, 60272, -3552);
  Delay (500);
  Engine.MoveTo(37345, 60235, -3584);
  Delay (500);
  Engine.MoveTo(34381, 59895, -3721);
end;


procedure movendoCidade;
begin
  Engine.MoveTo(25794, 64669, -3660);
  Delay (500);
  Engine.MoveTo(27564, 63160, -3586);
  Delay (500);
  Engine.MoveTo(29178, 62419, -3717);
  Delay (500);
  Engine.MoveTo(30930, 60948, -3464);
  Delay (500);
  Engine.MoveTo(33494, 58762, -3679);
  Delay (500);
  Engine.MoveTo(35250, 57067, -3658);
  Delay (500);

  if (User.InRange (37345, 60235, -3584, 1000))  then begin
    Engine.MoveTo(37345, 60235, -3584);
    Delay (500);
    Engine.MoveTo(36982, 58862, -3648);
    Delay (500);
    Engine.MoveTo(36376, 56651, -3664);
    Delay (500);
    Engine.MoveTo(36155, 55622, -3536);
    Delay (500);
    Engine.MoveTo(36130, 54336, -3496);
    Delay (500);
    Engine.MoveTo(36531, 53598, -3576);
    Delay (500);
  end;

  if (User.InRange (26280, 56496, -3282, 1000))  then begin
    Engine.MoveTo(26280, 56496, -3282);
    Delay (500);
    Engine.MoveTo(28425, 55919, -3218);
    Delay (500);
    Engine.MoveTo(31524, 55323, -3496);
    Delay (500);
    Engine.MoveTo(34068, 54916, -3546);
    Delay (500);
    Engine.MoveTo(36130, 54336, -3496);
    Delay (500);
    Engine.MoveTo(36337, 54416, -3487);
    Delay (500);
    Engine.MoveTo(37258, 54511, -3512);
    Delay (500);
  end;

  if (User.InRange (27243, 56905, -3215, 1000))  then begin
    Engine.MoveTo(27243, 56905, -3215);
    Delay (500);
    Engine.MoveTo(29572, 56501, -3299);
    Delay (500);
    Engine.MoveTo(31764, 55927, -3531);
    Delay (500);
    Engine.MoveTo(33886, 55229, -3564);
    Delay (500);
    Engine.MoveTo(36198, 54397, -3495);
    Delay (500);
  end;

  if (User.InRange (25804, 55366, -3258, 1000))  then begin
    Engine.MoveTo(25804, 55366, -3258);
    Delay (500);
    Engine.MoveTo(27749, 55148, -3175);
    Delay (500);
    Engine.MoveTo(29079, 55100, -3284);
    Delay (500);
    Engine.MoveTo(30514, 55160, -3341);
    Delay (500);
    Engine.MoveTo(32555, 54825, -3504);
    Delay (500);
  end;


  Engine.MoveTo(38071, 54940, -3483);
  Delay (500);
  Engine.MoveTo(38101, 53966, -3600);
  Delay (500);
  Engine.MoveTo(40703, 52809, -3224);
  Delay (500);
  Engine.MoveTo(41763, 52043, -3032);
  Delay (500);
  Engine.MoveTo(42882, 51188, -2992);
  Delay (500);
  Engine.MoveTo(42912, 50633, -2984);
  Delay (500);
  Engine.MoveTo(42847, 50061, -2976);  
end;


procedure finalizandoQuest;
begin
  Engine.SetTarget(herbiel);
  Engine.DlgOpen;
	Delay (500);
	Engine.DlgSel ('Quest');
	Delay (500);
	Engine.DlgSel(3);
	Delay (500);
  Print('Quest entregue, Recompensa de Adena 2.000 coletada');
  quantidadeQuestFeitas := quantidadeQuestFeitas + 1;
  Print('Quantidade de Quests Feitas:');
  Print(quantidadeQuestFeitas);
end;


procedure collectingSporesQuest;
var 
	index: Integer;
	item:TL2Item;
	tempStr:string;
	lastsporecount:Integer;
begin	
 	Engine.FaceControl(0, true);
	while not inventory.Quest.ByID(questItemId, item) or (item.count < 10) do begin
    if(User.Dead) then begin
      Print('Stop bot');
      Engine.FaceControl(0, false);
      Delay (500);
      Print('Go to town');
      Engine.GoHome;
      Delay (5000);
      moveToGroceryElvenVilage;
      movendoParaSpot;
    end;

		if(lastsporecount <> item.count) then begin
			Print('Ainda falta itens, tem: ');
			Print(item.count);
		end;
    
		lastsporecount:= item.count;	
		if(User.Dead) then begin
		  Engine.FaceControl(0, false);
			exit;
      Print('Char Morto');
		end;
	end;
	
	if (item.count = 10) then begin
	  Print('Todos os 10 itens coletados.');
	  exit;
	end;
end;

procedure  LVL8CollectingSpores;
var
  i: integer;
begin

Print('Iniciando Quest Collecting Spores para LVL 8');
Print('Level atual do personagem:');
Print(User.Level);

if (User.Level>7) then
  begin
  Print('Verificando oque fazer..');
  if (User.InRange (27652, 56245, -3173, 10000))  then begin
    Print('Char na Zona de drop de Itens');
    collectingSporesQuest;
    Engine.FaceControl(0, false);
    Print('Movendo para cidade Elven Vilage');
    movendoCidade;
    Print('Falando com NPC:');
    Print('Herbiel');
    finalizandoQuest;
    while not (User.InRange (42832, 50075, -2980, 200)) do
    begin
      LVL8CollectingSpores;
    end;
  end;
  if (User.InRange (44738, 49747, -3056, 2000))  then begin
    Print('Movendo para localizacao do NPC:');
    Print('Herbiel');
    moveToGroceryElvenVilage;
    Print('Falando com NPC:');
    Print('Herbiel');
    pegandoQuest;
    Print('Movendo para zona de item Drop');
    movendoParaSpot;
    Print('Iniciando Bot');
    collectingSporesQuest;
    Engine.FaceControl(0, false);
    Print('Movendo para cidade Elven Vilage');
    movendoCidade;
    Print('Falando com NPC:');
    Print('Herbiel');
    finalizandoQuest;
    while not (User.InRange (42832, 50075, -2980, 200)) do
    begin
      LVL8CollectingSpores;
    end;
  end;
end;
end;


begin
    //Para testar separadament
    // moveToGroceryElvenVilage
    // movendoParaSpot
    // Para testar Comenta esse aqui
    repeat
       LVL8CollectingSpores;
    until Engine.Status = lsOffline;
    Delay(5000);
end.
