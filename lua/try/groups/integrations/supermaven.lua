local M = {}

---@type try.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.terminal_black },
  }
  return ret
end

return M