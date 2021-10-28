vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_frontmatter = 1       -- for YAML format
vim.g.vim_markdown_toml_frontmatter = 1  -- for TOML format
vim.g.vim_markdown_json_frontmatter = 1  -- for JSON format

vim.cmd([[
augroup pandoc_syntax
  au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
]])
