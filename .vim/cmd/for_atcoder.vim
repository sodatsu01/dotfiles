augroup vimrc
  autocmd!
  autocmd FileType ruby nmap <buffer> <F5> :!ruby % < ./input<CR>
augroup END

:command! -nargs=0 Clip call Clip()
function Clip()
  :!cat % | pbcopy
endfunction
