return {
  "folke/flash.nvim",
  keys = {
    { "s", false }, -- disable s keybind because of substitute
    { "S", false }, -- same thing
    {
      "<A-s>",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
    {
      "<A-S>",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    }, -- same thing
  },
}
