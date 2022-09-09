--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<C-t>', ":NvimTreeToggle <CR>", {})

-- Toggle more plugins
map('n', '<leader>l', [[:IndentLinesToggle<CR>]], {})
map('n', '<leader>t', [[:TagbarToggle<CR>]], {})
map('n', '<leader><leader>', [[:Telescope find_files<CR>]], {})
map('n', '<leader>f', [[:Telescope live_grep<CR>]], {})
map('n', '<leader>b', [[:Telescope buffers<CR>]], {})

-- Vim inspector
-- vim.cmd([[
--     nmap <F9> <cmd>call vimspector#Launch()<cr>
--     nmap <F5> <cmd>call vimspector#StepOver()<cr>
--     nmap <F8> <cmd>call vimspector#Reset()<cr>
--     nmap <F11> <cmd>call vimspector#StepOver()<cr>")
--     nmap <F12> <cmd>call vimspector#StepOut()<cr>")
--     nmap <F10> <cmd>call vimspector#StepInto()<cr>")
-- ]])

-- map('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", {})
-- map('n', "Dw", ":call vimspector#AddWatch()<cr>", {})
-- map('n', "De", ":call vimspector#Evaluate()<cr>", {})

-- FloaTerm configuration
map('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", {})
map('n', "t", ":FloatermToggle myfloat<CR>", {})
map('t', "<Esc>", "<C-\\><C-n>:q<CR>", {})


-- Code navigation shortcuts
vim.cmd([[
    nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
    nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
    nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
    nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
    nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
    nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
    nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
]])

-- Abbreviation for pry debugger
vim.cmd('iab d;; require IEx; IEx.pry()')

-- Move 1 more lines up or down in normal and visual selection modes.
map('n', 'Q', ":m .-2<CR>==", {})
map('n', 'A', ":m .+1<CR>==", {})
map('v', 'Q', ":m '<-2<CR>gv=gv", {})
map('v', 'A', ":m '>+1<CR>gv=gv", {})

-- vim-test config
map('n', 'rn', ":TestNearest<CR>", {})
map('n', 'rf', ":TestFile<CR>", {})
map('n', 'rs', ":TestSuite<CR>", {})
map('n', 'rl', ":TestLast<CR>", {})
map('n', 'rv', ":TestVisit<CR>", {})
