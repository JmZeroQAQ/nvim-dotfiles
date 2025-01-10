local opt = vim.opt

opt.clipboard = 'unnamedplus'
-- opt.virtualedit = "block"
opt.wildignorecase = true
opt.swapfile = false
opt.hidden = true
opt.showmode = false
opt.undofile = true
opt.cursorline = true
opt.mouse = 'a'
opt.cmdheight = 0

opt.history = 1000
opt.timeoutlen = 500
opt.updatetime = 500
opt.timeout = true
opt.ttimeout = true
opt.ttimeoutlen = 10

opt.ignorecase = true
opt.smartcase = true

opt.smarttab = true
opt.expandtab = true
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.completeopt = 'menu,menuone,noinsert,popup'
opt.scrolloff = 2
opt.sidescrolloff = 5

opt.list = true
opt.listchars = 'tab:» ,nbsp:+,trail:·,extends:→,precedes:←,'

opt.splitright = true
opt.splitbelow = true
opt.wrap = false
opt.number = true
opt.relativenumber = true
opt.signcolumn = 'yes'
opt.spelloptions = 'camel'
-- opt.textwidth = 80
-- opt.colorcolumn = "+0"
