return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>c", group = "[C]ode", mode = { 'n', 'x' } },
      { "<leader>b", group = "[B]uffer" },
      { "<leader>f", group = "[F]ile/[F]ind" },
      { "<leader>g", group = "[G]it" },
      { "<leader>s", group = "[S]earch" },
    },
  }
}
