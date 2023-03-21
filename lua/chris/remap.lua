
vim.g.mapleader = " "


vim.keymap.set("n", "<leader>tb", function()
  vim.cmd("tabnew")
end)

vim.keymap.set("n", "<leader>tl", function()
  vim.cmd("tabnew | terminal")
end)

-- move an dynamically indent multiple highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- don't move cursor when using J
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle of window with C-d and C-u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in middle of window when moving through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- don't put highligted section in buffer when pasting 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- don't delete to buffer; delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- disable Q
vim.keymap.set("n", "Q", "<nop>")

-- replace all instances of word in current cursor location 
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- command example vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- reload config file;:another command example
-- vim.keymap.set("n", "<leader><leader>", function()
  --  vim.cmd("so")
  --end)
