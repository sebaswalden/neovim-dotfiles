require("sebaswalden.remap")
require("sebaswalden.set")
require("sebaswalden.statusline")

vim.cmd [[
let base16_colorspace = 256
let NERDTreeShowHidden = 1
]]
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
