return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  config = function()
    require("everforest").setup({
      -- Your config here
    })
  end,
}
