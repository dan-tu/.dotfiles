require('packer').startup(function() 
    use 'morhetz/gruvbox' -- Theme
    use 'wbthomason/packer.nvim' -- Packer manager

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'tpope/vim-commentary' -- Comment/uncomment
    use {
        'windwp/nvim-autopairs',
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'tpope/vim-surround'

    -- File explorer 
    use 'scrooloose/nerdtree'
    use {
        'mattn/emmet-vim',
        setup = function() 
            vim.g.user_emmet_leader_key = ','
            vim.g.user_emmet_mode = 'i'
        end
    }

    -- Git
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'tpope/vim-fugitive'
    use 'vim-airline/vim-airline'
    use {
        'junegunn/fzf',
        run = ':call fzf#install()'
    }
    use 'junegunn/fzf.vim'
    use 'stsewd/fzf-checkout.vim'

    use 'vim-scripts/restore_view.vim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

end)
