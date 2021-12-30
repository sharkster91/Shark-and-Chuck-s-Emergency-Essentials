if VehicleZoneDistribution then -- check if the table exists for backwards compatibility

-- ****************************** --
--          SPECIAL VEHICLES      --
-- ****************************** --

-- police

VehicleZoneDistribution.police.vehicles["SACEE.VanStateEmergency"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.police.spawnRate = 45
VehicleZoneDistribution.police.baseVehicleQuality = 1

-- fire
VehicleZoneDistribution.fire.vehicles["SACEE.VanStateEmergency"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.fire.spawnRate = 45
VehicleZoneDistribution.fire.baseVehicleQuality = 1

-- military

VehicleZoneDistribution.military = VehicleZoneDistribution.military or {}
VehicleZoneDistribution.military.vehicles = VehicleZoneDistribution.military.vehicles or {}
VehicleZoneDistribution.military.vehicles["SACEE.VanFEMA"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.military.vehicles["SACEE.VanFEMARadio"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.military.spawnRate = 35
VehicleZoneDistribution.military.baseVehicleQuality = 1

-- wrecks and pileups 

VehicleZoneDistribution.trafficjamw.vehicles["SACEE.VanStateEmergencyBodies"] = {index = -1, spawnChance = 3}
VehicleZoneDistribution.trafficjamw.vehicles["SACEE.PickUpVanStateEmergencyBodies"] = {index = -1, spawnChance = 3}

end
