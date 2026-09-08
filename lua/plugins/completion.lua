return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            "saghen/blink.cmp",
        },

        config = function()
            local capabilities =
                require("blink.cmp").get_lsp_capabilities()

            vim.lsp.config("clangd", {
                capabilities = capabilities,

                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--header-insertion=iwyu",
                },
            })

            vim.lsp.config("rust_analyzer", {
                capabilities = capabilities,

                settings = {
                    ["rust-analyzer"] = {
                        check = {
                            command = "clippy",
                        },
                    },
                },
            })

            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            vim.lsp.config("ts_ls", {
                capabilities = capabilities,
            })

            vim.lsp.config("html", {
                capabilities = capabilities,
            })

            vim.lsp.config("cssls", {
                capabilities = capabilities,
            })

            vim.lsp.config("jsonls", {
                capabilities = capabilities,
            })

            vim.lsp.enable({
                "clangd",
                "rust_analyzer",
                "pyright",
                "ts_ls",
                "html",
                "cssls",
                "jsonls",
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                desc = "Documentation",
            })

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                desc = "Go to definition",
            })

            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
                desc = "Go to declaration",
            })

            vim.keymap.set("n", "gr", vim.lsp.buf.references, {
                desc = "References",
            })

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {
                desc = "Rename symbol",
            })

            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
                desc = "Code action",
            })

            vim.keymap.set(
                "i",
                "<C-k>",
                vim.lsp.buf.signature_help,
                {
                    desc = "Signature help",
                }
            )
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",

        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },

        opts = {
            ensure_installed = {
                "pyright",
                "ts_ls",
                "html",
                "cssls",
                "jsonls",
            },
        },
    },
}


