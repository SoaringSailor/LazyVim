-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.conceallevel = 0 -- disable conceal i.e. markdown bold
opt.mouse = "" -- disable mouse support
opt.mousehide = true -- hide mouse if possible
opt.wrap = true -- wrap text if longer than window
opt.linebreak = true -- break lines at better poitions
opt.breakindent = true -- indent wrapped lines
opt.splitright = true -- Always vsplit to right
opt.splitbelow = true -- always hsplit below
