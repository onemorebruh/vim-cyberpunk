local telescope = require([[telescope]])
local telescopeConfig = require([[telescope.config]])

local actions = require([[telescope.actions]])

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, [[--hidden]])
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, [[--glob]])
table.insert(vimgrep_arguments, [[!**/.git/*]])


require([[telescope]]).setup({
  defaults = {
    borderchars = Theme.border_chars ,
    mappings = {
      i = {
        ["<Esc>"] = actions.close,
        ["<C-h>"] = [[which_key]]
      },
    },
    pickers = {
      find_files = {
        theme = [[dropdown]],
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
      },
    },
    extentions = {
  },
}
})
