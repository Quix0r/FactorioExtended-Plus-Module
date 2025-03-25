local module_base = util.table.deepcopy(data.raw["module"]["productivity-module-3"])

for _, productivity_module in pairs(productivity_modules) do
    item = util.table.deepcopy(module_base)

    item.name = productivity_module.name
    item.localised_name = { "module-name.productivity-" .. productivity_module.tier }
    item.icon = "__FactorioExtended-Plus-Module__/graphics/icons/" .. productivity_module.name .. ".png"    
    item.order = productivity_module.order
    item.subgroup = "fb-module"
    item.tier = productivity_module.tier
    item.effect = {
                    productivity = productivity_module.productivity,
                    consumption = productivity_module.energy_consumption,
                    pollution = productivity_module.pollution,
                    speed = productivity_module.speed
                  }

    table.insert(data.raw["technology"][productivity_module.technology].effects, { type = "unlock-recipe", recipe = productivity_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = productivity_module.name,
        enabled = false,
        energy_required = productivity_module.energy_required,
        ingredients = productivity_module.ingredients,
        results = {{ type = "item",  name = productivity_module.name,  amount = 1}}
    }})
end
