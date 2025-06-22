-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Custom: Get path keymaps
local function copy_path_to_clipboard(path_type)
  local path = vim.fn.expand(path_type)
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path, vim.log.levels.INFO)
end
vim.keymap.set("n", "<leader>pf", function() copy_path_to_clipboard("%:p") end, { desc = "Copy full file path to clipboard" })
vim.keymap.set("n", "<leader>pr", function() copy_path_to_clipboard("%:.") end, { desc = "Copy relative file path" }) -- FIX IS HERE!
vim.keymap.set("n", "<leader>pd", function() copy_path_to_clipboard("%:p:h") end, { desc = "Copy directory path to clipboard" })
vim.keymap.set("n", "<leader>pn", function() copy_path_to_clipboard("%:t") end, { desc = "Copy file name to clipboard" })

-- Diffview & Vim-fugitive plugin keybindings
vim.keymap.set("n", "<leader>go", "<Cmd>DiffviewOpen<CR>", { desc = "Diffview: Open all diffs" })
vim.keymap.set("n", "<leader>gc", "<Cmd>DiffviewClose<CR>", { desc = "Diffview: Close all diffs" })

-- Keybinding to remove whitespaces from file
vim.keymap.set("n", "<leader>cw", [[:%s/\s\+$//e<bar>:%s/\n\n\+$//e<CR>]], { desc = "Clean Whitespace and Extra Newlines" })

-- Ctrs+s doesn't save file in tmux hence save it with <leader>bs
vim.keymap.set('n', '<leader>bs', '<Cmd> w <CR>', {desc = "Save current buffer"}) -- Remap Ctrl+s to save
