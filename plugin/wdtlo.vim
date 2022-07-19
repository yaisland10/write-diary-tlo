
" ref. https://yu8mada.com/2018/08/02/how-to-insert-the-current-date-and-time-in-vim/
" ref. https://stackoverflow.com/questions/12350222/how-can-i-generate-a-guid-in-vim
nnoremap <silent><F2> :call wdtlo#ComposeMessage()<CR>i
inoremap <silent><F2> <ESC>:call wdtlo#ComposeMessage()<CR>i
" reply, default behavior is to replay tweet recently.
nnoremap <silent><F1> :call wdtlo#ReplyMessage()<CR>i
inoremap <silent><F1> <ESC>:call wdtlo#ReplyMessage()<CR>i
" if cursor on guid, then yank guid.
nnoremap <silent><Leader>yg :call wdtlo#YankGuid()<CR>
" if cursor is  on guid, then delete guid.
nnoremap <silent><Leader>dg :call wdtlo#DeleteGuid()<CR>
" if cursor is on guid, then search guid.
nnoremap <silent><Leader>gg :echo "not implemented"
