-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
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
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  ["coc.nvim"] = {
    config = { "\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15config.coc\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["committia.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/committia.vim"
  },
  ["deoplete.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/deoplete.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  neomake = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/neomake"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2[\0\0\3\0\5\0\f6\0\0\0'\1\1\0B\0\2\0029\1\2\0009\1\3\0014\2\0\0B\1\2\0019\1\4\0009\1\3\0014\2\0\0B\1\2\1K\0\1\0\npylsp\nsetup\ngopls\14lspconfig\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-ripgrep"] = {
    config = { "\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17nvim-ripgrep\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-ripgrep"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\2/\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\20config.nvimtree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/oceanic-next"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\0022\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/octo.nvim"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rainbow = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  tagbar = {
    config = { "\27LJ\2\2-\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\18config.tagbar\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-coc.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-coc.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-github.nvim"
  },
  ["telescope-heading.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-heading.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-symbols.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-symbols.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.ultisnips\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-delve"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-delve"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-equinusocio-material"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-equinusocio-material"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-github-dashboard"] = {
    commands = { "GHDashboard", "GHActivity" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/root/.local/share/nvim/site/pack/packer/opt/vim-github-dashboard"
  },
  ["vim-go"] = {
    config = { "\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14config.go\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-go"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-mundo"] = {
    config = { "\27LJ\2\2,\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\17config.mundo\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-mundo"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-synthwave84"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-synthwave84"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-terraform"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-go
time([[Config for vim-go]], true)
try_loadstring("\27LJ\2\2)\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\14config.go\frequire\0", "config", "vim-go")
time([[Config for vim-go]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
try_loadstring("\27LJ\2\2-\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\18config.tagbar\frequire\0", "config", "tagbar")
time([[Config for tagbar]], false)
-- Config for: coc.nvim
time([[Config for coc.nvim]], true)
try_loadstring("\27LJ\2\2*\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\15config.coc\frequire\0", "config", "coc.nvim")
time([[Config for coc.nvim]], false)
-- Config for: vim-mundo
time([[Config for vim-mundo]], true)
try_loadstring("\27LJ\2\2,\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\17config.mundo\frequire\0", "config", "vim-mundo")
time([[Config for vim-mundo]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2[\0\0\3\0\5\0\f6\0\0\0'\1\1\0B\0\2\0029\1\2\0009\1\3\0014\2\0\0B\1\2\0019\1\4\0009\1\3\0014\2\0\0B\1\2\1K\0\1\0\npylsp\nsetup\ngopls\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\0022\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\0020\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\21config.ultisnips\frequire\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-ripgrep
time([[Config for nvim-ripgrep]], true)
try_loadstring("\27LJ\2\2>\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\17nvim-ripgrep\frequire\0", "config", "nvim-ripgrep")
time([[Config for nvim-ripgrep]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GHDashboard lua require("packer.load")({'vim-github-dashboard'}, { cmd = "GHDashboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GHActivity lua require("packer.load")({'vim-github-dashboard'}, { cmd = "GHActivity", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
