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

      -- ✅ Set highlight groups *after* colorscheme is applied

      -- Relative line numbers in white
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })

      -- Current line number (absolute) in green
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#000000", bold = true })

      -- Active/open folder name in green
      vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#00ffff", bold = true })

      -- Folder icons and names (closed folders) in sky blue
      local sky_blue = "#00ffff"
      vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = sky_blue })
      vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = sky_blue })
      vim.api.nvim_set_hl(0, "DevIconFolder", { fg = sky_blue })

      -- Root folder line (e.g. ~/.config/nvim) in green
      vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg ="#ffff00" , bold = true })


      -- Terminal cursor color to white
      vim.api.nvim_set_hl(0, "TermCursor", { fg = "#ffffff", bg = "#ffffff" })
    end,
  },
}

