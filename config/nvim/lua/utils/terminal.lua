local M = {}

local is_tmux = vim.env.TMUX ~= nil

--- Returns whether this is a tmux environment.
--- @return boolean
function M.is_tmux()
  return is_tmux
end

return M
