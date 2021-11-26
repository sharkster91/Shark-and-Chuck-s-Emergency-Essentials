

if VehicleZoneDistribution then -- check if the table exists for backwards compatibility

-- ****************************** --
--          SPECIAL VEHICLES      --
-- ****************************** --

-- police

VehicleZoneDistribution.police.vehicles["SACEE.VanStateEmergency"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.police.spawnRate = 100;

-- fire

VehicleZoneDistribution.fire.vehicles["SACEE.VanStateEmergency"] = {index = -1, spawnChance = 100};
VehicleZoneDistribution.fire.spawnRate = 100;

end