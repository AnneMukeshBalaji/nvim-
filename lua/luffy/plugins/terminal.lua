return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local shell = vim.fn.executable("fish") == 1 and vim.fn.exepath("fish") or vim.o.shell

      require("toggleterm").setup({
        shell = shell,
        open_mapping = [[<leader>th]],
        direction = "horizontal",
        shade_terminals = true,
        start_in_insert = true,
        persist_mode = true,
        persist_size = true,
        close_on_exit = true,
      })

      -- Keymaps
      local Terminal = require("toggleterm.terminal").Terminal

      -- Toggle horizontal terminal
      vim.keymap.set({ "n", "t" }, "<leader>th", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

      -- Floating terminal
      local float_term = Terminal:new({ direction = "float", hidden = true })
      vim.keymap.set({"n","t"},"<leader>tf", function()
        float_term:toggle()
      end, { desc = "Toggle floating terminal" })

      -- Vertical terminal
      local vertical_term = Terminal:new({ direction = "vertical", hidden = true })
      vim.keymap.set({"n","t"},"<leader>tv", function()
        vertical_term:toggle()
      end, { desc = "Toggle vertical terminal" })
    end,
  },
}



