return {
    'goolord/alpha-nvim',
    config = function ()
        local dashboard = require'alpha.themes.dashboard'
        local startify = require'alpha.themes.startify'

        -- ASCII Art Header
        dashboard.section.header.val = [[


░▒█▄░▒█░▒█▀▀▀░▒█▀▀▀█░▒█░░▒█░▀█▀░▒█▀▄▀█
░▒█▒█▒█░▒█▀▀▀░▒█░░▒█░░▒█▒█░░▒█░░▒█▒█▒█
░▒█░░▀█░▒█▄▄▄░▒█▄▄▄█░░░▀▄▀░░▄█▄░▒█░░▒█

        ]]

        -- Buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
            dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
            dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        -- Recently Used Files
        dashboard.section.mru = startify.section.mru
        dashboard.section.mru.opts = {
        }

        -- Set layout and setup
        dashboard.opts.layout = {
            { type = "padding", val = 2 },
            dashboard.section.header,
            { type = "padding", val = 2 },
            dashboard.section.buttons,
            { type = "padding", val = 2 },
            dashboard.section.mru,
        }

        require'alpha'.setup(dashboard.opts)
    end
}
