
local distributionTable = VehicleDistributions[1]

VehicleDistributions.SACEEFEMATruckBed = {
    rolls = 25,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 7,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 5,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 5,
		"SACEE.BodyBagBox_SACEE", 10,
        "SACEE.Jacket_FEMA", 15,
        "HazmatSuit", 5,
        "Vest_HighViz", 10,

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
    rolls = 25,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 7,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 5,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 5,
        "SACEE.Jacket_FEMA", 15,
        "HazmatSuit", 5,
        "Vest_HighViz", 10,

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

distributionTable["VanStateEmergency"] = { Normal = VehicleDistributions.SACEEStateEmergency; }
distributionTable["VanStateEmergencyBodies"] = { Normal = VehicleDistributions.SACEEStateEmergencyBodies; }