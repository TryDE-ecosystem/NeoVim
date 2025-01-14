local M = {}

---@type try.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.mauve },
    GlyphPalette7 = { fg = c.overlay1 },
    GlyphPalette9 = { fg = c.red },
  }
end

return M