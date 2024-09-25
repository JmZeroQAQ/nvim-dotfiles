return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "c", "go", "c++", "rust", "python" },
    auto_install = true,
  },
  build = ":TSUpdate"
}
