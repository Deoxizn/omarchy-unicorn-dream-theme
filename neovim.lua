return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#fff0f5",
                bg_dark = "#ffe4e9",

                fg = "#5c3a4a",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#d4a5b5",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#d4a5b5",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#f8a5b5",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#f8c8d4",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#d4b896",
                -- green: Comments, strings, success states, git additions
                green = "#f5d78e",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#f0e6d8",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#f8b5c6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#f8c8d4",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#d4a5b5",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
