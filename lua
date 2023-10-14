local Activation_Key = 5 -- key to activate / deactivate the script, default 4 = G4
local Selection_Key = 8 -- Key to choose weapons, default 6 = precision key
-- [[ KEYS SETUP ]] --

-- [[ PATTERNS ]] --
local AK47_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 0, y = 7 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = -2, y = 8 }, { x = 1, y = 7 }, { x = 3, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 0, y = 7 }, { x = 1, y = 7 }, { x = 2, y = 7 }, { x = 2, y = 8 }, { x = 2, y = 8 }, { x = 2, y = 9 }, { x = -3, y = -4 }, { x = -8, y = -1 }, { x = -15, y = -1 }, { x = -15, y = -1 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -1, y = 1 }, { x = 4, y = 2 }, { x = 4, y = 2 }, { x = 5, y = 1 }, { x = -5, y = 1 }, { x = -5, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 0 }, { x = -5, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = 6, y = 1 }, { x = 8, y = 2 }, { x = 14, y = 2 }, { x = 15, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = 1, y = 1 }, { x = 5, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = -1 }, { x = 10, y = -1 }, { x = 10, y = -2 }, { x = 10, y = -3 }, { x = 0, y = -5 }, { x = 0, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 3, y = 1 }, { x = 3, y = -1 }, { x = 3, y = -1 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -7, y = 0 }, { x = -7, y = 0 }, { x = -8, y = 0 }, { x = -8, y = -2 }, { x = -15, y = -3 }, { x = -16, y = -5 }, { x = -18, y = -7 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}

