-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Create a custom command to display linters by filetype

-- Set "bazel" language type based on given files
-- Set filetype for 'BUILD' and 'BUILD.bazel' files
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = { "BUILD", "*.bazel", "*.bzl" },
  callback = function(args)
    vim.bo[args.buf].filetype = "bzl"
  end,
})

