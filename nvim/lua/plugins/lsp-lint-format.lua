-- custom formatters
return {
  -- mason plugin installer: eg installs ruff, rubocop etc.
  -- Step 1: add plugins here to install it.
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "buildifier",  -- for bazel
        "debugpy", -- required by nvim-dap-python plugin
        "gofumpt", -- for go like fmt but stricter
        "gopls",
        "goimports",
        "prettier", -- for web, yaml, markdown etc formatting
        "ruff", -- python linter, formatter
        "shfmt", -- for shell files
        "rubocop", -- for ruby
        "stylua", -- for lua
        "markdownlint-cli2", -- for markdown linting
        "markdown-toc", --for markdown formatting
      },
    },
  },
  -- formatter
  -- Step 2: configure here to prevent overlap and failure to solve conflicts.
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          css = { "prettier" },
          html = { "prettier" },
          js = { "prettier" },
          json = { "prettier" },
          markdown = { "prettier", "markdownlint-cli2", "markdown-toc" },
          python = { "ruff" },
          ruby = { "rubocop" },
          sh = { "shfmt" },
          yaml = { "prettier" },
          bzl = { "buildifier" },
          go = { "goimports", "gofumpt" },
        },
      default_format_opts = {
        timeout_ms = 10000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },

        -- The options you set here will be merged with the builtin formatters.
        -- You can also define any custom formatters here.
        formatters = {
          injected = { options = { ignore_errors = true } },
          -- # Example of using dprint only when a dprint.json file is present
          -- dprint = {
          --   condition = function(ctx)
          --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
          --   end,
          -- },
          --
          -- # Example of using shfmt with extra args
          -- shfmt = {
          --   prepend_args = { "-i", "2", "-ci" },
          -- },

          -- buildifier = {
          --   prepend_args = { "--lint=all", "--fix=true" },
          -- },
        },
      }
      return opts
    end
  },

  -- linter
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint-cli2" },

        python = { "ruff" },
        ruby = { "rubocop" },
        bzl = { "buildifier" },
        -- Use the "*" filetype to run linters on all filetypes.
        -- ['*'] = { 'global linter' },
        -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
        -- ['_'] = { 'fallback linter' },
        -- ["*"] = { "typos" },
      },
      -- LazyVim extension to easily override linter options
      -- or add custom linters.
      ---@type table<string,table>
      linters = {
        -- -- Example of using selene only when a selene.toml file is present
        -- selene = {
        --   -- `condition` is another LazyVim extension that allows you to
        --   -- dynamically enable/disable linters based on the context.
        --   condition = function(ctx)
        --     return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
      },
    },
  },

  -- lsp server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {},
        ruff = {},
        marksman = {},
        gopls = {},
      },

    },
    -- opts = function()
    --   -- disable a keymap
    --   vim.keymap.set("n", "ck", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation" })
    -- end,
  }
}
