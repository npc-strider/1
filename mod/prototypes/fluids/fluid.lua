
data:extend(
{
	{
		type = "fluid",
		name = "gas-fluorine",
		default_temperature = 25,
		heat_capacity = "0.1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=0.5, b=0.5},
		max_temperature = 100,
		icon = "__base__/graphics/icons/fluid/crude-oil.png",
		icon_size = 32,
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		-- fuel_value = "8MJ",
		order = "a[fluid]-b[gas-fluorine]"
	}
})

