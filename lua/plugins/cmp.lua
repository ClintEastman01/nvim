return {
  {
    "nvim-cmp",
    enabled = true,
    dependencies = {
      -- codeium
      {
        "Exafunction/codeium.nvim",
        enabled = false,
        cmd = "Codeium",
        build = ":Codeium Auth",
        opts = {},
      },
      {
        "supermaven-inc/supermaven-nvim",
        enabled = true,
        opts = {
          disable_inline_completion = true, -- disables inline completion for use with cmp
          disable_keymaps = true,
        },
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Disable automatic completion
      opts.completion = opts.completion or {}
      opts.completion.autocomplete = false

      -- Configure Tab to trigger completion
      opts.mapping = opts.mapping or {}
      opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          cmp.complete()
        end
      end, { "i", "s" })

      -- Configure Shift+Tab to select previous item
      opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" })

      -- Your existing source configurations
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 10,
      })
      table.insert(opts.sources, 2, {
        name = "supermaven",
        group_index = 1,
        priority = 99, -- Slightly lower priority than codeium
      })
    end,
  },
}
