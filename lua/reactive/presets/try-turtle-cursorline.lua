local palette = require("try.palettes").get_palette "turtle"
local presets = require "try.utils.reactive"

return presets.cursorline("try-turtle-cursorline", palette)
