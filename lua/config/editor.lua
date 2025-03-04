vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true

vim.opt.signcolumn = "yes"
vim.opt.shell = "powershell"
vim.opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy REmoteSIgned -command"
vim.opt.shellxquote = ""

vim.keymap.set("n", "-", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gs", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<leader>gh", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>ba", "<cmd>!powershell -ExecutionPolicy Bypass -File build.ps1<CR>")
vim.api.nvim_create_user_command("CMakeBuild", function()
	vim.cmd("!cd build ; cmake .. -G Ninja ; ninja")
	vim.cmd("!cd ..")
end, {})
vim.keymap.set("n", "<leader>bb", "<cmd>CMakeBuild<CR>")
