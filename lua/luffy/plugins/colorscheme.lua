return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon", -- Options: "storm", "moon", "night", "day"
      transparent = true, -- Make background transparent
      terminal_colors = true,
      styles = {
        comments = { bold = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "transparent", -- also make sidebar (like NvimTree) transparent
        floats = "transparent", -- make floating windows transparent
      },
    })

    vim.cmd("colorscheme tokyonight")
  end,
}


