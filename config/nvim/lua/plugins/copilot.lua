return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      mappings = {
        -- Disable the C-L mapping to avoid deleting chat's history when trying
        -- to go to the right window
        reset = {
          normal = "",
          insert = "",
        },
      },
    },
  },
}
