return {
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',
    { 'j-hui/fidget.nvim',       opts = {} },
    { 'hrsh7th/cmp-nvim-lsp' },
    'folke/neodev.nvim',
  }
}
