local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

-- [[ plug.lua ]]

return require('packer').startup({function(use)
    -- [[ Plugins list ]] --

    -- use 'kyazdani42/nvim-web-devicons'

    -- [[ File Navigation ]]
    use {
        'kyazdani42/nvim-tree.lua',                      -- filesystem navigation
        requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
    }

    -- [[ Theme ]]
    use 'mhinz/vim-startify'                        -- start screen
    use 'DanilaMihailov/beacon.nvim'                -- cursor jump
    use {
        'nvim-lualine/lualine.nvim',                     -- statusline
        requires = {'kyazdani42/nvim-web-devicons',
        opt = true}
    }
    use 'tanvirtin/monokai.nvim'
    -- use 'navarasu/onedark.nvim'

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    use 'majutsushi/tagbar'                         -- code structure
    -- use 'Yggdroot/indentLine'                       -- see indentation
    use 'tpope/vim-fugitive'                        -- git integration
    use 'junegunn/gv.vim'                           -- commit history
    use 'windwp/nvim-autopairs'

    -- [[ LSP ]]
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- [[ Rust ]]
    use 'simrat39/rust-tools.nvim'

   -- Completion framework:
    use 'hrsh7th/nvim-cmp'

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'

    -- use {'hrsh7th/cmp-cmdline'}

    --- File parser --
    use 'nvim-treesitter/nvim-treesitter'

    -- Inspector --
    -- use 'puremourning/vimspector'

    -- Terminal --
    use 'voldikss/vim-floaterm'

    -- Indent --
    -- use 'lukas-reineke/indent-blankline.nvim'

    -- Surround --
    use 'tpope/vim-surround'

    -- Highlight other uses of word
    use 'RRethy/vim-illuminate'

    -- Comment --
    use 'numToStr/Comment.nvim'

    -- Search --
    use 'burntsushi/ripgrep'

    -- Find --
    use 'sharkdp/fd'

    -- Trouble --
    use 'folke/trouble.nvim'

    -- Highlight Arguments definitions and usage
    use {
        'm-demare/hlargs.nvim',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }

    -- Hyper focus
    use 'junegunn/limelight.vim'

    -- Credo elixir
    use {
        'jose-elias-alvarez/null-ls.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }


    use 'ntpeters/vim-better-whitespace'

    -- for bootstrapping --
    if packer_bootstrap then
        require('packer').sync()
    end

end,
config = {
    package_root = vim.fn.stdpath('config') .. '/site/pack'
}})
