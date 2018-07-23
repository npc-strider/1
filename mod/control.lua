
require "util"

--[[///////////////////
	UNIVERSAL FUNCTIONS
	///////////////////]]

--compare an item to a table
function contains_item(item, table)
	for k, item in ipairs(table) do
		if item == table then
			return true
		else
			return false
		end
	end
end

--verify state of entity and call the appropriate functions
function entity_placed(event)
	local entity = event.created_entity
	if entity and entity.valid then
		if entity.name == "excavation-site" then
			make_target(event)
		end
	end
end

function check_cursor_stack(player_index)
	local player = game.players[player_index]
	local cursor_item = player.cursor_stack
	return cursor_item
end

function add_to_inv(item, entity)
	
end

function clear_inv(item.name, player_index)
	local player = game.players[player_index]
	player.clean_cursor(name)
	player.remove_item(name)
end

script.on_event(defines.events.on_built_entity, entity_placed)
script.on_event(defines.events.on_robot_built_entity, entity_placed)


--[[/////////////////////////
	ENTITY-SPECIFIC FUNCTIONS
	/////////////////////////]]


--neutron target
function Position.add(pos1, pos2)
    pos1 = Position.new(pos1)
    pos2 = Position.new(pos2)

    return Position.new({x = pos1.x + pos2.x, y = pos1.y + pos2.y})
end

function make_target(event)
	--change this in order to change the reactor detection range.
	local range = 1
	local offsets = {{0, range}, {range, 0}, {0, -range}, {-range, 0}}
	local entity = event.created_entity
	local entity_position = entity.position	
	for _, offset in pairs(offsets) do
		local adj_pos = {x = entity_position.x + offset.x, y = entity_position.y + offset.y}
		local adjacent_reactor = surface.get_t(adj_pos.x, adj_pos.y)
		local surface = adjacent_reactor.
		if adjacent_reactor and adjacent_reactor.type == "reactor" then
			game.surfaces[].create_entity()
		else
			--false
       end
	end
	return adjacent_tiles
end
--neutron target - neutron manager

function remove_neutrons(player_index)
	local remove_neutrons.player_index = player_index
	if neutron_target_gui_open == true then
		script.events.on_tick(clear_inv("neutron", player_index))
	else
		game.players[player_index].print("debug.neutron.gui.closed")
	end
end
script.on_tick(remove_neutrons)

function generate_neutrons(entity)
	
end
script.on_tick(generate_neutrons)

--gui handler
script.on_event(defines.events.on_gui_opened, function(event)
	if event.entity.name == "neutron-target" then
		neutron_target_gui_open = true
		local player_index = event.player_index
		remove_neutrons(player_index)
	end
end)

script.on_event(defines.events.on_gui_closed, function(event)
	if event.entity.name == "neutron-target" then
		neutron_target_gui_open = false
	end
end)

