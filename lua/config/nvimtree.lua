local present, tree_c = pcall(require, "nvim-tree")
if not present then
  return
end

vim.cmd [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif]]

tree_c.setup {
  open_on_setup = false,
  open_on_tab = false,
  disable_netrw = true,
  hijack_netrw = false,
  update_cwd = false,
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    highlight_opened_files = "none",
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400
  }
}
