" Vim syntax file
" Language: tdx fomula
" Maintainer: tzws <tzws@tzws.org>
" Last Change: Apr 15, 2017

if exists("b:current_syntax")
  finish
end

let b:current_syntax = "tdx"


syn keyword tdxQuoteFunction HIGH H LOW L CLOSE C VOL V OPEN O ADVANCE DECLINE AMOUNT ZSTJJ VOLINSTK QHJSJ HKSHORTVOL DHIGH DOPEN DLOW DCLOSE DVOL DYNAINFO

" syn keyword tdxDynamicQuoteFunction DYNAINFO(3) DYNAINFO(4) DYNAINFO(5) DYNAINFO(6) DYNAINFO(7) DYNAINFO(8) DYNAINFO(9) DYNAINFO(10) DYNAINFO(11) DYNAINFO(12) DYNAINFO(13) DYNAINFO(14) DYNAINFO(15) DYNAINFO(16) DYNAINFO(17) DYNAINFO(20) DYNAINFO(21) DYNAINFO(22) DYNAINFO(23) DYNAINFO(25) DYNAINFO(26) DYNAINFO(27) DYNAINFO(28) DYNAINFO(29) DYNAINFO(30) DYNAINFO(31) DYNAINFO(32) DYNAINFO(33) DYNAINFO(34) DYNAINFO(35) DYNAINFO(36) DYNAINFO(37) DYNAINFO(39) DYNAINFO(40) DYNAINFO(50) DYNAINFO(51) DYNAINFO(52) DYNAINFO(53) DYNAINFO(54) DYNAINFO(55) DYNAINFO(56) DYNAINFO(57)

syn keyword tdxTimeFunction PERIOD DATE TIME TIME2 YEAR MONTH WEEKOFYEAR WEEKDAY DAYSTOTODAY DAY HOUR MINUTE FROMOPEN

syn keyword tdxReferenceFunction DRAWNULL BACKSET BARSCOUNT CURRBARSCOUNT TOTALBARSCOUNT BARSLAST BARSSINCE COUNT HHV HHVBARS LLV LLVBARS REVERSE REF REFDATE SUM FILTER SUMBARS SMA MA DMA EMA EXPMA MEMA EXPMEMA RANGE CONST

syn keyword tdxLogicFunction CROSS UPNDAY DOWNNDAY NDAY EXIST EVERY LAST
syn keyword tdxBooleanFunction NOT IF IFF IFN AND

syn keyword tdxMathFunction MAX MIN ACOS ASIN ATAN COS SIN TAN EXP LN LOG SQRT ABS POW CEILING FLOOR INTPART BETWEEN

syn keyword tdxStatisticsFunction AVEDEV BLOCKSETNUM DEVSQ FORCAST HORCALC SLOPE STD STDP VAR VARP

syn keyword tdxShapeFunction COST COSTEX LWINNER PEAK PEAKBARS PPART PWINNER SAR SARTURN TROUGH TROUGHBARS WINNER ZIG

syn keyword tdxIndexFunction INDEXA INDEXADV INDEXDEC INDEXC INDEXH INDEXL INDEXO INDEXV

syn keyword tdxDrawFunction DRAWICON DRAWKLINE DRAWLINE DRAWTEXT PLOYLINE STICKLINE

" syn keyword tdxFinanceFunction CAPITAL FINANCE(1) FINANCE(10) FINANCE(11) FINANCE(12) FINANCE(13) FINANCE(14) FINANCE(15) FINANCE(16) FINANCE(17) FINANCE(18) FINANCE(19) FINANCE(2) FINANCE(20) FINANCE(21) FINANCE(22) FINANCE(23) FINANCE(24) FINANCE(25) FINANCE(26) FINANCE(27) FINANCE(28) FINANCE(29) FINANCE(3) FINANCE(30) FINANCE(31) FINANCE(32) FINANCE(33) FINANCE(34) FINANCE(35) FINANCE(36) FINANCE(4) FINANCE(40) FINANCE(41) FINANCE(42) FINANCE(5) FINANCE(6) FINANCE(7) FINANCE(8)
"
syn keyword tdxFinanceFunction CAPITAL FINANCE

" syn keyword tdxColorFunction COLORBLACK COLORBLUE COLORBROWN COLORCYAN COLORGRAY COLORGREEN COLORLIBLUE COLORLICYAN COLORLIGRAY COLORLIGREEN COLORLIMAGENTA COLORLIRED COLORMAGENTA COLORRED COLORWHITE COLORYELLOW

syn keyword tdxLineFunction LINETHICK
syn keyword tdxLineTypeFunction STICK COLORSTICK VOLSTICK LINESTICK CROSSDOT CIRCLEDOT POINTDOT

syn region tdxComment start=/{/ end=/}/ keepend contains=tdxTimeFunction,tdxMathFunction,tdxStatisticsFunction,tdxShapeFunction,tdxIndexFunction,tdxDrawFunction,tdxFinanceFunction,tdxLineFunction extend
" contains=ALL
" syn region tdxComment start="{" end="}" contained contains=ALL
" syn region tdxComment start="{" end="}" contains=ALL
" syn region tdxComment start="{" end="}" contained

syn match tdxComment1 '{.*}'

syn match tdxColor1 '\<\(COLOR\)\([a-zA-Z]\+\)\@='

syn match tdxVariable '\<\(.\+\)\(:=\)\@='
" syn match tdxVariable1 '\<\(.\+\)\([><=]\)\@='
" syn match tdxVariable1 '\<\(\W*\)\>\([=<>]\)\@='
" syn match tdxVariable1 '\<\(.[^ ()<>=!,+]*\)\>\([!=<>,+]\)\@='
" syn match tdxVariable1 '\<\(.[^ ()<>=!,+;*]*\)\>\([ ()!=<>,;+*]\)\@='

syn match tdxString '\'\<\(.*\)\>\''
syntax match   tdxNumber           "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syntax match   tdxFloat          /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/


hi link tdxQuoteFunction Type
hi link tdxReferenceFunction PreProc
hi link tdxTimeFunction Identifier
hi link tdxLogicFunction Identifier
hi link tdxMathFunction Identifier
hi link tdxStatisticsFunction Identifier
hi link tdxShapeFunction Identifier
hi link tdxIndexFunction Identifier
hi link tdxDrawFunction Error
hi link tdxFinanceFunction Conditional
" hi link tdxColorFunction Type
hi link tdxColor1 Repeat
hi link tdxBooleanFunction Boolean
" hi link tdxVariable String
hi link tdxString String
" hi link tdxVariable Special
hi link tdxVariable Exception
" hi link tdxVariable1 Identifier

hi link tdxNumber                 Number
hi link tdxFloat                  Number

hi link tdxComment Comment
" hi def link tdxComment          Comment

hi link tdxComment1 Comment


