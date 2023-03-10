local status, packer = pcall(require, "packer")
if not status then
    print("Packer is not installed")
    return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup END
]])

packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Dashboard is a nice start screen for nvim
	use("glepnir/dashboard-nvim")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
        setup = function()
            require("zpc.pluginsrc.telescope")
        end,
	})
	use("nvim-telescope/telescope-file-browser.nvim")

	use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting

	-- Productivity
	use("vimwiki/vimwiki")
	use("jreybert/vimagit")
	use("nvim-orgmode/orgmode")

	use("folke/which-key.nvim") -- Which Key
    -- A better statusline
	use({ 
        "nvim-lualine/lualine.nvim",
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require('zpc.pluginsrc.lualine')
        end,
    })

    -- a line for the vim tab page, not for buffers
    use({
        'nanozuki/tabby.nvim',
        config = function()
            require('zpc.pluginsrc.tabby')
        end,
    })

	-- File management --
	use("vifm/vifm.vim")
	use({
        "scrooloose/nerdtree",
        setup = function()
            require("zpc.pluginsrc.nerdtree")
        end,
    })

	use("tiagofumo/vim-nerdtree-syntax-highlight")
	use("ryanoasis/vim-devicons")

    -- Edit productivity
    use({
        "preservim/tagbar",
        setup = function()
            require("zpc.pluginsrc.tagbar")
        end,
    })

	-- Tim Pope Plugins --
	use("tpope/vim-surround")
	use("tpope/vim-commentary")

	-- Syntax Highlighting and Colors --
	use("PotatoesMaster/i3-vim-syntax")
	use("kovetskiy/sxhkd-vim")
	use("vim-python/python-syntax")
	use("ap/vim-css-color")

	-- Junegunn Choi Plugins --
	use("junegunn/goyo.vim")
	use("junegunn/limelight.vim")
	use("junegunn/vim-emoji")

	-- Colorschemes --
	-- use("RRethy/nvim-base16")
	-- use("kyazdani42/nvim-palenight.lua")
	use("EdenEast/nightfox.nvim")

	-- Other stuff --
	use({
        "frazrepo/vim-rainbow",
        -- config = function() 
        --     require('zpc.pluginsrc.vim-rainbow')
        -- end,
    })

	if packer_bootstrap then
		packer.sync()
	end
end)

