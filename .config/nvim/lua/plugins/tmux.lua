return {
  "christoomey/vim-tmux-navigator",
  vim.keymap.set("n", "C-h", ":TmuxnavigateLeft<cr>"),
  vim.keymap.set("n", "C-j", ":TmuxnavigateDown<cr>"),
  vim.keymap.set("n", "C-k", ":TmuxnavigateUp<cr>"),
  vim.keymap.set("n", "C-l", ":TmuxnavigateRight<cr>"),
}
