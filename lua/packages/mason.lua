require([[mason]]).setup({
  ui = {
    border = Theme.border
  },
  ensure_installed = {
    'rust_analyzer',
    'tsserver',
  }
})
