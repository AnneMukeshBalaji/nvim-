return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      -- Set up OneDarkPro theme with transparency
      require("onedarkpro").setup({
        options = {
          transparency = true,
        },
      })

      -- Apply colorscheme
      vim.cmd("colorscheme onedark_dark")

      -- ✅ Relative line numbers in white
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })

      -- ✅ Current line number (absolute) in green
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#00ff00", bold = true })

      -- ✅ Folder icons and names (closed folders) in LightSkyBlue
      vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#87CEFA" })
      vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#87CEFA" })
      vim.api.nvim_set_hl(0, "DevIconFolder", { fg = "#87CEFA" })

      -- ✅ Active/open folder name in green
      vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#00ff00", bold = true })

      -- ✅ Root folder line (e.g. ~/.config/nvim) in green
      vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#00ff00", bold = true })

      -- ✅ Terminal cursor color to white
      vim.api.nvim_set_hl(0, "TermCursor", { fg = "#ffffff", bg = "#ffffff" })
    end,
  },
}

