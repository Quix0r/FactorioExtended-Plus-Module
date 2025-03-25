require("configuration")
require("prototypes.technologies")

require("prototypes.beacons")
require("prototypes.speed_modules")
require("prototypes.efficiency_modules")
require("prototypes.productivity_modules")

if (mods["quality"]) then
    require("prototypes.quality_modules")
end
