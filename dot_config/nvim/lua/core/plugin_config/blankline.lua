-- local highlight = {
--     "PastelBlue",
--     "PastelPink",
--     "White",
-- }

-- local hooks = require "ibl.hooks"
-- -- create the highlight groups in the highlight setup hook, so they are reset
-- -- every time the colorscheme changes
-- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--     vim.api.nvim_set_hl(0, "PastelBlue", { fg = "#55CDFC" })
--     vim.api.nvim_set_hl(0, "PastelPink", { fg = "#F7A8B8" })
--     vim.api.nvim_set_hl(0, "White", { fg = "#FFFFFF" })
--     vim.api.nvim_set_hl(0, "PastelPink", { fg = "#F7A8B8" })
-- end)

-- require("ibl").setup {
--     indent = {
--         highlight = highlight
--     }
-- }
