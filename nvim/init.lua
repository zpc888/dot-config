-- :lua print(vim.inspect(vim.api.nvim_list_runtime_paths()))
-- doesn't show ~/.config/nvim/lua in my nvim runtimepath
vim.opt.runtimepath:append('~/.config/nvim/lua')

require("zpc.base")
require("zpc.highlights")
require("zpc.maps")
require("zpc.plugins")
require("zpc.bootstrap")

