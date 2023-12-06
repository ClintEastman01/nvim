return {
  -- { "navarasu/onedark.nvim", lazy = false },
  { "AlphaTechnolog/onedarker.nvim" },
  { "kjssad/quantum.vim" },
  { "sainnhe/everforest", lazy = true },
  { "marko-cerovac/material.nvim" },
  {
    "lunarvim/darkplus.nvim",
    lazy = false,
    opts = {
      darkplus_style = "dark",
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      transparent_background = true,
      -- transparent_mode = true,

      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    name = "tokyonight",
    opts = {
      style = "night",
      transparent_background = true,
      transparent_mode = true,
    },
  },
  { "EdenEast/nightfox.nvim", lazy = true, name = "nightfox", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine" },
  { "dasupradyumna/midnight.nvim", lazy = true, priority = 1000 },
  { "shaunsingh/nord.nvim", lazy = true, priority = 1000 },
  { "sainnhe/edge", lazy = true },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material-s",
    lazy = false,
    priority = 1000,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        transparent_mode = true,
        -- background_clear = {
        --   -- "float_win",
        --   "toggleterm",
        --   "telescope",
        --   -- "which-key",
        --   "renamer",
        --   "notify",
        --   "nvim-tree",
        --   -- "neo-tree",
        --   "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        -- },
      })
    end,
  },
  { "ofirgall/ofirkai.nvim", branch = "exp" },
  -- { "sainttttt/flesh-and-blood" },
  { "lunarvim/synthwave84.nvim" },
  { "matsuuu/pinkmare" },
  { "RRethy/nvim-base16" },
}
