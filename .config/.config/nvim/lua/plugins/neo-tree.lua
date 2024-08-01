--- @type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_diagnostics = true,
    default_component_configs = {
      git_status = {
        symbols = {
          added = "󰬈",
          modified = "󰬔",
          deleted = "󰬋",
          renamed = "󰬙",
          untracked = "󰬛",
          ignored = "󰬐",
          unstaged = "󰬜",
          staged = "󰬚",
          conflict = "󰬊",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- Make filtered items visible
        show_hidden_count = true, -- Show the count of hidden items
        hide_dotfiles = false, -- Do not hide dotfiles
        hide_gitignored = true, -- Hide items ignored by git
        hide_by_name = { -- Specific items to hide by name
          -- Add any filenames you want to hide
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = { -- Items to never show
          -- Add any patterns or specific items to never show
        },
      },
    },
  },
}
