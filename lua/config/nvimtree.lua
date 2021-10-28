local present, tree_c = pcall(require, "nvim-tree")
if not present then
  return
end

local map = require('tools').map


--local tree_cb = tree_c.nvim_tree_callback
local g = vim.g

g.nvim_tree_side = "left"
g.nvim_tree_width = 25
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_ignore_ft = {"dashboard"} -- don't open tree on specific fiypes.
g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_root_folder_modifier = table.concat {
  ":t:gs?$?/..",
  string.rep(" ", 1000),
  "?:gs?^??"
}
g.nvim_tree_allow_resize = 1
g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names

g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
  -- folder_arrows= 1
}
g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    -- arrow_open = "",
    -- arrow_closed = "",
    default = "",
    open = "",
    empty = "", -- 
    empty_open = "",
    symlink = "",
    symlink_open = ""
  }
}

vim.cmd [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif]]

tree_c.setup {
  open_on_startup = false,
  auto_open = false,
  auto_close = false, -- closes tree when it's the last window
  tab_open = false,
  disable_netrw = true,
  hijack_netrw = false,
  update_cwd = true,
  follow = true,
  lsp_diagnostics = true,
}

-- map
map('n', '<leader>p', ':NvimTreeToggle<CR>', {})
