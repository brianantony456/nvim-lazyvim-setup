-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt -- for conciseness

-- Custom: add vertical lines for visibility. 72 - for git & docs.
opt.colorcolumn = "72,80,120"

-- Set conceallevel to 0 to disable markdown concealing, this renders markdown
-- default is 2
vim.opt.conceallevel = 0

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set winbar shows file path, helps with splits
vim.opt.winbar = "%=%m %f"

-- Don't autoformat on save
vim.g.autoformat = false

-- Turn off swapfile
vim.opt.swapfile = false

-- line wrapping
opt.wrap = false -- disable line wrapping

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
--
--
-- vim.g.ale_linters_explicit = 1
-- vim.g.ale_use_neovim_diagnostics_api = 1
-- vim.g.ale_virtualtext_cursor = "disabled"
-- vim.g.ale_linters = {
--   apkbuild = { "apkbuild_lint" },
--   -- TODO: https://github.com/kisielk/errcheck
--   go = { "gopls", "gofmt", "gofumpt", "staticcheck", "govet", "golangci-lint" },
--   mail = { "proselint" },
--   markdown = { "marksman", "vale" },
-- }
-- vim.g.ale_fixers = {
--   go = { "gofumpt" },
--   html = { "prettier" },
--   json = { "prettier" },
--   lua = { "stylua" },
--   markdown = { "prettier" }, -- Disables trim_whitespace. See: https://github.com/dense-analysis/ale/discussions/4640
--   scss = { "prettier" },
--   sql = { "pgformatter" },
--   typescript = { "prettier" },
--   vue = { "prettier" },
--   yaml = { "prettier" },
--   ruby = { "rubocop" },
--   python = { "ruff" },
--   bazel = { "buildifier" },
--   ["*"] = { "remove_trailing_lines", "trim_whitespace" },
-- }
