-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/nickjiang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/nickjiang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/nickjiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/nickjiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/nickjiang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { 'require("setup/comment")' },
    keys = { { "", "gc" }, { "", "gcc" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { 'require("setup/alpha")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  delimitMate = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/delimitMate",
    url = "https://github.com/Raimondi/delimitMate"
  },
  ["doom-one.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  edge = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/edge",
    url = "https://github.com/sainnhe/edge"
  },
  everforest = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["filetype.nvim"] = {
    config = { 'require("setup/filetype")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/filetype.nvim",
    url = "https://github.com/nathom/filetype.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { 'require("setup/gitsigns")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["hop.nvim"] = {
    config = { 'require("setup/hop")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["impatient.nvim"] = {
    config = { "require('impatient')" },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("setup/lualine")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neovim-session-manager"] = {
    config = { 'require("setup/session")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nightfox.nvim"] = {
    config = { 'require("setup/nightfox")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nord.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["null-ls.nvim"] = {
    config = { 'require("setup/null-ls")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { 'require("setup/cmp")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { 'require("setup/colorizer")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("setup/lsp")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("setup/tree")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { 'require("setup/treesitter")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { 'require("setup/onedark")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { 'require("setup/range-highlight")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/range-highlight.nvim",
    url = "https://github.com/winston0410/range-highlight.nvim"
  },
  ["renamer.nvim"] = {
    config = { 'require("setup/renamer")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  sonokai = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["stabilize.nvim"] = {
    config = { 'require("setup/stabilize")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { 'require("setup/telescope")' },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    after = { "vim-snippets" },
    after_files = { "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-closer"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-closer",
    url = "https://github.com/9mm/vim-closer"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-gruvbox8"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/vim-gruvbox8",
    url = "https://github.com/lifepillar/vim-gruvbox8"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-signify"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-snippets"] = {
    load_after = {
      ultisnips = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/opt/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["zen-mode.nvim"] = {
    config = { 'require("setup/zen-mode")' },
    loaded = true,
    path = "/Users/nickjiang/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^telescope"] = "telescope.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
require("setup/outline")
time([[Setup for symbols-outline.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
require("setup/nightfox")
time([[Config for nightfox.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
require("setup/zen-mode")
time([[Config for zen-mode.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("setup/tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require("setup/alpha")
time([[Config for alpha-nvim]], false)
-- Config for: renamer.nvim
time([[Config for renamer.nvim]], true)
require("setup/renamer")
time([[Config for renamer.nvim]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
require("setup/null-ls")
time([[Config for null-ls.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("setup/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: filetype.nvim
time([[Config for filetype.nvim]], true)
require("setup/filetype")
time([[Config for filetype.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("setup/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
require('impatient')
time([[Config for impatient.nvim]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
require("setup/stabilize")
time([[Config for stabilize.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require("setup/onedark")
time([[Config for onedark.nvim]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
require("setup/session")
time([[Config for neovim-session-manager]], false)
-- Config for: range-highlight.nvim
time([[Config for range-highlight.nvim]], true)
require("setup/range-highlight")
time([[Config for range-highlight.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("setup/lsp")
time([[Config for nvim-lspconfig]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'vim-signify'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'ultisnips', 'delimitMate'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-commentary', 'lualine.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-colorizer.lua', 'gitsigns.nvim', 'hop.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
