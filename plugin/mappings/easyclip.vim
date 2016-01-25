" Toggle paste formatting.
nmap cof <Plug>EasyClipToggleFormattedPaste

" Enable substitution operator.
nmap <silent> : <Plug>SubstituteOverMotionMap
nmap :: <Plug>SubstituteLine
xmap :s <Plug>XEasyClipPaste

" Use mM to move until end of line.
nmap mM m$
