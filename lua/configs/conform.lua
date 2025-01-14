-- for available formatters, see:
-- https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters
local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    scss = { "prettier" },
    markdown = { "prettier" },

    python = { "black" },
    ruby = { "rubocop" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
