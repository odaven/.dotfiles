local profile = require("utils.profile")

local personal = {
  { import = "lazyvim.plugins.extras.ai.copilot-native" },
  { import = "lazyvim.plugins.extras.lang.python" },
}

local work = {
  { import = "lazyvim.plugins.extras.lang.terraform" },
}

return profile.is_personal() and personal or work
