vim.cmd [[
    fu! SetLang(lang)
        call jobstart('xkb-switch -s ' . a:lang)
    endfunction

    fu! GetCurrentLang()
        return system('xkb-switch')
    endfunction

    let lastLang=GetCurrentLang()
    au InsertLeave * let lastLang=GetCurrentLang() | call SetLang('pl')
    au InsertEnter * :call SetLang(lastLang)
]]
