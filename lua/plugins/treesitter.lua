-- lua/plugins/treesitter.lua
-- This file is a Lazy.nvim plugin spec for nvim-treesitter
-- (Feel free to rename it to whatever you like!)

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  -- Optional: add the `run` key to automatically update parsers after install
  run = ":TSUpdate",
  --  opts = {
  --    ensure_installed = { "lua", "python", "javascript", "html", "css" }, -- add/remove as you wish
  --    highlight = { enable = true },
  --    indent = { enable = true },
  --  },
  --  config = function(_, opts)
  --    require("nvim-treesitter.configs").setup(opts)
  --  end,
}

