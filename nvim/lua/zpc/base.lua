local g = vim.g
local o = vim.o
local opt = vim.opt

o.termguicolors = true
-- o.background = 'dark'

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- o.nocompatible = true        -- broken via vim api
o.showmatch = true
o.ignorecase = true
o.hlsearch = true
o.autoindent = true

o.number = true
o.numberwidth = 2
o.relativenumber = true
o.signcolumn = "yes"
-- o.cursorline = true

opt.wildmode = {'longest', 'list'}
o.cc = 120

o.expandtab = true
o.smarttab = true
o.cindent = true
o.wrap = true
o.textwidth = 300
o.list = false
o.listchars = "trail:·,tab:→ ,extends:▸,precedes:◂,eol:↲,nbsp:◇"
-- o.listchars = "trail:·,tab:→ ,extends:▸,precedes:◂,eol:↲,nbsp:␣"
o.clipboard = "unnamedplus"

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1  -- if negative, shiftwidth value is used

opt.mouse = "a"

-- Case insensitive searching UNLESS /C or capital in search
-- o.ignorecase = true
-- o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true


-- Map <leader> to space
-- g.mapleader = " "
-- g.maplocalleader = " "
