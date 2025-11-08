local M = {}

local tile_size = 18 * 2

function M.map_to_tile(pos)
	local tile = vmath.vector3(pos.x, pos.y, pos.z)

	tile.x = math.ceil(pos.x / tile_size)
	tile.y = math.ceil(pos.y / tile_size)

	return tile
end

function M.tile_to_map(tile)
	local pos = vmath.vector3()
	pos.x = tile.x * tile_size - tile_size / 2
	pos.y = tile.y * tile_size - tile_size / 2

	return pos
end

return M