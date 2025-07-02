return {
  "nvim-neorg/neorg",
  ft = "norg",
  lazy = false,
  build = ":Neorg sync-parsers",
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/ginhub/notes",
            },
            default_workspace = "notes",
          },
        },
        ["core.concealer"] = {},
      },
    }
  end,
}
