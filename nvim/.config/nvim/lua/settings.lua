-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- General 
-----------------------------------------------------------
vim.o.mouse = 'a'                                           -- change mouse support 



-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------
vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true                                         -- enable background buffers 
vim.o.history = 100                                         -- remember n lines in history 
vim.o.lazyredraw = true                                     -- faster scrolling
vim.o.synmaxcol = 240                                       -- max column for syntax highlight
vim.o.textwidth = 79                                        -- Maximum text width by default 
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.fileencoding = 'utf-8'                                -- Set default encode type for files
vim.o.pumheight = 10
vim.o.cmdheight = 2
vim.o.splitbelow = true                                     -- Append horizontal splits to the bottom
vim.o.splitright = true                                     -- Append vertical splits to the right
vim.o.termguicolors = true                                  -- True color support 
vim.o.conceallevel = 0                                      -- Conceal for vimtex and similars 
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300 
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"                             -- System clipboard by default
vim.o.hlsearch = false 
vim.o.ignorecase = false                                    -- Ignore case of search/substitutions
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.cursorline = true
vim.o.tabstop = 2                                           -- Number of spaces tabs count for
vim.o.softtabstop = 2
vim.o.shiftwidth = 2                                        -- Maximum text width by default
vim.o.autoindent = true                                     
vim.o.expandtab = true                                      -- Use spaces instead of tabs


vim.wo.wrap = false 
vim.wo.number = true                                        -- Cursor line with absolute line
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoindent = true
vim.bo.expandtab = true


-- Plugin settings 
-- nvim tree plugin 
vim.g.nvim_tree_auto_open = tree
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_gitignore = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_indent_markers = 1

--mappings todo move to mapping file
vim.cmd('nnoremap <space>e :NvimTreeToggle<CR>')
