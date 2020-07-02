augroup vimrc
  autocmd!
  autocmd FileType ruby nmap <buffer> <F5> :!ruby % < ../input<CR>
  autocmd FileType java nmap <buffer> <F5> :!javac % < ../input<CR>
  autocmd FileType java nmap <buffer> <F6> :!java Main < ../input<CR>
augroup END

:command! -nargs=0 Input call Input()
function Input()
  :vs ../input
endfunction
