Map([[n]], [[<C-Left>]], [[:tabprevious<CR>]])        --switch to left file
Map([[n]], [[<C-Right>]], [[:tabnext<CR>]])           --switch to right file
Map([[n]], [[<C-Up>]], [[:tabnew .<CR>]])             --open filemanager to open new file

Map([[n]], [[<C-b>]], [[:NERDTreeToggle<CR>]])        --opens NvimTree
Map([[n]], [[<C-f>]], [[:Telescope find_files<CR>]])          --finds file in NvimTree
Map([[n]], [[<C-l>]], [[:Telescope live_grep<CR>]])          --finds file in NvimTree

Map([[n]], [[<S-z>]], [[:u<CR>]])                     --undo in shift + z
