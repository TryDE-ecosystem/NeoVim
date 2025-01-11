local palette = require("try.palettes").get_palette "honeybee"
local presets = require "try.utils.reactive"

return presets.cursor("try-honeybee-cursor", palette)
