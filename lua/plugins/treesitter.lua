return {
  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "javascript",
        "json",
        "yaml",
        "html",
        "css",
        "scss",
        "lua",
        "bash",
        "toml",
        "jsonc",
        "vue",
        "svelte",
        "graphql",
        "dockerfile",
        "python",
        "rust",
        "go",
        "gomod",
        "java",
        "php",
        "ruby",
        "regex",
        "comment",
        "query",
        "c",
        "cpp",
      })
    end,
  },
}
