local palette = require("try.palettes").get_palette "turtle"
local presets = require "turtle.utils.reactive"

return presets.cursor("try-turtle-cursor", palette)
