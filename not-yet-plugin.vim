" reply, default behavior is replaying to a tweet-like message recently.
nnoremap <silent><F1> i##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>[rp]()<ESC>h?^## [0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}<CR>n3lv35ly2<C-o>pA<CR><CR><ESC>i
inoremap <silent><F1> ##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>[rp]()<ESC>h?^## [0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}<CR>n3lv35ly2<C-o>pA<CR><CR><ESC>i
" new tweet-like message.
nnoremap <silent><F2> i##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>
inoremap <silent><F2> ##<SPACE><C-R>=system('python -c "import uuid; print(uuid.uuid4(), end=\"\");"')<CR><CR><CR><C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><CR><CR>
" insert reply-template and search tweet-like message uuid.
nnoremap <silent><Leader>rp i[rp]()<ESC>h?[0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}<CR>
" if cursor on guid, then yank guid.
nnoremap <silent><Leader>yg /[0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}<CR><S-n>v35ly
" if cursor is  on guid, then delete guid.
nnoremap <silent><Leader>dg /[0-9,a-z]\{8\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{4\}-[0-9,a-z]\{12\}<CR><S-n>v35ld
" if cursor is on guid, then search guid.
nnoremap <silent><Leader>gg :call search('[ ,\(]', 'b', line('.'))<CR>

