-- Color
vim.cmd.colorscheme('habamax')


-- Mouse
vim.opt.mouse = ''

-- Scroll
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.wrap = false

-- Highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Files
vim.opt.swapfile = false

-- Tab
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.tabstop = 2

-- Diagnostic
vim.diagnostic.config({ virtual_text = true })

-- LSP - clang
vim.opt.makeprg = 'ninja'
vim.lsp.config['clangd'] = {
  cmd = {
    'clangd',
    '--clang-tidy',
    '--enable-config',
    '--background-index',
    '--offset-encoding=utf-8',
  },
  root_markers = { 'compile_commands.json' },
  filetypes = { 'c', 'cpp' },
}
vim.lsp.enable('clangd')
