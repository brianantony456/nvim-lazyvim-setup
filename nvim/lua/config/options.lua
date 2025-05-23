-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Custom: add vertical lines for visibility. 72 - for git & docs.
vim.opt.colorcolumn = "72,80,120"
-- Set conceallevel to 0 to disable markdown concealing, this renders markdown
-- default is 2
vim.opt.conceallevel = 0
-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
-- Set winbar shows file path, helps with splits
vim.opt.winbar = "%=%m %f"
