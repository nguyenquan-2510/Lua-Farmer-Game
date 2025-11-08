local M = {}

M.list_plants = {}

local function create_plant(name, id)
	print("Creating new plant: ", name)
	local new_plant = {}
	new_plant.name = name
	new_plant.id = id

	M.list_plants[new_plant.name] = new_plant

	return new_plant
end

function M.init()
	print("Plan data:")
	create_plant("Turnip", {44, 43})
	create_plant("Carrot", {89, 73, 57})
	create_plant("Pumpkin", {55, 56, 5})
end

function M.get_plant_at(p_id)
	local name = "Undefined"

	for i, plants in pairs(M.list_plants) do
		for n, id_value in ipairs(plants.id) do
			if p_id == id_value then
				name = plants.name
			end
		end
	end

	return name
end

return M