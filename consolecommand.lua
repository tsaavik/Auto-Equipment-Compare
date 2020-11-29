-- https://rextester.com/l/lua_online_compiler
--
local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

EventFrame:SetScript("OnEvent", function(self, event, ...)
   if(event == "PLAYER_ENTERING_WORLD") then
      ConsoleExec( "set alwaysCompareItems 1" );
      active = true
   end
end)

-- Slash command to enable/disable, mostly for testing
SLASH_COMPARE1 = "/compare"
function SlashCmdList.COMPARE(msg, editbox)
   if(active == true) then
      ConsoleExec( "set alwaysCompareItems 0" );
      print("Auto Compare deactivated, run again to enable")
      active = false
   else
      ConsoleExec( "set alwaysCompareItems 1" );
      print("Auto Compare activated")
      active = true
   end
end
