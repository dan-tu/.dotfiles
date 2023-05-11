local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd.packadd("packer.nvim")
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer manager
    use 'morhetz/gruvbox'
    use 'sainnhe/gruvbox-material'
    use 'shaunsingh/nord.nvim'
    use 'github/copilot.vim' -- Yup...
    use 'tpope/vim-commentary' -- Comment/uncomment
    use 'tpope/vim-surround'

    use ({
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    })
    -- Syntax tree
    use ({
        'nvim-treesitter/nvim-treesitter',
        {run=':TSUpdate'}
    })
    use 'nvim-treesitter/playground'


    -- Markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- File explorer 
    use 'scrooloose/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'

    -- Git
    use 'tpope/vim-fugitive'
    use 'vim-airline/vim-airline'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            --{'hrsh7th/cmp-nvim-lsp-signature-help'}

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }

    use {
        'windwp/nvim-autopairs',
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'windwp/nvim-ts-autotag'

    -- use {
    --     'mattn/emmet-vim',
    --     setup = function() 
    --         vim.g.user_emmet_leader_key = ','
    --         vim.g.user_emmet_mode = 'i'
    --     end
    -- }

    use 'Exafunction/codeium.vim'


    if packer_bootstrap then
        require('packer').sync()
    end
end)
