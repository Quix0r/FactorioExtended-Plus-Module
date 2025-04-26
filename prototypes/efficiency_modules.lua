local module_base = util.table.deepcopy(data.raw["module"]["efficiency-module-3"])

for x, efficiency_module in pairs(efficiency_modules) do
    item = util.table.deepcopy(module_base)

    item.name = efficiency_module.name
    item.localised_name = { "module-name.efficiency-" .. efficiency_module.tier }
    item.icon = "__FactorioExtended-Plus-Assets__/module/icons/" .. efficiency_module.name .. ".png"
    item.order = efficiency_module.order
    item.subgroup = "fb-module"
    item.tier = efficiency_module.tier
    item.effect = { 
                    consumption = efficiency_module.energy_consumption,
                    pollution = efficiency_module.pollution
                  }

    --item.beacon_tint.primary = { 0, 1, 0 }, -- #70b6ffff
    item.beacon_tint.secondary = {r = 255, g = 255, b = 255, a = 255}, -- #ffffff

    table.insert(data.raw["technology"][efficiency_module.technology].effects, { type = "unlock-recipe", recipe = efficiency_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = efficiency_module.name,
        enabled = false,
        energy_required = efficiency_module.energy_required,
        ingredients = efficiency_module.ingredients,
        results = {{ type = "item",  name = efficiency_module.name,  amount = 1}}
    }})
end
