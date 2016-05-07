"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->常规设置
"-->编码设置，显示设置，兼容性设置，文件设置，编辑设置,窗口设置，搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"-->编码设置:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"encoding: vim内部使用的编码格式，会影响vim内部的buffer,消息文字
"
"fileencodeings: vim在打开文件时会根据fileencodings选项来识别文件编码
"                fileencodings可以同时设置多个编码，Vim会根据设置的顺
"                序来猜测所打开文件的编码。 
"
"termencodings:  在终端的环境下使用vim时，通过termencodeings告诉vim终端
"                使用的编码

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gbk,gck2312,gb18030

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->显示设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"显示行号
set number
"显示标尺
set ruler
"鼠标可以任意位置
set mouse=a
"去掉讨厌的关于vi一致性模式，避免一些Bug和局限
set nocompatible
"取消闪烁
set novisualbell
"命令行的高度，默认值是1,设置2
set cmdheight=2
"增强模式中的命令自动完成的操作
set wildmenu
"是回退键(backspace),正常处理indent,eol,start
"indent 允许在自动缩进上退格
"eol    允许在换行符上退格 (连接行)
"start  允许在插入开始的位置上退格；
set backspace=indent,eol,start
"语法高亮
set syntax=on
"256色
set t_Co=256
"语法可用
set syntax=enable
"去掉启动时的援助提示
set shortmess=atI
"当前行
set cul
set cuc
"去掉图形按钮
set go=
"设置背景颜色
set background=dark
"显示模式
set showmode
"help文档设置为中文
if version >= 603
	set helplang=cn
endif
"显示正则表达式
set magic
"记录历史的行数
set history=500
"显示状态栏
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P> 
"通过使用commands命令告诉我们的文件的那一行被改变过
set report=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--->文件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"侦测文件类型
filetype on
"载入文件类型
filetype plugin on
"在处理为保存或只读文件的时候弹出确认
set confirm
"与windows共享剪贴板
set clipboard=unnamedplus
"为特定的文件类型载入相关的缩进文件
filetype indent on
"保存全局变量
set viminfo+=!
"当你改写文件时备份文件
set nobackup
"不要生成swap文件
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动缩进
set smartindent
"设置tab键
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"用空格代替制表符
set expandtab
"带有如下符号的单词不要被换行分割
set iskeyword+=_,@,$,%,#,-
"允许backspace和光标跨越行边界
set whichwrap+=<,>,h,l
"不让vim发出滴滴声
"set noerrorbells
"自动格式化
set formatoptions=tcrqn
"继承上一行的缩进格式，特别适合多行注释
set autoindent
"不要换行
set nowrap
"允许backspace和光标跨越行边界
set whichwrap=b,s,<,>,[,]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->搜索设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"括号高亮匹配
set showmatch
"设置匹配括号高亮的时间
set matchtime=1
"在搜索是忽略大小写
"set ignorecase
"在搜索时输入的词句的逐字符高亮
set incsearch """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"--->键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"常规键映射
let mapleader=";"
"重映射<ESC>
inoremap  <leader>; <Esc>

nmap <leader>q  :q<CR>
nmap <leader>w  :w!<CR>
nmap <leader>Q  :qa<CR>
nmap <leader>W  :wq<CR>

nnoremap <leader>lw  <C-W>l
nnoremap <leader>hw  <C-W>h
nnoremap <leader>jw  <C-W>j
nnoremap <leader>kw  <C-W>k


map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove<CR>

map <leader>sp :split<CR>
map <leader>vsp :vsplit<CR>
map <leader>cl  :close<CR>

"=======================================================================
"--->高级设置: 插件管理
"插件管理器: vim-plug  vim plugin manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"URL: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

"plugin: vim-easy-align
"Plug 'junegunn/vim-easy-align'
"plugin: NERDTREE
Plug 'scrooloose/nerdtree'
"plugin: YouCompleteMe
Plug 'valloric/YouCompleteMe'
"plugin: 文本创建是的说明，编辑人姓名，邮箱，主页
Plug 'kingmilian/AuthorInfo'
"plugin: NERDCommenter
Plug 'scrooloose/nerdcommenter'
"plugin: OmniCppComplete
Plug 'vim-scripts/OmniCppComplete'
"plugin: taglist
Plug 'vim-scripts/taglist.vim'
"pluing: airline
Plug 'vim-airline/vim-airline'
"plugin: auto-paris
Plug 'jiangmiao/auto-pairs'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"-->配置插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin: authorinfo
nmap <leader>a :AuthorInfoDetect<CR>
let g:vimrc_author='cugriver'
let g:vimrc_email='cugriver@163.com'
let g:vimrc_homepage='https://github.com/cugriver/'

"plugin: NERDTREE
nmap <leader>ft :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"  
"let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")&& b:NERDTree.isTabTree()) | q | endif

"plugin: YouCompleteMe
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#005f87 guibg=#EEE8D5
"选中项
highlight PmenuSel ctermfg=15 ctermbg=8 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
"允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>c <C-x><C-o>
" 修改对C函数的不全快捷键，默认是CTRL+Space,修改为
"let g:ycm_key_invoke_completion = <leader><S-C>
"设置转到定义出的快捷键为<leader><S-D>
nmap <leader>d :YcmComppeter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1
"配置.ycm_extra_conf.py 
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'



"plugin: ctags
set tags+=/home/river/.vim/tags/stl_tags


"plugin: OmniCppComplete
"全局查找控制 1允许
let g:OmniCpp_GlobalScopeSearch=1
"命名空间查找控制 0 禁止查找 1 查找当前文件的缓存区 2 查找当前文件的
"缓存区以及包含文件中的命名空间
let g:OmniCpp_NamespaceSearch=2
"类成员的显示控制(+ public - private #protected) 0 自动 1显示所有成员
let g:OmniCpp_DisplayMode=1
"补全说略信息中的函数原型 0 不显示 1 显示原型
let g:OmniCpp_PrototypeInAbbr=1
"显示访问控制信息 + public - private #protected
let g:OmniCpp_ShowAccess=1
"默认命名空间列表，使用','隔开
let g:OmniCpp_DefaultNamespaces=["std"]
"在"->"后自动运行提示信息
let g:OmniCpp_MayCompleteArray=1
"在"."后自动运行提示信息
let g:OmniCpp_MayCompleteDot=1
"在"::"后自动运行提示信息
let g:OmniCpp_MayCompleteScope=1
"使用Vim标准查找函数/本地(local)查找函数。Vim内部用来在函数中查找变量
"定义的函数需要函数括号位于文本的第一列，而本地查找函数并不需要。
let g:OmniCpp_LocalSearchDecl=1

"plugin: TagList
nnoremap <leader>tl :TlistToggle<CR>
"let g:Tlist_Auto_Open=1

"plugin: airline
let g:airline_theme='dark'
"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols_crypt = '🔒'
let g:airline_symbols_linenr = '␊'
let g:airline_symbols_linenr = '␤'
let g:airline_symbols_linenr = '¶'
let g:airline_symbols_branch = '⎇'
let g:airline_symbols_paste = 'ρ'
let g:airline_symbols_paste = 'Þ'
let g:airline_symbols_paste = '∥'
let g:airline_symbols_whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extenourions#tabline#left_alt_sep = '|'

"plugin: auto-paris

"pluing: molokai
let g:molokai_original=1
let g:rehash256=1
