-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- Custom: Get path keymaps
vim.keymap.set("n", "<leader>pf", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  vim.notify("Copied: " .. vim.fn.expand("%:p"), vim.log.levels.INFO)
end, { desc = "Copy full file path to clipboard" })

vim.keymap.set("n", "<leader>pr", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
  vim.notify("Copied: " .. vim.fn.expand("%"), vim.log.levels.INFO)
end, { desc = "Copy relative file path to clipboard" })

vim.keymap.set("n", "<leader>pd", function()
  vim.fn.setreg("+", vim.fn.expand("%:p:h"))
  vim.notify("Copied: " .. vim.fn.expand("%:p:h"), vim.log.levels.INFO)
end, { desc = "Copy directory path to clipboard" })

vim.keymap.set("n", "<leader>pn", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  vim.notify("Copied: " .. vim.fn.expand("%:t"), vim.log.levels.INFO)
end, { desc = "Copy file name to clipboard" })

-- Diffview & Vim-fugitive plugin keybindings
vim.keymap.set("n", "<leader>gvo", "<Cmd>DiffviewOpen<CR>", { desc = "Diffview: Open All Diffs" })
vim.keymap.set("n", "<leader>gvc", "<Cmd>DiffviewClose<CR>", { desc = "Diffview: Close" })
vim.keymap.set("n", "<leader>gvb", "<Cmd>Git blame<CR>", { desc = "Fugitive: blame file" })
vim.keymap.set("n", "<leader>gvd", "<Cmd>Gvdiffsplit<CR>", { desc = "Fugitive: git diff file" })

-- Keybinding to remove whitespaces from file
vim.keymap.set("n", "<leader>cw", [[:%s/\s\+$//e<CR>]], { desc = "Remove Trailing Whitespace" })
