SACEEZombiesZoneDefinition = ZombiesZoneDefinition or {};

-- total chance can be over 100% we don't care as we'll roll on the totalChance and not a 100 (unlike the specific outfits on top of this)
SACEEZombiesZoneDefinition.Default = ZombiesZoneDefinition.Default or {};

table.insert(SACEEZombiesZoneDefinition.Default,{name = "SACEEFEMARepresentative", chance=0.02});