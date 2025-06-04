-- ~/.config/nvim/lua/plugins/diffview.lua
return {
  {
    "sindrets/diffview.nvim",
    name = "diffview",
    -- Optional: Load the plugin when Neovim starts.
    -- If you omit this, Diffview will load when you first use a Diffview command.
    event = "VimEnter",
    -- Recommended: For icons in Diffview's UI. LazyVim usually installs this anyway.
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    -- No 'config' function needed if you're happy with default settings.
    -- No 'keymaps' here, as we'll put them in lua/config/keymaps.lua for better organization.
  },
}
