data.raw.beacon["beacon"].fast_replaceable_group = "beacon"

data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[1][3].pictures.filename = "__FactorioExtended-Plus-Module__/graphics/entity/beacon-base/beacon-module-mask-lights-1.png"    
data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[1][3].pictures.line_length = 9
data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[1][3].pictures.variation_count = 9

data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[2][3].pictures.filename = "__FactorioExtended-Plus-Module__/graphics/entity/beacon-base/beacon-module-mask-lights-2.png"    
data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[2][3].pictures.line_length = 9
data.raw["beacon"]["beacon"].graphics_set.module_visualisations[1].slots[2][3].pictures.variation_count = 9

local entity_base = util.table.deepcopy(data.raw["beacon"]["beacon"])
local item_base = util.table.deepcopy(data.raw["item"]["beacon"])

for _, beacon in pairs(beacons) do
    
    entity = util.table.deepcopy(entity_base)
    item = util.table.deepcopy(item_base)

    entity.name = beacon.name    
    entity.icon = "__FactorioExtended-Plus-Module__/graphics/icons/" .. beacon.name .. ".png"
    entity.minable.results = {{ type = "item",  name = beacon.name,  amount = 1}}
    entity.max_health = beacon.health
    entity.energy_usage = beacon.energy_con_kw .. "kW"
    entity.distribution_efficiency = beacon.efficiency
    entity.module_slots = beacon.module_slots
    entity.supply_area_distance = beacon.supply_area
    
    entity.graphics_set.animation_list[1].animation.layers[1].filename = "__FactorioExtended-Plus-Module__/graphics/entity/" .. beacon.name .. "/beacon-bottom.png"
    entity.graphics_set.animation_list[2].animation.filename = "__FactorioExtended-Plus-Module__/graphics/entity/" .. beacon.name .. "/beacon-top.png"

    item.name = beacon.name
    item.icon = "__FactorioExtended-Plus-Module__/graphics/icons/" .. beacon.name .. ".png"
    item.place_results = {{ type = "item",  name = beacon.name,  amount = 1}}
    item.order = beacon.order
    item.subgroup = "fb-module"

    table.insert(data.raw["technology"][beacon.technology].effects, { type = "unlock-recipe", recipe = beacon.name })

    data:extend({ entity, item,
    {
        type = "recipe",
        name = beacon.name,
        enabled = false,
        ingredients = beacon.ingredients,
        results = {{ type = "item",  name = beacon.name,  amount = 1}}
    }})
end
