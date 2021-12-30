
local distributionTable = VehicleDistributions[1]

VehicleDistributions.SACEEFEMATruckBed = {
    rolls = 20,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 15,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 10,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 10,
		"SACEE.BodyBagBox_SACEE", 10,
        "SACEE.FlyerBox_SACEE", 10,
        "SACEE.Jacket_FEMA", 20,
        "SACEE.DisasterAssistance", 5,
        "HazmatSuit", 1,
        "Hat_DustMask", 10,
        "Radio.WalkieTalkie3", 10,
        "Vest_HighViz", 10,

    }
}

VehicleDistributions.SACEEFEMACommandTruckBed = {
    rolls = 20,
    items ={

        "SACEE.Jacket_FEMA", 20,
        "Hat_DustMask", 10,
        "SACEE.EmergencyFoodSupplyBox_SACEE", 15,
        "Radio.WalkieTalkie3", 20,
        "SACEE.FlyerBox_SACEE", 10,
        "SACEE.DisasterAssistance", 5,
        "Radio.HamRadio1", 10,
        "Vest_HighViz", 10,

    }
}

VehicleDistributions.SACEEFEMABodiesTruckBed = {
    rolls = 100,
    items ={

		"SACEE.BodyBag", 50,

    }
}

VehicleDistributions.SACEEStateEmergencyTruckBed = {
    rolls = 20,
    items ={

        "SACEE.EmergencyFoodSupplyBox_SACEE", 10,
        "SACEE.EmergencyWaterSupplyBox_SACEE", 10,
        "SACEE.EmergencyMedicalSupplyBox_SACEE", 10,
		"SACEE.BodyBagBox_SACEE", 10,
        "Hat_DustMask", 10,
        "Radio.WalkieTalkie3", 10,
        "Vest_HighViz", 10,

    }
}

VehicleDistributions.SACEEStateEmergencyBodiesTruckBed = {
	rolls = 100,
    items ={

		"SACEE.BodyBag", 50,

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

VehicleDistributions.SACEEFEMACommand = {

    TruckBed = VehicleDistributions.SACEEFEMACommandTruckBed;
    TruckbedOpen = VehicleDistributions.SACEEFEMACommandTruckBed;
     
}

VehicleDistributions.SACEEFEMABodies = {

    TruckBed = VehicleDistributions.SACEEFEMABodiesTruckBed;
    TruckbedOpen = VehicleDistributions.SACEEFEMABodiesTruckBed;
    
}

distributionTable["VanFEMA"] = { Normal = VehicleDistributions.SACEEFEMA; }
distributionTable["VanRadioFEMA"] = { Normal = VehicleDistributions.SACEEFEMACommand; }
distributionTable["VanFEMABodies"] = { Normal = VehicleDistributions.SACEEFEMABodies; }

distributionTable["VanStateEmergency"] = { Normal = VehicleDistributions.SACEEStateEmergency; }
distributionTable["VanStateEmergencyBodies"] = { Normal = VehicleDistributions.SACEEStateEmergencyBodies; }