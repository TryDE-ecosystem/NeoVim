local M = {}

---@type try.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.terminal_black },
    CopilotSuggestion = { fg = c.terminal_black },
  }
  return ret
end

return M