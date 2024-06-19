unit Settings;

function BoolToStr;
begin
   if value then
    Result := 'True'
   else
    Result := 'False';
end; 

BEGIN
  Pring(BoolToStr);
END.