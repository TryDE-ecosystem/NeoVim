local palette = require("try.palettes").get_palette "ant"
local presets = require "try.utils.reactive"

return presets.cursor("try-ant-cursor", palette)
