" ===============================================================
" peace
" 
" URL: https://github.com/luanbitar/nvim
" Author: Luan Bitar &lt;gh/luanbitar&gt;
" License: MIT
" Last Change: 2019/08/14 15:15
" ===============================================================

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="peace"


let Italic = ""
if exists('g:peace_italic')
  let Italic = "italic"
endif
let g:peace_italic = get(g:, 'peace_italic', 0)

let Bold = ""
if exists('g:peace_bold')
  let Bold = "bold"
endif

let g:peace_bold = get(g:, 'peace_bold', 0)
hi ColorColumn guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#38FF38 ctermfg=83 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Cursor guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorIM guifg=#38FF38 ctermfg=83 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=#3264a8 ctermfg=61 guibg=#CC6567 ctermbg=167 gui=Bold,underline,reverse,Italic cterm=Bold,underline,reverse,Italic
hi CursorLine guifg=NONE ctermfg=NONE guibg=#232629 ctermbg=235 gui=NONE cterm=NONE
hi Directory guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffChange guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#232629 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SignColumn guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=NONE ctermfg=NONE guibg=#F0C674 ctermbg=222 gui=NONE cterm=NONE
hi LineNr guifg=#F0C674 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NonText guifg=#292d30 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#FFFFFF ctermfg=15 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PMenu guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PMenuSel guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuSbar guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PmenuThumb guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Question guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=NONE ctermfg=NONE guibg=#F0C674 ctermbg=222 gui=NONE cterm=NONE
hi SpecialKey guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineNC guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#79d1c5 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#6C5563 ctermbg=241 gui=NONE cterm=NONE
hi VisualNOS guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Comment guifg=#969896 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#3264a8 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#F0C674 ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#B294BB ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#B294BB ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#79d1c5 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#B294BB ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#79d1c5 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#79d1c5 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#3264a8 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#f0b274 ctermfg=216 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Debug guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Todo guifg=#CC6567 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_foreground = "#C5C8C6"
let g:terminal_color_background = "#1D1F21"
let g:terminal_color_0 = "#1D1F21"
let g:terminal_color_1 = "#CC6567"
let g:terminal_color_2 = "#B5BD68"
let g:terminal_color_3 = "#F0C674"
let g:terminal_color_4 = "#3264a8"
let g:terminal_color_5 = "#B294BB"
let g:terminal_color_6 = "#79d1c5"
let g:terminal_color_7 = "#C5C8C6"
let g:terminal_color_8 = "#969896"
let g:terminal_color_9 = "#CC6567"
let g:terminal_color_10 = "#B5BD68"
let g:terminal_color_11 = "#F0C674"
let g:terminal_color_12 = "#3264a8"
let g:terminal_color_13 = "#B294BB"
let g:terminal_color_14 = "#79d1c5"
let g:terminal_color_15 = "#FFFFFF"

" ===================================
" Generated by Estilo 1.4.1
" https://github.com/jacoborus/estilo
" ===================================
