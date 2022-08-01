local M = {}

local function bind(op, outer_opts)
	
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")
M.tnoremap = bind("t")

local nnoremap = M.nnoremap
local vnoremap = M.vnoremap
local inoremap = M.inoremap
local xnoremap = M.xnoremap
local tnoremap = M.tnoremap
local nmap = M.nmap

nnoremap("<leader>h", "<C-w><left>")
nnoremap("<leader>l", "<C-w><right>")
nnoremap("<leader>k", "<C-w><up>")
nnoremap("<leader>j", "<C-w><down>")
nnoremap("<leader><leader>", "<C-w>w")
nnoremap("<leader>q", "<C-w>q")
nnoremap("<leader>Q", ":wqa<CR>")
nnoremap("<leader>e", ":NvimTreeFocus<CR>")
nnoremap("<leader>v", "<C-v>")
nnoremap("<leader>x", "<C-x>")
nnoremap("<leader>f", ":Telescope find_files<CR>")
nnoremap("<leader>ii", ":NvimTreeFindFile <CR>")
nnoremap("<leader>gr", ":Telescope live_grep<CR>")
nnoremap("<leader>GR", ":Telescope grep_string<CR>")
nnoremap("<leader>gib", ":Telescope git_branches<CR>")
nnoremap("<leader>gis", ":Telescope git_status<CR>")
nnoremap("<leader>gic", ":Telescope git_commits<CR>")
nnoremap("<leader>dg", ":Telescope diagnostics<CR>")
nnoremap("<leader>buf", ":Telescope buffers<CR>")
nnoremap("<leader>imp", ":Telescope lsp_implementations<CR>")
nnoremap("<leader>doc", ":Lspsaga hover_doc<CR>")
nnoremap("<leader>def", ":Lspsaga preview_definition<CR>")
nnoremap("<leader>ù", ":Lspsaga open_floaterm<CR>")
tnoremap("<C-ù>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>")
nnoremap("<leader>r", ":Lspsaga rename<CR>")
nnoremap("<leader>gg", ":LazyGit<CR>")
nnoremap("ZP", ":BufferPrevious<CR>")
nnoremap("ZN", ":BufferNext<CR>")
nnoremap("ZQ", ":BufferClose<CR>")
nnoremap("ZA", ":BufferCloseAllButCurrent<CR>")
inoremap("<C-c>", "<Esc>")
nnoremap("<leader>p", "\"+p")
nnoremap("<leader>P", "\"+P")
vnoremap("<leader>P", "\"+P")
vnoremap("<leader>p", "\"+p")
nnoremap("<leader>a", ":Lspsaga code_action<CR>")
