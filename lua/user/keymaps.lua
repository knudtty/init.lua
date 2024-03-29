local function getHostname()
    local f = io.popen("/bin/hostname")
    if (f == nil) then return "" end
    local hostname = f:read("*a") or ""
    f:close()
    hostname = string.gsub(hostname, "\n$", "")
    return hostname
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- project view

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank to system clipboard

-- Paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p') -- paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P') -- paste to system clipboard

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- oops
vim.keymap.set("i", "<C-c>", "<Esc>")

-- search and replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/user/packer.lua<CR>");

-- close buffer
vim.keymap.set("n", "<leader>c", "<cmd>bd!<CR>")

-- Explorer
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")

-- git

