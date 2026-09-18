local M = {}

local is_work = vim.env.DOTFILES_WORK ~= nil

--- Returns whether this is a personal environment.
--- @return boolean
function M.is_personal()
  return not is_work
end

--- Returns whether this is a work environment.
--- @return boolean
function M.is_work()
  return is_work
end

return M
