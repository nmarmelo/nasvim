return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = '[G]it [S]tatus' })

        -- These don't really do anything right now. Maybe revisit one day.
        -- Or set up telescope to work with fugitive better.

--         vim.keymap.set("n", "<leader>gp", vim.cmd.Git('push'), { desc = '[G]it [p]ush' })
-- 
--         vim.keymap.set("n", "<leader>gP", function() vim.cmd.Git('pull', '--rebase') end, { desc = '[G]it [P]ull' })
-- 
--         vim.keymap.set("n", "<leader>gc", vim.cmd.Git('commit'), { desc = '[G]it [C]ommit' })
-- 
--         vim.keymap.set("n", "<leader>ga", ":Git add .", { desc = '[G]it [A]dd' })
-- 
--        local nasmarr_Fugitive = vim.api.nvim_create_augroup("nasmarr_Fugitive", {})
--
--         local autocmd = vim.api.nvim_create_autocmd
--        autocmd("BufWinEnter", {
--            group = nasmarr_Fugitive,
--            pattern = "*",
--            callback = function()
--                if vim.bo.ft ~= "fugitive" then
--                    return
--                end
--
--                local bufnr = vim.api.nvim_get_current_buf()
--                local opts = {buffer = bufnr, remap = false}
--                vim.keymap.set("n", "<leader>p", function()
--                    vim.cmd.Git('push')
--                end, opts)
--
--                -- rebase always
--                vim.keymap.set("n", "<leader>P", function()
--                    vim.cmd.Git({'pull',  '--rebase'})
--                end, opts)
--
--                -- NOTE: It allows me to easily set the branch i am pushing and any tracking
--                -- needed if i did not set the branch up correctly
--                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
--            end,
--        })


        -- vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
        -- vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
    end
}
