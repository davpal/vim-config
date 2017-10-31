let mapleader = ','

map <C-\> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>
nnoremap gh :tabfirst<CR>
nnoremap gk :tabnext<CR>
nnoremap gj :tabprev<CR>
nnoremap gl :tablast<CR>
noremap <Leader>h :noh <CR>
noremap <Leader>q :quit<CR>
noremap <Leader>E :qa!<CR>
noremap <Leader>w :w<CR>
noremap <Leader>e :e %:h <CR>
nmap <Leader>s :split <CR>
nmap <Leader>v :vs <CR>
nmap <Leader>t :tab split <CR>
nmap <Leader>b :ConqueTerm bash <CR>
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
nnoremap <Leader>d : bnext<CR>
nnoremap <Leader>a : bprevious<CR>
nnoremap <Leader>q : bdelete<CR>
"map <Leader>c :w <bar>  :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
map <Leader>c :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

"autocmd bufenter * cd %:p:h
"Wyglad i  WYGODA
syntax on                         " Włącza kolorowanie składni
set t_Co=256
"colo darkblue
"autocmd vimenter * colorscheme desert256  " zmienia schemat kolorów
colorscheme gruvbox
set background=dark               " Powiadamia Vima o użytym ciemnym motywie
set nocompatible                  " Utawia tryb rozszerzony Vima, zamiast domyślnego, kompatybilnego z Vi
set confirm                       " pytaj o potwierdzenie, zamiast odmawiać wykonania operacji
set cursorline                    " podświetl aktualną linię
hi Cursorline term=none cterm=none ctermbg=233
set hidden                        " ukryj wszystkie 'nieaktywne' bufory, zamiast usuwać z pamięci
set laststatus=2                  "Zawsze pokazuj pasek statusu
set lazyredraw                    "Nie przerysowuj ekranu podczas wykonywania makr, rejestrów itp
set nu
set ruler                         " Display the ruler.
set nowrap                          " Wrap the displayed text.
set rulerformat=%l,%c%V%=#%n\ %3p%% " ustaw zawartość linii statusu

"Włącza autoładowanie wcięć i wtyczek dla poszczególnych typów plików
filetype on                       " Enable file type detection.
filetype plugin on                " Enable file type plug-ins.
filetype plugin indent on         " włącza autoładowanie wcięć i wtyczek dla poszczególnych typów plików

"USTAWIENIA DOTYCZĄCE WCIĘĆ
set tabstop=4                     " Domyślna długość znaku tabulacji
set shiftwidth=4                  " Domyślna długość wcięcia/przesunięcia
set expandtab                     " Automatycznie użyj spacji zamiast znaku tabulacji
set softtabstop=4                 " Set the number of spaces for indentation.
set shiftround
set mouse=a

set smarttab

"Ustawienia wyszukiwania
set incsearch                     " Highlight matching text while typing.
set hlsearch                      " Highlight all matching patterns.

" Pozostałe ustawienia
set fileencodings=ucs-bom,utf-8,latin1 "ustawienia kodowania plików
set backupcopy=no                 " Do not create backup copies.
set formatoptions=tcqr            " Adjust automatic formatting.
set backspace=indent,eol,start    " Specify the backspace behavior.
set history=1000                  " Specify the number of possible undos.
set nospell                       " Disable spell checking by default.
set shortmess=atToOI              " Skróć niektóre informacje (np. użyj '[New]' zamiast '[New File])

"Nie zapisuj plików backupu/writeback/swapfile
set nobackup
set nowb
set noswapfile

"Editing settings:

set textwidth=0                   " Do not set the default text width.
set linebreak                     " Break lines at a word boundary.
set nojoinspaces                  " Do not insert a second space after a sentence when joining lines.
set autoindent                    " Copy ident from previous lin when starting a new one
set confirm                       " pytaj o potfierdzenie, zamiast odmawiać wykonania operacji
set scrolloff=5                   " zawsze widoczne 5 linii przed i po kursorze
set listchars=tab:▸-,trail:·      " ustaw znaki zastępujące znak tabulatora i białe znaki na końcach linii
set showbreak=>                   " łańcuch znaków które pokazywane są by oznaczyć zwinięte linie
set showcmd                       " pokazuj ostatnią wykonywaną komendę w ostatniej linii edytora
set showmatch                     " gdy zostanie wpisany zamykający nawias skocz na chwilę do otwierającego
set spelllang=pl,en               " ustawinia sprawdzania pisowni
set viewoptions=cursor            " zapisuj w widoku tylko pozycję kursora
set viminfo='20,<1000,h,f0        " Konfiguracja informacji zapisywanych w pliku .viminfo
set wildmenu                      " Pokazuje listę możliwych dopełnień na pasku statusów
set selection=exclusive           " Zaznaczenie bez kursora w trybie wizualnym i zaznaczania
set whichwrap+=<,>,[,]            " Dodaj klawisze kursora do przechodzenia pomiędzy liniami

" ustawienie kursora w miejscu gdzie był przed zamknięciem pliku
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") |
    \ exe "normal `\"" | endif
set guicursor=n-v-c:block,o:hor50,i-ci:hor15,r-cr:hor30,sm:block,a:blinkon0  "zmienia ustawienia kursora

let sherlock#disable=1

execute pathogen#infect()

"colorscheme default_modified
"NERDTree
"autocmd vimenter * NERDTree
"Uruchomienie przy otwarciu vima bez pliku
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
":q przy ostatnim oknie zamyka wszystko
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '∟'

" OmniCppComplete
" configure tags - add additional tags here or comment out not-used ones set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags+=/home/fatei/tags
" build tags of your own project with Ctrl-F12
map <C-F12> :w <bar>  :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
set nocp
inoremap <Leader>j <C-x><C-o> “ start with ctrl+j

"filetype
au BufNewFile,BufRead ChangeLog set filetype=text
au BufNewFile,BufRead *.sig set filetype=cpp
au BufNewFile,BufRead *.cmd set filetype=sh
au BufNewFile,BufRead *.cc@@/* set filetype=cpp
au BufNewFile,BufRead *.hh@@/* set filetype=cpp
au BufNewFile,BufRead *.sig@@/* set filetype=cpp

"AIRLINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:airline_symbols.space = "\u3000"
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_symbols.space = "<"
"let g:airline_symbols.space = ">"
set laststatus=2


"syntastics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

function! HeaderToggle() " bang for overwrite when saving vimrc
let file_path = expand("%")
let file_name = expand("%<")
let extension = split(file_path, '\.')[-1] " '\.' is how you really split on dot
let err_msg = "There is no file "

if extension == "cpp"
    let next_file = join([file_name, ".h"], "")

    if filereadable(next_file)
    :e %<.h
    else
        echo join([err_msg, next_file], "")
    endif
elseif extension == "h"
    let next_file = join([file_name, ".cpp"], "")

    if filereadable(next_file)
        :e %<.cpp
    else
        echo join([err_msg, next_file], "")
    endif
endif
endfunction

nnoremap <Leader>r :call HeaderToggle()<CR>
