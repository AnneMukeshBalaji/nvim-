return{
  'rcarriga/nvim-notify',
  config = function()
    require("notify").setup({
      stages = "fade",
      timeout = 2000,
    })
  end
}
