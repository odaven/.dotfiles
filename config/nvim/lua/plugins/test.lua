return {
  {
    "nvim-neotest/neotest",
    dependencies = { "marilari88/neotest-vitest", "mrcjkb/rustaceanvim" },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-vitest"))
      table.insert(opts.adapters, require("rustaceanvim.neotest"))
    end,
  },
}
