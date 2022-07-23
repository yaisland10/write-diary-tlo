let g:pattern_guid = '[0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}'
let g:pattern_message_guid = '^## '.g:pattern_guid

let g:stored_indentexpr='' " for to prevent inserting a tab at new lines.
function! wdtlo#DeleteIndentexpr()
	let g:stored_indentexpr = execute('set indentexpr?')
	call execute('set indentexpr=')
endfunction
function! wdtlo#RestoreIndentexpr()
	call execute('set '.slice(g:stored_indentexpr,3))
endfunction

function! wdtlo#ComposeMessage()
	call wdtlo#DeleteIndentexpr()
	call append(line('.'), ["", "---", "", '## '.system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"'), "", strftime("%Y-%m-%d %H:%M:%S"), "", ""])
	call cursor(line('.') + 8, 0)
	call append(line('.'), ['## '.system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"'), "", strftime("%Y-%m-%d %H:%M:%S"), "", ""])
	call cursor(line('.') + 5, 0)
	call wdtlo#RestoreIndentexpr()
endfunction
function! wdtlo#ReplyMessage()
	call wdtlo#ComposeMessage()
	call wdtlo#DeleteIndentexpr()
	call search(g:pattern_message_guid, 'b')
	call search(g:pattern_message_guid, 'b')
	let guid = getline(line('.'))->slice(3)
	call search(g:pattern_message_guid)
	call cursor(line('.') + 3, 0)
	call append(line('.'), ['[rp]('.guid.')', ""])
	call cursor(line('.') + 3, 0)
	call wdtlo#RestoreIndentexpr()
endfunction
" if there is not a guid backward from cursor line, this function is failed.
function! wdtlo#YankGuid()
	call cursor(line('.'), 1)
	call search(g:pattern_guid, 'b')
	call search(g:pattern_guid)
	call getline(line('.'))->slice(col('.')-1, 41)->setreg('*')
endfunction
function! wdtlo#DeleteGuid()
	call cursor(line('.'), 1)
	call search(g:pattern_guid, 'b')
	call search(g:pattern_guid)
	call setline(line('.'), getline(line('.'))->slice(0, col('.')-1) .. getline(line('.'))->slice(col('.') + 35))
endfunction

