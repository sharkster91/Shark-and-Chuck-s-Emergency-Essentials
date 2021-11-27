
local distributionTable = VehicleDistributions[1]

VehicleDistributions.SACEEFEMATruckBed = {
    rolls = 20,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 10,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 10,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 10,
		"SACEE.BodyBagBox_SACEE", 20,

    }
}

VehicleDistributions.SACEEFEMABodiesTruckBed = {
    rolls = 100,
    items ={

		"SACEE.BodyBagFull", 50,
		"SACEE.BodyBagZombie", 10,

    }
}

VehicleDistributions.SACEEStateEmergencyTruckBed = {
    rolls = 20,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 10,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 10,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 10,
		"SACEE.BodyBagBox_SACEE", 20,

    }
}

VehicleDistributions.SACEEStateEmergencyBodiesTruckBed = {
	rolls = 100,
    items ={

		"SACEE.BodyBagFull", 50,
		"SACEE.BodyBagZombie", 10,

    }
}

VehicleDistributions.SACEEStateEmergency = {

    TruckBed = VehicleDistributions.SACEEStateEmergencyTruckBed;
    TruckbedOpen = VehicleDistributions.SACEEStateEmergencyTruckBed;
    
}

VehicleDistributions.SACEEStateEmergencyBodies = {

    TruckBed = VehicleDistributions.SACEEStateEmergencyBodiesTruckBed;
    TruckbedOpen = VehicleDistributions.SACEEStateEmergencyBodiesTruckBed;
    
}

VehicleDistributions.SACEEFEMA = {

    TruckBed = VehicleDistributions.SACEEFEMATruckBed;
    TruckbedOpen = VehicleDistributions.SACEEFEMATruckBed;
    
}

VehicleDistributions.SACEEFEMABodies = {

    TruckBed = VehicleDistributions.SACEEFEMABodiesTruckBed;
    TruckbedOpen = VehicleDistributions.SACEEFEMABodiesTruckBed;
    
}


distributionTable["VanFEMA"] = { Normal = VehicleDistributions.SACEEFEMA; }
distributionTable["VanFEMABodies"] = { Normal = VehicleDistributions.SACEEFEMABodies; }

distributionTable["PickUpVanStateEmergency"] = { Normal = VehicleDistributions.SACEEStateEmergency; }
distributionTable["PickUpVanStateEmergencyBodies"] = { Normal = VehicleDistributions.SACEEStateEmergency; }

distributionTable["VanStateEmergency"] = { Normal = VehicleDistributions.SACEEStateEmergency; }
distributionTable["VanStateEmergencyBodies"] = { Normal = VehicleDistributions.SACEEStateEmergencyBodies; }