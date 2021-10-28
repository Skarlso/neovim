local present, telescope = pcall(require, "telescope")
if not present then
   return
end

local map = require('tools').map

require('telescope').setup({
  extensions = {
    media_files = {
      filetypes = {
        "png", "jpg", "jpeg",
        "pdf",
        "mp4", "mpeg", "mpg",
        "webp", "webm",
        "ttf", "otf", "woff",
      },
      find_cmd = "rg"
    }
  }
})

local extensions = {
  -- "dap",
  "media_files",
  "gh",
  "heading",
  "coc",
  "octo",
}

for idx = 1, #extensions do
  telescope.load_extension(extensions[idx])
end

-- map
map('n', '<C-L>', ':Telescope live_grep<CR>', {})
map('n', '<leader>gt', ':Telescope git_status<CR>', {})
map('n', '<leader>cm', ':Telescope git_commits<CR>', {})
map('n', '<leader>fh', ':Telescope help_tags<CR>', {})
map('n', '<leader>fo', ':Telescope oldfiles<CR>', {})
map('n', '<C-p>', ':Telescope find_files<CR>', {})
map('n', '<C-b>', ':Telescope buffers<CR>', {})
map('n', '<leader>r', ':Telescope lsp_references<CR>', {})
map('n', '<leader>i', ':Telescope lsp_implementations<CR>', {})
