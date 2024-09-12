return {{
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        require("configs.treesitter")
    end
}, {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require("configs.lspconfig")
    end
}, {
    "mfussenegger/nvim-dap",
    -- lazy = false,
    dependencies = {"rcarriga/nvim-dap-ui", "leoluz/nvim-dap-go", "nvim-neotest/nvim-nio"},
    config = function()
        require("configs.dap")
    end
}, {
    "williamboman/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = {"nvim-lspconfig"},
    config = function()
        require("configs.mason-lspconfig")
    end
}, {
    "mfussenegger/nvim-lint",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
        require("configs.lint")
    end
}, {
    "rshkarin/mason-nvim-lint",
    event = "VeryLazy",
    dependencies = {"nvim-lint"},
    config = function()
        require("configs.mason-lint")
    end
}, {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
        require("configs.conform")
    end
}, {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = {"conform.nvim"},
    config = function()
        require("configs.mason-conform")
    end
}, {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = {"Outline", "OutlineOpen"},
    -- keys = { -- Example mapping to toggle outline
    -- {
    --     "<leader>o",
    --     "<cmd>Outline<CR>",
    --     desc = "Toggle outline"
    -- }},
    opts = {
        -- Your setup opts here
    }
}}
