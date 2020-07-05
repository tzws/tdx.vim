# vim-tdx
tdx vim syntax file

## comment
### nerdcommenter

```vim
            " Add your own custom formats or override the defaults
            let g:NERDCustomDelimiters = {
                        \ 'c': { 'left': '/**','right': '*/' },
                        \ 'tdx': {'left': '{', 'right': '}'}
                        \ }

```

### comment color 

```vim
        let g:rainbow_conf = {
        \   'separately': {
        \       'tdx': {
        \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
        \       },
        \   }
        \}
```
