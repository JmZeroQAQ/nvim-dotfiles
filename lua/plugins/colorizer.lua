return {
	-- high-performance color highlighter
	event = "VeryLazy",
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
}
