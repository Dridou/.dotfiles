call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-clang-format'
Plug 'Valloric/YouCompleteMe'
"Plug 'junegunn/seoul256.vim'
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'othree/html5.vim'
"Plug 'vim-syntastic/syntastic'
call plug#end()

Plug 'Valloric/YouCompleteMe'
let g:plug_timeout = 1000
" Plug 'pangloss/vim-javascript'
"let g:javascript_plugin_jsdoc = 1

" Plug 'othree/html5.vim'
"et g:html5_event_handler_attributes_complete = 1
"et g:html5_event_handler_attributes_complete = 1
"et g:html5_microdata_attributes_complete = 1
"et g:html5_microdata_attributes_complete = 1


filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"==================    CLANG-FORMAT    ======================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_format#style_options = {
            \"AlignAfterOpenBracket" : "Align",
            \"AlignConsecutiveAssignments" : "false",
            \"AlignConsecutiveDeclarations" : "false",
            \"AlignEscapedNewlines" : "Right",
            \"AlignOperands" : "false",
            \"AlignTrailingComments" : "false",
            \"AllowAllParametersOfDeclarationOnNextLine" : "false",
            \"AllowShortBlocksOnASingleLine" : "false",
            \"AllowShortCaseLabelsOnASingleLine" : "false",
            \"AllowShortFunctionsOnASingleLine" : "None",
            \"AllowShortIfStatementsOnASingleLine" : "false",
            \"AlwaysBreakAfterReturnType" : "None",
            \"AlwaysBreakBeforeMultilineStrings" : "false",
            \"AlwaysBreakTemplateDeclarations" : "Yes",
            \"BinPackArguments" : "true",
            \"BinPackParameters" : "true",
            \"BreakBeforeBraces" : "Custom",
            \"BraceWrapping" : {
            \"    AfterEnum" : "true",
            \"    AfterClass" : "true",
            \"    AfterControlStatement" : "true",
            \"    AfterFunction" : "true",
            \"    AfterNamespace" : "true",
            \"    AfterStruct" : "true",
            \"    AfterUnion" : "true",
            \"    AfterExternBlock" : "true",
            \"    BeforeCatch" : "false",
            \"    BeforeElse" : "false",
            \"    IndentBraces" : "false",
            \"    SplitEmptyFunction" : "false",
            \"    SplitEmptyRecord" : "false",
            \"    SplitEmptyNamespace" : "false",},
            \"BreakBeforeBinaryOperators" : "NonAssignment",
            \"BreakBeforeTernaryOperators" : "true",
            \"BreakConstructorInitializers" : "BeforeComma",
            \"BreakInheritanceList" : "BeforeComma",
            \"BreakStringLiterals" : "true",
            \"ColumnLimit" : 80,
            \"CompactNamespaces" : "false",
            \"ConstructorInitializerAllOnOneLineOrOnePerLine" : "false",
            \"ConstructorInitializerIndentWidth" : 4,
            \"Cpp11BracedListStyle" : "true",
            \"DerivePointerAlignment" : "false",
            \"FixNamespaceComments" : "true",
            \"IncludeBlocks" : "Regroup",
            \"IndentCaseLabels" : "false",
            \"IndentPPDirectives" : "AfterHash",
            \"IndentWidth" : 4,
            \"IndentWrappedFunctionNames" : "false",
            \"KeepEmptyLinesAtTheStartOfBlocks" : "false",
            \"Language" : "Cpp",
            \"NamespaceIndentation" : "All",
            \"PointerAlignment" : "Left",
            \"ReflowComments" : "true",
            \"SortIncludes" : "true",
            \"SortUsingDeclarations" : "false",
            \"SpaceAfterCStyleCast" : "false",
            \"SpaceAfterTemplateKeyword" : "true",
            \"SpaceBeforeAssignmentOperators" : "true",
            \"SpaceBeforeCpp11BracedList" : "false",
            \"SpaceBeforeCtorInitializerColon" : "true",
            \"SpaceBeforeParens" : "ControlStatements",
            \"SpaceBeforeRangeBasedForLoopColon" : "true",
            \"SpaceInEmptyParentheses" : "false",
            \"SpacesBeforeTrailingComments" : 1,
            \"SpacesInAngles" : "false",
            \"SpacesInCStyleCastParentheses" : "false",
            \"SpacesInContainerLiterals" : "false",
            \"SpacesInParentheses" : "false",
            \"SpacesInSquareBrackets" : "false",
            \"TabWidth" : 4,
            \"UseTab" : "Never"}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"===================   SYNTASTIC ============================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"===================	StatusLine    =======================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertStatuslineColor(mode)
    "if a:mode == 'i'
    " hi statusline guibg=Blue3 ctermfg=19 guifg=Black ctermbg=0
    if a:mode == 'r'
        hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
    else
        hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
    endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" Formats the statusline
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%f                           "file name
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
" set statusline+=%{&ff}] "file format
set statusline+=%y                          "filetype
set statusline+=%h                          "help file flag
set statusline+=%m                          "modified flag
set statusline+=%r                          "read only flag


set statusline+=\ %=                        "align left
set statusline+=Line:%l/%L                  "line X of Y [percent of file]
set statusline+=\ Col:%c                    "current column
" set statusline+=\ Buf:%n                  "Buffer number
set statusline+=\ ascii:%b\                 "ASCII and byte code under cursor

set laststatus=2
"set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch 



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Ignore case when searching
set ignorecase

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

noremap ck gg=G``

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
2match ExtraWhitespace /\s\+\%#\@<!$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"==================   Color and Fonts    ====================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" get syntax highlighting
let mysyntaxfile = "$HOME/.vim/mysyntax.vim"

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif


set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

set undofile
set undodir=~/.vim/undodir

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================   Text, tab and indent    =================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set expandtab

set shiftwidth=4
set smarttab
set number
highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
