--             _                      _
--  _ ____   _(_)_ __ ___    ___  ___| |_ _   _ _ __
-- | '_ \ \ / / | '_ ` _ \  / __|/ _ \ __| | | | '_ \
-- | | | \ V /| | | | | | | \__ \  __/ |_| |_| | |_) |
-- |_| |_|\_/ |_|_| |_| |_| |___/\___|\__|\__,_| .__/
--                                             |_|

require("user.config.options")
require("user.config.autocmds")
require("user.config.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("user.lazy")

require("user.lsp")
