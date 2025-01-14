local M = {}

---@type try.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.blue1, nocombine = true },
  }
end

return M