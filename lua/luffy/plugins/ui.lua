return {
  -- nvim-colorizer
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPost", "BufNewFile" }, -- Lazy load on file open
    config = function()
      require("colorizer").setup({
        filetypes = { "*" },
        user_default_options = {
          RGB = true,
          RRGGBB = true,
          names = false,
          css = true,
          tailwind = true,
        },
      })
      -- Keybindings to toggle colorizer
      vim.api.nvim_set_keymap('n', '<Leader>cc', ':ColorizerToggle<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<Leader>ce', ':ColorizerAttachToBuffer<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<Leader>cd', ':ColorizerDetachFromBuffer<CR>', { noremap = true, silent = true })
    end,
  },

  -- Tailwind CSS color preview in cmp
  {
    "js-everts/cmp-tailwind-colors",
    event = "InsertEnter",
  },

  -- TypeScript syntax highlighting
  {
    "HerringtonDarkholme/yats.vim",
    ft = { "typescript", "typescriptreact" },
  },

  -- Color picker (ccc.nvim)
  {
    "uga-rosa/ccc.nvim",
    cmd = { "CccPick", "CccHighlighterEnable", "CccHighlighterToggle" },
    opts = {
      highlighter = {
        auto_enable = true,
      },
    },
  },
}

