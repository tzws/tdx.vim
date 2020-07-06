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

### comment color if you're using rainbow

```vim
        let g:rainbow_conf = {
        \   'separately': {
        \       'tdx': {
        \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
        \       },
        \   }
        \}
```

### display colorcode as color

```vim

    Plug 'chrisbra/Colorizer', {'for': ['tdx']}
    let g:colorizer_auto_color = 0
    let g:colorizer_auto_filetype='tdx'
    let g:colorizer_colornames = 1
    let g:colorizer_skip_comments = 1
    let g:colorizer_x11_names = 1
    let g:colorizer_hex_pattern = ['COLOR', '\%(\x\{6}\|\x\{3}\)', '']
    let g:colorizer_custom_colors = {
                \ 'colorblack': '#000000',
                \ 'colorblue': '#0000ff',
                \ 'colorgreen': '#008000',
                \ 'colorcyan': '#00ffff',
                \ 'colorred': '#ff0000',
                \ 'colormagenta': '#ff00ff',
                \ 'colorbrown': '#a52a2a',
                \ 'colorgray': '#808080',
                \ 'colorliblue': '#add8e6',
                \ 'colorligreen': '#90ee90',
                \ 'colorlicyan': '#e0ffff',
                \ 'colorlired': '#ff0000',
                \ 'coloryellow': '#ffff00',
                \ 'colorwhite': '#ffffff',
                \}

```
