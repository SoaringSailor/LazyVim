return {
  "folke/flash.nvim",
  keys = {
    { "s", mode = { "n", "x", "o" }, false }, -- disable s keybind because of substitute
    { "S", mode = { "n", "x", "o" }, false }, -- same thing
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
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    }, -- same thing
  },
}
