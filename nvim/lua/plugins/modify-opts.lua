-- lua/plugins/which-key_config.lua
return {
  {
    'folke/tokyonight.nvim',
    lazy = false, -- Make sure it's loaded eagerly if you don't have a config
    priority = 1000, -- Make sure it loads before other plugins that need colors
    config = function()
      require('tokyonight').setup({
        style = 'moon' -- Set the style to moon
      })
    end
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
          }
        }
      },
    },
  },
}
