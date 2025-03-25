local module_base = util.table.deepcopy(data.raw["module"]["quality-module-3"])

for _, quality_module in pairs(quality_modules) do
    item = util.table.deepcopy(module_base)

    item.name = quality_module.name
    item.localised_name = { "module-name.quality-" .. quality_module.tier }
    -- @todo item.icon = "__FactorioExtended-Plus-Module__/graphics/icons/" .. quality_module.name .. ".png"
    item.order = quality_module.order
    item.subgroup = "fb-module"
    item.tier = quality_module.tier
    item.effect = {
                      quality = quality_module.quality,
                      speed = quality_module.speed
                  }

    table.insert(data.raw["technology"][quality_module.technology].effects, { type = "unlock-recipe", recipe = quality_module.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = quality_module.name,
        enabled = false,
        energy_required = quality_module.energy_required,
        ingredients = quality_module.ingredients,
        results = {{ type = "item",  name = quality_module.name,  amount = 1}}
    }})
end
