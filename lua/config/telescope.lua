local present, telescope = pcall(require, "telescope")
if not present then
   return
end

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
