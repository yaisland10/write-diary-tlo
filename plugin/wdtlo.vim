" reply, default behavior is replaying to a tweet-like message recently.
nnoremap <silent><F1> i##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>[rp]()<ESC>h:call search('^## '.wdtlo#guid_pattern,'b')<CR>:call search('^## '.wdtlo#guid_pattern,'b')<CR>3lv35ly:call search(wdtlo#guid_pattern)<CR>:call search('(')<CR>pA<CR><CR><ESC>i
inoremap <silent><F1> ##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>[rp]()<ESC>h:call search('^## '.wdtlo#guid_pattern,'b')<CR>:call search('^## '.wdtlo#guid_pattern,'b')<CR>3lv35ly:call search(wdtlo#guid_pattern)<CR>:call search('(')<CR>pA<CR><CR><ESC>i
" new tweet-like message.
nnoremap <silent><F2> i##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>
inoremap <silent><F2> ##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>
" insert reply-template and search tweet-like message uuid.
nnoremap <silent><Leader>rp i[rp]()<ESC>h:call search(wdtlo#guid_pattern,'b')<CR>
" if cursor on guid, then yank guid.
nnoremap <silent><Leader>yg :call search(wdtlo#guid_pattern)<CR>:call search(wdtlo#guid_pattern,'b')<CR>v35ly
" if cursor is  on guid, then delete guid.
nnoremap <silent><Leader>dg :call search(wdtlo#guid_pattern)<CR>:call search(wdtlo#guid_pattern,'b')<CR>v35ld
" if cursor is on guid, then search guid.
nnoremap <silent><Leader>gg :echo "not implemented"

