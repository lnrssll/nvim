require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- defaults
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- mine
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>Q", "<cmd>q!<cr>")
map("n", "<leader>y", ":let @+ = expand('%')<CR>")

-- timestamp
map("n", "<leader>d", "i<C-R>=strftime('%A, %B %d, %Y at %I:%M:%S %p')<CR><Esc>")

-- for dealing with copilot and gen.nvim
map("v", "<C-g>", ":Gen<CR>")
map("i", "<C-o>", "<ESC>o")

-- vim-tmux-navigator
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")

-- gitsigns
local gitsigns = require('gitsigns')
    -- Navigation
map('n', ']c', function()
  if vim.wo.diff then
    vim.cmd.normal({']c', bang = true})
  else
    gitsigns.nav_hunk('next')
  end
end)

map('n', '[c', function()
  if vim.wo.diff then
    vim.cmd.normal({'[c', bang = true})
  else
    gitsigns.nav_hunk('prev')
  end
end)
