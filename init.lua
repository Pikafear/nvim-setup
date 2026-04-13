require("config.lazy")
require("config.options")
require("config.keybinds")

require("lazy").setup({
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
})

