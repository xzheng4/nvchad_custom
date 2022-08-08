-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   -- theme = "gruvchad",
}

M.plugins = {
  user = {
    ["goolord/alpha-nvim"] = {
      disable = false,
    },

    -- we are just modifying lspconfig's packer definition table
    -- put this in your custom plugins section i.e M.plugins.user field 

    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.lspconfig"
      end,
    },

  },
}

-- now run :PackerSync

return M
