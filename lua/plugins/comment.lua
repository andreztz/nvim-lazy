return {
    -- comment
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        opts = {},
    },
    -- todo highlight: Plugin para realçar e 
    -- procurar por comentários "todo, "HACK", "BUG" na base de código 
    {
        "folke/todo-comments.nvim",
        cmd = { "TodoTrouble", "TodoTelescope" },
        event = { "BufReadPost", "BufNewFile" },
        config = true,
        -- stylua: ignore
        keys = {
            {
                "]t",
                function() require("todo-comments").jump_next() end,
                desc = "Next todo comment"
            },
            {
                "[t",
                function() require("todo-comments").jump_prev() end,
                desc = "Previous todo comment"
            },
            {
                "<leader>xt",
                "<cmd>TodoTrouble<cr>",
                desc = "Todo (Trouble)"
            },
            {
                "<leader>xT",
                "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",
                desc = "Todo/Fix/Fixme (Trouble)"
            },
            {
                "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" 
            },
            {
                "<leader>sT",
                "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>",
                desc = "Todo/Fix/Fixme"
            },
        },
    },
}

