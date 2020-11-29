local EventFrame = CreateFrame("frame", "EventFrame")
EventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

EventFrame:SetScript("OnEvent", function(self, event, ...)
   if(event == "PLAYER_ENTERING_WORLD") then
     print("/console set alwaysCompareItems 1")
   end
end)

-- Slash command to enable/disable, mostly for testing
local function MyAddonCommands(msg, editbox)
  if msg == 'on' then
    print("/console set alwaysCompareItems 1")
    print("Auto Compare active")
  else
    print("/console set alwaysCompareItems 0")
    print("Auto Compare deactived, run again with on to re-enable")
  end
end

SLASH_COMPARE = '/compare'
SlashCmdList["COMPARE"] = MyAddonCommands

