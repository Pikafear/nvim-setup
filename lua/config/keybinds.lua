-- vim.keymap.set("n", "<C-x>", ":BufferLinePickClose", { desc = "Kill a tab! Can pick if want to" })
vim.keymap.set("n", "<C-x>", ":bp <BAR> bd #<CR>", { desc = "Kill a tab!" }) -- Kills the current tab and focuses on the next one

-- When using :b <tab>, get the last tab! This will sort with most recent being last used
vim.opt.wildmode = { "lastused" } 

-- A nice way to exit
vim.keymap.set("i", "jj", "<Esc>")
vim.cmd("inoremap j<Esc> `")

vim.g.mapleader = " " -- Our leader shall be... space!

-- Works with BufferLine to allow a tab to be moved correspondingly
vim.keymap.set("n", "<leader><Left>", ":BufferLineMovePrev<Enter>", { desc = "Move a tab to the left"})
vim.keymap.set("n", "<leader><Right>", ":BufferLineMoveNext<Enter>", { desc = "Move a tab to the right"})

-- Snacks picker / Fuzzy finder
-- vim.keymap.set("n", "<C-p>", ":Telescope find_files<Enter>", { desc = "Find your files!" }) -- TELESCOPE
-- vim.keymap.set("n", "<C-o>", ":Telescope live_grep<Enter>", { desc = "Find a string as a find all!" }) -- TELESCOPE

vim.keymap.set("n", "<C-p>", ":lua Snacks.picker.smart()<Enter>", { desc = "Find your files! Picker version"})
vim.keymap.set("n", "<C-o>", ":lua Snacks.picker.grep()<Enter>", { desc = "Find your lines! Grep version"})

-- These will affect resizing a window
vim.keymap.set("n", "<leader>ll", ":vertical resize +10", { desc = "Resize your buffer!" })
vim.keymap.set("n", "<leader>hh", ":vertical resize -10", { desc = "Resize your buffer!" })
vim.keymap.set("n", "<leader>kk", ":vertical resize +10", { desc = "Resize your buffer!" })
vim.keymap.set("n", "<leader>jj", ":vertical resize -10", { desc = "Resize your buffer!" })

-- Open or close nvimtree
vim.keymap.set("n", "<leader>]", ":NvimTreeFindFile<Enter>", { desc = "Open Nvimtree with focused file" })
vim.keymap.set("n", "<leader>[", ":NvimTreeClose<Enter>", { desc = "Close Nvimtree" })


-- vim.cmd('let mapleader = " "') -- Also set within the other lua file for lazy

-- Allows resizing of your windows through... your mouse!
vim.cmd("set mouse=a")
