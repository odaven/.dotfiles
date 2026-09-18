local profile = require("utils.profile")

local devin = {
  cmd = { "devin" },
  is_proc = "\\<devin\\>",
  url = "https://github.com/cognition-ai/devin",
  resume = { "--resume" },
  continue = { "--continue" },
}

return {
  {
    "folke/sidekick.nvim",
    opts = {
      nes = { enabled = profile.is_personal() },
      cli = { mux = { enabled = true, create = "split" } },
    },
    config = function(_, opts)
      require("sidekick").setup(opts)

      -- NES diff highlights: Same colours than tokyo night minimal theme for delta
      vim.api.nvim_set_hl(0, "SidekickDiffAdd", { fg = "#000000", bg = "#449dab" })
      vim.api.nvim_set_hl(0, "SidekickDiffDelete", { fg = "#000000", bg = "#914c54" })

      local tools = {}

      if profile.is_personal() then
        tools.codex = {}
        tools.copilot = {}
      end

      if profile.is_work() then
        tools.devin = devin
      end

      require("sidekick.config").cli.tools = tools
    end,
  },
}
