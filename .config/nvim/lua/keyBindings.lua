local keyMapping = vim.api.nvim_set_keymap
local keyMappingOptions = {noremap = true, silent = true}

vim.g.mapleader = ' '
keyMapping('i', '<c-j>', '<c-n>', keyMappingOptions)
keyMapping('i', '<c-k>', '<c-p>', keyMappingOptions)
keyMapping('n', '<leader>a', ':Telescope lsp_code_actions<cr>', keyMappingOptions)
keyMapping('n', '<leader>b', ':Telescope buffers show_all_buffers=true<cr>', keyMappingOptions)
keyMapping('n', '<leader>c', ':bwipeout<cr>', keyMappingOptions)
keyMapping('n', '<leader>d', ':Telescope lsp_definitions<cr>', keyMappingOptions)
keyMapping('n', '<leader>e', ':Telescope file_browser<cr>', keyMappingOptions)
keyMapping('n', '<leader>f', ':Telescope find_files<cr>', keyMappingOptions)
keyMapping('n', '<leader>g', ':G', keyMappingOptions)
keyMapping('n', '<leader>h', ':wincmd h<cr>', keyMappingOptions)
keyMapping('n', '<leader>i', ':Telescope lsp_document_diagnostics<cr>', keyMappingOptions)
keyMapping('n', '<leader>j', ':wincmd j<cr>', keyMappingOptions)
keyMapping('n', '<leader>k', ':wincmd k<cr>', keyMappingOptions)
keyMapping('n', '<leader>l', ':wincmd l<cr>', keyMappingOptions)
keyMapping('n', '<leader>o', ':Telescope lsp_references<cr>', keyMappingOptions)
keyMapping('n', '<leader>p', ':Telescope oldfiles<cr>', keyMappingOptions)
keyMapping('n', '<leader>q', ':quit!<cr>', keyMappingOptions)
keyMapping('n', '<leader>r', ':lua vim.lsp.buf.rename()<cr>', keyMappingOptions)
keyMapping('n', '<leader>s', ':Telescope live_grep<cr>', keyMappingOptions)
keyMapping('n', '<leader>t', ':chdir %:p:h<cr>:16sp term://zsh<cr>', keyMappingOptions)
keyMapping('n', '<leader>u', ':w<cr>:!groff -k -ms % -T pdf -U > %:r.pdf<cr><cr>', keyMappingOptions)
keyMapping('n', '<leader>v', '<cmd>lua vim.lsp.buf.hover()<cr>', keyMappingOptions)
keyMapping('n', '<leader>w', ':write<cr>', keyMappingOptions)
keyMapping('n', '<leader>x', ':xit<cr>', keyMappingOptions)
keyMapping('n', '<leader><leader>', ':', keyMappingOptions)
keyMapping('t', '<esc>', '<c-\\><c-n>', keyMappingOptions)
