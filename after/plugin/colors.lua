function ColorFix(color)
    color = color or "kanagawa-dragon"
    vim.cmd.colorscheme(color)

    if not vim.g.neovide then
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
end

ColorFix()
