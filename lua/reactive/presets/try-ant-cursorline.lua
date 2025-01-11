local palette = require("try.palettes").get_palette "ant"
local presets = require "try.utils.reactive"
local darken = require("try.utils.colors").darken

local preset = presets.cursorline("try-ant-cursorline", palette)

preset.static.winhl.inactive.CursorLine = { bg = darken(palette.surface0, 0.8) }
preset.static.winhl.inactive.CursorLineNr = { bg = darken(palette.surface0, 0.8) }

return preset
