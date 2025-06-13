return {
  "folke/trouble.nvim",
  cmd = "Trouble", -- Lazy-load on command
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  opts = {
    use_diagnostic_signs = true, -- Use the same signs as LSP
    focus = true,               -- Focus the Trouble window when opened
  },
  keys = {
    {
      "<leader>xw",
      "<cmd>Trouble diagnostics toggle<CR>",
      desc = "Open trouble workspace diagnostics",
    },
    {
      "<leader>xd",
      "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
      desc = "Open trouble document diagnostics",
    },
    {
      "<leader>xq",
      "<cmd>Trouble quickfix toggle<CR>",
      desc = "Open trouble quickfix list",
    },
    {
      "<leader>xl",
      "<cmd>Trouble loclist toggle<CR>",
      desc = "Open trouble location list",
    },
    {
      "<leader>xt",
      "<cmd>Trouble todo toggle<CR>",
      desc = "Open todos in trouble",
    },
  },
}

