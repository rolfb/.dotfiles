if has("gui_macvim")
" Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-T for CommandT
  macmenu &File.New\ Tab key=<D-T>

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
	
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>
  
	set guioptions-=T
	map <D-/> <plug>NERDCommenterToggle<CR>
	imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
	
	" If the parameter is a directory, cd into it
	function s:CdIfDirectory(directory)
		let explicitDirectory = isdirectory(a:directory)
		let directory = explicitDirectory || empty(a:directory)

		if explicitDirectory
			exe "cd " . fnameescape(a:directory)
		endif

		" Allows reading from stdin
		" ex: git diff | mvim -R -
		if strlen(a:directory) == 0 
			return
		endif

		if directory
			wincmd p
			bd
		endif

		if explicitDirectory
			wincmd p
		endif
	endfunction

	autocmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
   
endif
