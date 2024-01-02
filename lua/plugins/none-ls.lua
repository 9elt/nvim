return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        nls.builtins.formatting.clang_format.with({
          extra_args = {
            "-style=file:" .. vim.fn.expand("~/.config/nvim/clang-format.yaml"),
          },
        }),
      })
    end,
  },
}
