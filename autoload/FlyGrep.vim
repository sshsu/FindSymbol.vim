let g:flygrep_status = ''
function! FlyGrep#open(argv) abort
  let g:flygrep_status = 'restart'
  while g:flygrep_status !=# 'exit'
    call SpaceVim#plugins#flygrep#open(a:argv)
  endwhile
endfunction

function! FlyGrep#statusline() abort
    let st = ' FlyGrep %{getcwd()} '
    return st . "%{getline(1) ==# '' ? '' : (line('.') . '/' . line('$'))}"
endfunction
