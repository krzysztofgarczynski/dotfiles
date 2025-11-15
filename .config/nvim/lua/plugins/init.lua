return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "c", "cpp", "json", "python", "cmake", "make", "bash",
        "markdown", "verilog", "bitbake", "devicetree", "rust", "typst"
  		},
  	},
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "python-lsp-server",
        "clangd",
        "rust-analyzer",
        "typst-lsp"
      }
    }
  },
  {
      "luckasRanarison/clear-action.nvim",
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "charludo/projectmgr.nvim",
    lazy = false,
  },
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    opts = {
      open_for_directories = false,
      keymaps = {
        show_help = '<f1>',
      }
    }
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
      "thehamsta/nvim-dap-virtual-text"
    },
  },
  {
    "hedyhli/outline.nvim",
    cmd = {
      "Outline",
      "OutlineOpen",
    },
    opts = {},
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    opts = {
      suppressed_dirs = { "~/", "~/Projects/", "~/Downloads"},
    }
  },
  {
    "shahshlok/vim-coach.nvim",
    dependencies = { "folke/snacks.nvim" },
    config = function()
      require("vim-coach").setup()
    end,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    config = function()
        require("tiny-inline-diagnostic").setup()
        vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
    opts = {
      multilines = {enabled = true},
      show_source = {enabled = true},
      add_messages = {display_count = true},
    },
  }
}
