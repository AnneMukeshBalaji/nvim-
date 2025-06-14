return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local shell = vim.fn.executable("fish") == 1 and vim.fn.exepath("fish") or vim.o.shell

      require("toggleterm").setup({
        shell = shell,
        direction = "float",
        shade_terminals = true,
        start_in_insert = true,
        persist_mode = true,
        close_on_exit = true,
      })

      local Terminal = require("toggleterm.terminal").Terminal

      local float_term = Terminal:new({ direction = "float", hidden = true })
      vim.keymap.set({ "n", "t" }, "<leader>j", function()
        float_term:toggle()
      end, { desc = "Toggle floating terminal" })
    end,
  },
}

