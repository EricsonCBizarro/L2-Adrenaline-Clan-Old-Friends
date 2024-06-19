unit Utilitarios;

interface

uses SysUtils;


function ItemCount(id: integer): int64;  overload;     // counting items by ID
var i: integer;
begin
  result:= 0;                                          
  for i:= 0 to Inventory.User.Count-1 do begin         // running over the user's inventory
    if (Inventory.User.Items(i).ID = id) then          // if id matched, then
      Inc(result, Inventory.User.Items(i).Count);      // increase the result by the number of items in the stack
  end; 
  for i:= 0 to Inventory.Quest.Count-1 do begin        // similarly for quest inventory
    if (Inventory.Quest.Items(i).ID = id) then
      Inc(result, Inventory.Quest.Items(i).Count); 
  end;
end;

function ItemCount(const Name: string): int64;  overload;   // counting items by name
var i: integer;
begin
  result:= 0;
  for i:= 0 to Inventory.User.Count-1 do begin         // running over the user's inventory
    if (Inventory.User.Items(i).Name = Name) then      // if names matched, then
      Inc(result, Inventory.User.Items(i).Count);      // increase the result by the number of items in the stack
  end; 
  for i:= 0 to Inventory.Quest.Count-1 do begin        // similarly for quest inventory
    if (Inventory.Quest.Items(i).Name = Name) then
      Inc(result, Inventory.Quest.Items(i).Count); 
  end;
end;