" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 自動補完メニュー
set wildmenu
set wildmode=full
" ヒストリー
set history=200
" 全ての数字を10進数として扱う
set nrformats=

" 見た目系
" 行番号を表示
set number
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" インデントはスマートインデント
set smartindent
"  改行時に前の行のインデントを継続する
set autoindent

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch

" 色味系
" ヴィジュアルモードを白抜き青背景にする
hi Visual ctermfg=255 ctermbg=12
" 検索結果を白抜き青背景
hi Search ctermfg=255 ctermbg=33

" キーマップ
" アクティブなファイルが含まれるディレクトリ展開
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%' 
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" プラグイン
runtime macros/matchit.vim
call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  " Plug 'HerringtonDarkholme/yats.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
