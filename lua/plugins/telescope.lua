return {
    {
        "saghen/blink.cmp",

        version = "1.*",

        dependencies = {
            "rafamadriz/friendly-snippets",
        },

        opts = {
            keymap = {
                preset = "enter",

                ["<C-space>"] = {
                    "show",
                    "show_documentation",
                    "hide_documentation",
                },

                ["<C-n>"] = {
                    "select_next",
                    "fallback",
                },

                ["<C-p>"] = {
                    "select_prev",
                    "fallback",
                },
            },

            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 300,
                },

                menu = {
                    auto_show = true,
                },
            },

            signature = {
                enabled = true,
            },

            sources = {
                default = {
                    "lsp",
                    "path",
                    "snippets",
                    "buffer",
                },
            },
        },
    },
}


