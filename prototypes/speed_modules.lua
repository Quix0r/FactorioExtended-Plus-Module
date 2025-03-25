local module_base = util.table.deepcopy(data.raw["module"]["speed-module-3"])

for _, speed_module in pairs(speed_modules) do
    item = util.table.deepcopy(module_base)

    item.name = speed_module.name
    item.localised_name = { "module-name.speed-" .. speed_module.tier }
    item.icon = "__FactorioExtended-Plus-Module__/graphics/icons/" .. speed_module.name .. ".png"
    item.order = speed_module.order
    item.subgroup = "fb-module"
    item.tier = speed_module.tier
    item.effect = { speed = speed_module.speed, consumption = speed_module.energy_consumption}

    --item.beacon_tint.primary = { 0, 1, 0 }, -- #70b6ffff
    item.beacon_tint.secondary = {r = 255, g = 255, b = 255, a = 255}, -- #ffffff

    table.insert(data.raw["technology"][speed_module.technology].effects, { type = "unlock-recipe", recipe = speed_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = speed_module.name,
        enabled = false,
        energy_required = speed_module.energy_required,
        ingredients = speed_module.ingredients,
        results = {{ type = "item",  name = speed_module.name,  amount = 1}}
    }})
end
