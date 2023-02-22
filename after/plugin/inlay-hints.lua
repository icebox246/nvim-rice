require("inlay-hints").setup {
    renderer = "inlay-hints/render/eol",
    hints = {
        parameter = {
            show = false,
        },
    },
    eol = {
        type = {
            separator = ", ",
            format = function(hints)
                return string.format("%s", hints)
            end,
        },
    },
}
