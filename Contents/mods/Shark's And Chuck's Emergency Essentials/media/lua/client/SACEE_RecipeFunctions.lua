SACEE_Recipe = {}

function SACEE_Recipe.CanOpenBoxes(scriptItems)
	scriptItems:addAll(getScriptManager():getItemsTag("CanOpenBoxes"))
end

function SACEE_Recipe.FOOD(recipe, result, player)
	player:getInventory():AddItems("SACEE.MealReadytoEat_SACEE", 9)
end

function SACEE_Recipe.WATER(recipe, result, player)
	player:getInventory():AddItems("SACEE.EmergencyWaterRation_SACEE", 9)
end

---@param player IsoGameCharacter | IsoMovingObject
function SACEE_Recipe.MEDICAL(recipe, result, player)
	player:getInventory():AddItems("Hat_SurgicalMask_Blue", 5)
	player:getInventory():AddItems("Gloves_Surgical", 6)
	local items = player:getInventory():AddItems("Base.FirstAidKit", 1)

	for i=0, items:size()-1 do
		rollInventoryContainer(items:get(i), player)
	end
end

function SACEE_Recipe.BODYBAG(recipe, result, player)
	player:getInventory():AddItems("SACEE.BodyBagEmpty", 9)
end

function SACEE_Recipe.FLYER(recipe, result, player)
	player:getInventory():AddItems("SACEE.DisasterAssistanceFlyer", 39)
end


SACEE_Recipe.typesThatCanOpenBoxes = SACEE_Recipe.typesThatCanOpenBoxes or {}

---@param list table of type paths
function SACEE_Recipe.addCanOpenBoxTypes(list)
	for _,type in pairs(list) do
		table.insert(SACEE_Recipe.typesThatCanOpenBoxes, type)
	end
end

---Sub-mod authors will have to use the following function to add more types
SACEE_Recipe.addCanOpenBoxTypes(
		{"Base.Fork","Base.ButterKnife","Base.HuntingKnife","Base.KitchenKnife","Base.Scissors",
		 "Base.RedPen","Base.BluePen","Base.Pen","Base.Pencil","Base.Screwdriver","Base.GardenFork",
		 "Base.Scalpel","Base.LetterOpener","Base.IcePick","Base.BreadKnife","Base.MeatCleaver","Base.FlintKnife",
		 "Base.Machete","Base.Katana","Base.HandAxe","Base.Axe","Base.WoodAxe","Base.HandScythe",})


---Adds "CanOpenBoxes" tag to scripts for type
---@param type string
function SACEE_Recipe.addCanOpenBoxesTag(type)
	local item = ScriptManager.instance:getItem(type);
	if item then
		local tags = item:getTags()
		local tagString = "CanOpenBoxes"

		for i=0, tags:size()-1 do
			---@type string
			local tag = tags:get(i)
			tagString = tagString..";"..tag
		end

		item:DoParam("Tags = "..tagString);
		print("--AddTag:"..type..": "..tagString);
	end
end

---For each type in SACEE_Recipe.addCanOpenBoxTypes process SACEE_Recipe.addCanOpenBoxesTag(type)
function SACEE_Recipe.addCanOpenBoxesTagToTypesThatCan()
	for _,type in pairs(SACEE_Recipe.typesThatCanOpenBoxes) do
		SACEE_Recipe.addCanOpenBoxesTag(type)
	end
end

Events.OnGameBoot.Add(SACEE_Recipe.addCanOpenBoxesTagToTypesThatCan)
