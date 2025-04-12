data:extend ({
  {
    type = "item-subgroup",
    name = "fb-module",
    group = "FactorioExtended",
    order = "z"
  }
})

local science_t1 = {
    {"automation-science-pack", 1}
}
local science_t2 = {
    {"automation-science-pack", 1},
    {"logistic-science-pack"  , 1}
}
local science_t3 = {
    {"automation-science-pack", 1},
    {"logistic-science-pack"  , 1},
    {"chemical-science-pack"  , 1}
}
local science_t4 = {
    {"automation-science-pack", 1},
    {"logistic-science-pack"  , 1},
    {"chemical-science-pack"  , 1},
    {"production-science-pack", 1}
}
local science_t5 = {
    {"automation-science-pack", 1},
    {"logistic-science-pack"  , 1},
    {"chemical-science-pack"  , 1},
    {"production-science-pack", 1},
    {"utility-science-pack"   , 1}
}
local science_t6 = {
    {"automation-science-pack", 1},
    {"logistic-science-pack"  , 1},
    {"chemical-science-pack"  , 1},
    {"production-science-pack", 1},
    {"utility-science-pack"   , 1},
    {"space-science-pack"     , 1}
}

technologies = {
    { order = "a-a-a", name = "effect-transmission-mk2", count = 200, time = 60, prerequisite = {"effect-transmission"}, ingredients = science_t4 },
    { order = "a-a-b", name = "effect-transmission-mk3", count = 500, time = 60, prerequisite = {"effect-transmission-mk2"}, ingredients = science_t5 },

    { order = "a-b-a", name = "speed-module-4", count = 500 , time = 60, prerequisite = {"speed-module-3"}, ingredients = science_t4 },
    { order = "a-b-b", name = "speed-module-5", count = 1000, time = 60, prerequisite = {"speed-module-4"}, ingredients = science_t5 },
    { order = "a-b-c", name = "speed-module-6", count = 2000, time = 60, prerequisite = {"speed-module-5"}, ingredients = science_t6 },

    { order = "a-c-a", name = "efficiency-module-4", count = 500 , time = 60, prerequisite = {"efficiency-module-3"}, ingredients = science_t4 },
    { order = "a-c-b", name = "efficiency-module-5", count = 1000, time = 60, prerequisite = {"efficiency-module-4"}, ingredients = science_t5 },
    { order = "a-c-c", name = "efficiency-module-6", count = 2000, time = 60, prerequisite = {"efficiency-module-5"}, ingredients = science_t6 },

    { order = "a-d-a", name = "productivity-module-4", count = 500 , time = 60, prerequisite = {"productivity-module-3"}, ingredients = science_t4 },
    { order = "a-d-b", name = "productivity-module-5", count = 1000, time = 60, prerequisite = {"productivity-module-4"}, ingredients = science_t5 },
    { order = "a-d-c", name = "productivity-module-6", count = 2000, time = 60, prerequisite = {"productivity-module-5"}, ingredients = science_t6 }
}

beacons = {
    { order = "a-a", name = "beacon-mk2", health = 250, efficiency = 0.75, energy_con_kw = 600, supply_area = 3, module_slots = 2, ingredients = {
        {type="item", name="beacon"             , amount=1 },
        {type="item", name="steel-plate"        , amount=10},
        {type="item", name="titanium-alloy"     , amount=20},
        {type="item", name="speed-module-3"     , amount=2 },
        {type="item", name="efficiency-module-3", amount=2 },
        {type="item", name="advanced-circuit"   , amount=20},
        {type="item", name="processing-unit"    , amount=20}
    }, technology = "effect-transmission-mk2" },

    { order = "a-b", name = "beacon-mk3", health = 300, efficiency = 1, energy_con_kw = 720, supply_area = 3, module_slots = 2, ingredients = {
        {type="item", name="beacon-mk2"         , amount=1 },
        {type="item", name="titanium-alloy"     , amount=20},
        {type="item", name="speed-module-4"     , amount=1 },
        {type="item", name="efficiency-module-4", amount=1 },
        {type="item", name="processing-unit"    , amount=40}
    }, technology = "effect-transmission-mk3" }
}

