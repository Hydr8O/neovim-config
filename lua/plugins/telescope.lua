return {
	"nvim-telescope/telescope.nvim",
	keys = { { "<leader>sf", "<cmd>Telescope find_files<cr>" }, { "<leader>sg", "<cmd>Telescope live_grep<cr>" } },
	dependencies = { "nvim-lua/plenary.nvim" },
}
