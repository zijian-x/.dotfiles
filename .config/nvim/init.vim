"sdf === my defaults ===
syntax enable
set nu
set sw=0 ts=4
set ttm=1
set cb=unnamedplus
set tgc
set nosc
set sbr=>\\
set list
set lcs=tab:│\ ,nbsp:␣,trail:•
set cul
set exrc
filetype plugin indent on

" === leader key ===
let mapleader = " "

" === file management ===
set shada+=n$HOME/.local/state/nvim/viminfo
set udf

" === completion ===
set wop=pum
set wim=longest:full,full
set cpt-=t
set cot=menuone,preview,noinsert,noselect
set ph=10

" === statusline ===
fu! PathReduce(path)
	return fnamemodify(a:path,':~:.')
endfu

fu! LuaStlCallback()
	try
		return luaeval('require("stl").inject()')
	catch /.*/
		return ""
	endtry
endfu

fu! DefSTL() abort
	let stl = ""
	let stl .= "%<\ %{PathReduce(getcwd())}"
	let stl .= "%{expand('%')==''?'':'\ \ \|\ '.PathReduce(expand('%:p'))}"
	let stl .= "%4m"
	let stl .= "%5r"
	let stl .= "%{&paste?'\ \ [P]':''}"
	let stl .= "%{LuaStlCallback()}"
	let stl .= "%="
	let stl .= "\ \ \ \ \ "
	let stl .= "%{&fileformat}"
	let stl .= "\ \|\ %{&fileencoding?&fileencoding:&encoding}"
	let stl .= "%{&filetype==''?'\ ':'\ \ \|\ '.toupper(&filetype).'\ '}"

	return stl
endfu

aug stl
	au!
	au VimEnter * hi default link STL TabLine | hi! default link StatusLine STL
	au ModeChanged *:n hi clear STL | redraws!
	au ModeChanged *:ni* hi link STL Visual | redraws!
	au ModeChanged *:i* hi link STL TermCursor | redraws!
	au ModeChanged *:[vV\x16]* hi link STL Substitute | redraws!
	au ModeChanged *:R* hi link STL CursorLineNr | redraws!
aug END

set nosmd
set stl=
set stl=%!DefSTL()

" === nvim ===
set mouse=
set guicursor=a:block
silent! delc EditQuery " dumb builtin command polluting the shorthand to :Ex

" === plugins ===
lua require('config.lazy')
