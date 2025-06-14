return {
  "folke/tokyonight.nvim",
  name = "tokyonight",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { bold = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.MsgArea = { fg = "#00ff00" } -- or use c.green
        -- Noice-specific groups
        hl.NoiceCmdlinePopupBorder = { fg = c.cyan, bg = "NONE" }
        hl.NoiceCmdlinePopup = { fg = c.green, bg = "NONE" }
      end,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}

