local loadVimFile = require("tools").loadVimFile

local modules = {
  'encrypted',
  'coc'
}

for idx = 1, #modules do
  loadVimFile(modules[idx])
end
