" Enable new line and endwise rules.
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

" Add rules for LaTeX $ pairs.
call lexima#add_rule(
  \ {'char': '$', 'input_after': '$', 'filetype': 'latex'})
call lexima#add_rule(
  \ {'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'latex'})
call lexima#add_rule(
  \ {'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'latex'})
