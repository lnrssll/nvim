local treesitter = {
  ensure_installed = {
    --web stuff
    "html",
    "css",
    "scss",
    "javascript",
    "json",
    "xml",
    "typescript",
    "tsx",
    "sql",
    "php",
    "ruby",
    "vue",

    --low lvl
    "c",
    "cpp",
    "make",
    "cmake",
    "meson",
    "ninja",
    "rust",

    --high lvl
    "python",
    "java",
    "go",

    --git stuff
    "git_config",
    "gitcommit",
    "git_rebase",
    "gitattributes",
    "gitignore",

    --other
    "lua",
    "markdown",
    "markdown_inline",
    "vim",
    "lua",
    "vimdoc",
    "yaml",
    "toml",
    "regex",
  },
  indent = {
    enable = true,
    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/3363
    disable = { "ruby" },
  },
}

return treesitter
