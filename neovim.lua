return {
	{
		"bjarneo/aether.nvim",
		name = "aether",
		priority = 1000,
		opts = {
			disable_italics = false,
			colors = {
				-- Monotone shades (base00-base07)
				base00 = "#222222", -- Default background
				base01 = "#525252", -- Lighter background (status bars)
				base02 = "#222222", -- Selection background
				base03 = "#525252", -- Comments, invisibles
				base04 = "#b9b9b9", -- Dark foreground
				base05 = "#ffffff", -- Default foreground
				base06 = "#ffffff", -- Light foreground
				base07 = "#b9b9b9", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#7c7c7c", -- Variables, errors, red
				base09 = "#7c7c7c", -- Integers, constants, orange
				base0A = "#a0a0a0", -- Classes, types, yellow
				base0B = "#8b8b8b", -- Strings, green
				base0C = "#868686", -- Support, regex, cyan
				base0D = "#686868", -- Functions, keywords, blue
				base0E = "#747474", -- Keywords, storage, magenta
				base0F = "#a0a0a0", -- Deprecated, brown/yellow
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
