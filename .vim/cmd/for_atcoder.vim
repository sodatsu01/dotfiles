augroup vimrc
  autocmd!
  autocmd FileType ruby nmap <buffer> <F5> :!ruby % < ../input<CR>
augroup END

:command! -nargs=0 Clip call Clip()
function Clip()
  :!cat % | pbcopy
endfunction

:command! -nargs=0 Input call Input()
function Input()
  :vs ../input
endfunction
