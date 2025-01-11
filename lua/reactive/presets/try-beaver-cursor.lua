local palette = require("try.palettes").get_palette "beaver"
local presets = require "try.utils.reactive"

local preset = presets.cursor("try-beaver-cursor", palette)

preset.modes.R.hl.ReactiveCursor = { bg = palette.flamingo }

return preset
