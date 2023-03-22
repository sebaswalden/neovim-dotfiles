require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "help", "svelte", "css", "scss", "html", "tsx" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        -- Select the entire Svelte block (template, script, or style) with `as`
        ["as"] = "@block.outer",
        -- Select the Svelte tag with `at`
        ["at"] = "@tag",
        -- Select the entire React component with `ac`
        ["ac"] = "@class.outer",
      },
    },
  },

  svelte = {
    enable = true,
    parser_config = {
      style_element = "style",
    },
  },

  -- Additional configuration options for the `typescript` parser
  -- These options enable parsing of JSX and TSX syntax in TypeScript files
  -- See the `nvim-treesitter` documentation for more details
  -- https://github.com/nvim-treesitter/nvim-treesitter#available-parsers
  typescript = {
    jsx_element = "element",
    jsx_fragment = "fragment",
    jsx_attribute = "attribute",
    use_tsserver = true,
  },

}
