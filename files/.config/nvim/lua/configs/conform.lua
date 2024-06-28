local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt", "golines", "goimports" },
    python = { "black" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    --yaml = { "prettier" },
    markdown = { "prettier" },
    vimwiki = { "prettier" },
    graphql = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    async = false,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
