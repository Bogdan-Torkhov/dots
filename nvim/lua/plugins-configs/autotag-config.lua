local setup, autotag = pcall(require, "nvim-ts-autotag")
if not setup then
  return
end
require('nvim-ts-autotag').setup()
