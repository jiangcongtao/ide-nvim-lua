require('onedark').setup()

-- Example config in Lua
vim.g.onedark_italic_functions = true
vim.g.onedark_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.onedark_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme onedark]]