speed_modules = {
    { order = "b-a", name = "speed-module-4", energy_consumption = 0.8, speed = 0.8, tier = 4, energy_required = 120, ingredients = {
        {type="item", name="speed-module-3" , amount=6 },
        {type="item", name="processing-unit", amount=10}
    }, technology = "speed-module-4" },

    { order = "b-b", name = "speed-module-5", energy_consumption = 1.2, speed = 0.9, tier = 5, energy_required = 240, ingredients = {
        {type="item", name="speed-module-4" , amount=4 },
        {type="item", name="processing-unit", amount=10}
    }, technology = "speed-module-5" },

    { order = "b-c", name = "speed-module-6", energy_consumption = 1.7, speed = 1.0, tier = 6, energy_required = 480, ingredients = {
        {type="item", name="speed-module-5" , amount=4 },
        {type="item", name="processing-unit", amount=10}
    }, technology = "speed-module-6" }
}

efficiency_modules = {
    { order = "c-a", name = "efficiency-module-4", energy_consumption = -1.6, pollution = -0.8, tier = 4, energy_required = 120, ingredients = {
        {type="item", name="efficiency-module-3", amount=6 },
        {type="item", name="processing-unit"    , amount=10}
    }, technology = "efficiency-module-4" },

    { order = "c-b", name = "efficiency-module-5", energy_consumption = -2.4, pollution = -1.2, tier = 5, energy_required = 240, ingredients = {
        {type="item", name="efficiency-module-4", amount=4 },
        {type="item", name="processing-unit"    , amount=10}
    }, technology = "efficiency-module-5" },

    { order = "c-c", name = "efficiency-module-6", energy_consumption = -3.4, pollution = -1.7, tier = 6, energy_required = 480, ingredients = {
        {type="item", name="efficiency-module-5", amount=4 },
        {type="item", name="processing-unit"    , amount=10}
    }, technology = "efficiency-module-6" }
}

productivity_modules = {
    { order = "d-a", name = "productivity-module-4", productivity = 0.16, energy_consumption = 1, pollution = 0.14, speed = -0.15, tier = 4, energy_required = 120, ingredients = {
        {type="item", name="productivity-module-3", amount=6 },
        {type="item", name="processing-unit"      , amount=10}
    }, technology = "productivity-module-4" },

    { order = "d-b", name = "productivity-module-5", productivity = 0.24, energy_consumption = 1.2, pollution = 0.19, speed = -0.15, tier = 5, energy_required = 240, ingredients = {
        {type="item", name="productivity-module-4", amount=4 },
        {type="item", name="processing-unit"      , amount=10}
    }, technology = "productivity-module-5" },

    { order = "d-c", name = "productivity-module-6", productivity = 0.34, energy_consumption = 1.4, pollution = 0.25, speed = -0.15, tier = 6, energy_required = 480, ingredients = {
        {type="item", name="productivity-module-5", amount= 4},
        {type="item", name="processing-unit"      , amount=10}
    }, technology = "productivity-module-6" }
}

if script.active_mods["quality"] then
    quality_modules = {
        { order = "e-a", name = "quality-module-4", quality = 0.3, speed = -0.05, tier = 4, energy_required = 120, ingredients = {
            {type="item", name="quality-module-3", amount=6 },
            {type="item", name="processing-unit" , amount=10}
        }, technology = "quality-module-4" },

        { order = "e-b", name = "quality-module-5", quality = 0.35, speed = -0.05, tier = 5, energy_required = 240, ingredients = {
            {type="item", name="quality-module-4", amount=4 },
            {type="item", name="processing-unit" , amount=10}
        }, technology = "quality-module-5" },

        { order = "e-c", name = "quality-module-6", quality = 0.4, speed = -0.05, tier = 6, energy_required = 480, ingredients = {
            {type="item", name="quality-module-5", amount= 4},
            {type="item", name="processing-unit" , amount=10}
        }, technology = "quality-module-6" }
    }

    table.insert(technologies, { order = "a-e-a", name = "quality-module-4", count = 500 , time = 60, prerequisite = {"quality-module-3"}, ingredients = science_t4 })
    table.insert(technologies, { order = "a-e-b", name = "quality-module-5", count = 1000, time = 60, prerequisite = {"quality-module-4"}, ingredients = science_t5 })
    table.insert(technologies, { order = "a-e-c", name = "quality-module-6", count = 2000, time = 60, prerequisite = {"quality-module-5"}, ingredients = science_t6 })
end
