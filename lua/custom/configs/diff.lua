local M = {}

function M.show_git_diff()
  local builtin = require("telescope.builtin")
  local current_file = vim.fn.expand("%")

  builtin.git_bcommits({
    prompt_title = "Git Diff (Current File)",
    cwd = vim.fn.getcwd(),
    previewer = require("telescope.config").values.git_previewer,
    use_file_path = current_file,
  })
end

return M