local M4A4_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = -1, y = 9 }, { x = 0, y = 8 }, { x = 1, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 1, y = 8 }, { x = 2, y = 7 }, { x = 2, y = 7 }, { x = 3, y = 4 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 1, y = 1 }, { x = 0, y = 1 }, { x = -3, y = 1 }, { x = -5, y = 1 }, { x = -8, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = 1, y = -1 }, { x = 1, y = -1 }, { x = 2, y = -1 }, { x = 2, y = 2 }, { x = 2, y = 2 }, { x = 2, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -4, y = -1 }, { x = -4, y = -1 }, { x = -2, y = 1 }, { x = 2, y = 1 }, { x = 4, y = 1 }, { x = 8, y = 0 }, { x = 14, y = 0 }, { x = 18, y = 0 }, { x = 0, y = 0 }, { x = -2, y = 0 }, { x = 0, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 0, y = -1 }, { x = 2, y = -1 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -3, y = 2 }, { x = -3, y = 1 }, { x = 4, y = 2 }, { x = 8, y = 1 }, { x = 12, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 },
}
local M4A1_Pattern = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = -1, y = 2 }, { x = -1, y = 3 }, { x = 0, y = 3 }, { x = -1, y = 4 }, { x = 1, y = 4 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = -2, y = 5 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = 0, y = 4 }, { x = 0, y = 4 }, { x = 2, y = 4 }, { x = 4, y = 4 }, { x = 5, y = 4 }, { x = 5, y = 4 }, { x = 0, y = 0 }, { x = 1, y = 0 }, { x = 2, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 3 }, { x = -2, y = 4 }, { x = -2, y = 0 }, { x = -1, y = -2 }, { x = -1, y = 2 }, { x = -2, y = 3 }, { x = -2, y = 5 }, { x = -2, y = 0 }, { x = -5, y = 0 }, { x = -6, y = 0 }, { x = -7, y = -2 }, { x = -6, y = -2 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
-- local FAMAS_Pattern = { 
--    { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -1, y = 1 }, { x = -1, y = 3 }, { x = -1, y = 3 }, { x = -2, y = 2 }, { x = -2, y = 3 }, { x = -1, y = 4 }, { x = -1, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 1, y = 5 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 3, y = 2 }, { x = 3, y = 2 }, { x = 4, y = 3 }, { x = 5, y = 4 }, { x = 1, y = 4 }, { x = -2, y = 3 }, { x = -3, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 0 }, { x = 1, y = 1 }, { x = 2, y = 0 }, { x = 3, y = 1 }, { x = 4, y = 1 }, { x = 4, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = -1 }, { x = 5, y = -1 }, { x = 0, y = -1 }, { x = 1, y = -1 }, { x = 3, y = -2 }, { x = 5, y = -2 }, { x = 0, y = 0 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = -2, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 2, y = 0 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -1 },
-- }
-- local MP9_Pattern = { 
--    { x = 0, y = 1 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 5 }, { x = 0, y = 5 }, { x = 1, y = 5 }, { x = 1, y = 6 }, { x = 1, y = 7 }, { x = 1, y = 7 }, { x = 0, y = 7 }, { x = -2, y = 8 }, { x = -3, y = 8 }, { x = 0, y = 9 }, { x = 3, y = 9 }, { x = 3, y = 7 }, { x = 5, y = 0 }, { x = 7, y = 1 }, { x = 7, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 0 }, { x = 4, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -5, y = 1 }, { x = -6, y = 3 }, { x = -6, y = 2 }, { x = -5, y = 2 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -8, y = -3 }, { x = -8, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 3, y = -2 }, { x = 5, y = -1 }, { x = 7, y = 0 }, { x = 7, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -5, y = 1 }, { x = -5, y = 2 }, { x = -7, y = 2 }, { x = -7, y = 2 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
-- }
local MAC10_Pattern = { 
   { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 3 }, { x = 2, y = 5 }, { x = 3, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 0, y = 6 }, { x = 0, y = 6 }, { x = -2, y = 6 }, { x = -2, y = 6 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 0 }, { x = -1, y = 1 }, { x = -3, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -6, y = -1 }, { x = -7, y = 2 }, { x = -8, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 0 }, { x = -2, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -5, y = 0 }, { x = -8, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 3, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = 5, y = 0 }, { x = 4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
-- [[ PATTERNS ]] --

local function RetrieveWeaponName(act)
   if act then
      return"ON"
   else
      return"OFF"
   end
end
EnablePrimaryMouseButtonEvents(true);
local Spray_Randomize = math.random(20,25)
local temp = 3
local temp_1 = 3
local Recoil_Activator,R_Weapon_Selector = false,0
function OnEvent(event, arg)
temp_1 = 3
   if (event == "MOUSE_BUTTON_PRESSED" and arg == Activation_Key) then
      Recoil_Activator = not Recoil_Activator
	
      OutputLogMessage("%s\n", RetrieveWeaponName(Recoil_Activator))
   end
OutputLogMessage("event = %s, arg = %s\n", event, arg)
  if Recoil_Activator then
--EnablePrimaryMouseButtonEvents(true)
	if (event == "MOUSE_BUTTON_PRESSED" and arg==1 and IsKeyLockOn("capslock") and IsKeyLockOn("numlock")==false  and IsKeyLockOn("scrolllock")==false) then--ak47	
         	for i = 1, #AK47_Pattern do
           		if i>60 then
					temp_1 =5 
					end
              	Sleep(Spray_Randomize)
               	MoveMouseRelative( AK47_Pattern[i].x*temp_1, AK47_Pattern[i].y*temp )
				OutputLogMessage("Hello World %d\n", i)

				if not IsMouseButtonPressed(1) then
					OutputLogMessage("ERROR %d\n", i)
				break
			end
      end
	end
	if (event == "MOUSE_BUTTON_PRESSED" and arg==1 and IsKeyLockOn("capslock") and IsKeyLockOn("numlock")  and IsKeyLockOn("scrolllock")==false) then--ak47
			for i = 1, #M4A1_Pattern do
           		--if IsMouseButtonPressed(1) then
              	 	Sleep(Spray_Randomize)
               		MoveMouseRelative( M4A1_Pattern[i].x*temp, M4A1_Pattern[i].y*temp )
				OutputLogMessage("Hello World %d\n", i)
            	--end
			if not IsMouseButtonPressed(1) then
				OutputLogMessage("ERROR %d\n", i)
				break
			end
      	end
	end
	if (event == "MOUSE_BUTTON_PRESSED" and arg==1 and IsKeyLockOn("capslock")==false and IsKeyLockOn("numlock")  and IsKeyLockOn("scrolllock")==false) then--ak47
		for i = 1, #FAMAS_Pattern do
           		--if IsMouseButtonPressed(1) then
              	 	Sleep(Spray_Randomize)
               		MoveMouseRelative( FAMAS_Pattern[i].x*temp, FAMAS_Pattern[i].y*temp )
				OutputLogMessage("Hello World %d\n", i)
            	--end
			if not IsMouseButtonPressed(1) then
				OutputLogMessage("ERROR %d\n", i)
				break
			end
      	end
	end
	if (event == "MOUSE_BUTTON_PRESSED" and arg==1 and IsKeyLockOn("capslock") and IsKeyLockOn("numlock")  and IsKeyLockOn("scrolllock")) then--ak47
		for i = 1, #M4A4_Pattern do
           		--if IsMouseButtonPressed(1) then
              	 	Sleep(Spray_Randomize)
               		MoveMouseRelative( M4A4_Pattern[i].x*temp, M4A4_Pattern[i].y*temp )
				OutputLogMessage("M4 %d\n", i)
			if not IsMouseButtonPressed(1) then            	--end

				OutputLogMessage("ERROR %d\n", i)
				break
			end
      	end
	end
end
end