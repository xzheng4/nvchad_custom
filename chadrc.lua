-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvchad",
   transparency = true,
}

M.plugins = {
  user = {
    ["goolord/alpha-nvim"] = {
      disable = true,
    },

    ["mhinz/vim-startify"] = {
      config = function()
        vim.g.startify_change_to_dir = 0
      end,
    },

    ["dhananjaylatkar/cscope_maps.nvim"] = {
      config = function()
        require("cscope_maps")
      end,
    },

    ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.lspconfig"
      end,
    },

  },
}


M.mappings = {
  ["telescope"] = {
    n = {
      ["<leader>fv"] = { "<cmd> Telescope grep_string <CR>", "�   grep string" },
    },
  },

  ["lspconfig"] = {
    n = {
      ["<F3>"] = {
        function()
          vim.lsp.buf.references {}
        end,
        "   lsp references",
      },
      ["<F4>"] = { "<cmd> cclose <CR>", "�   close quickfix" },
      ["<F2>"] = { "<cmd> copen <CR>", "�   jump to quickfix" },
    },
  },

  ["tabufline"] = {
    n = {
      -- disable conflict key
      ["<Bslash>"] = {"","Disabled TbufNum key"},
    },
  }

}

-- now run :PackerSync

return M
