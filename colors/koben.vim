" Maintainer:       koben
" Author:           GARSEC (Garuda Security)
" Update:           2022-27-8 02:43:02
" Groups:           telegram vim indonesia: https://t.me/VimID
" License:          Garsec
 
"Copyright (c) 2020 GARSEC (Garuda Security)

"Izin dengan ini diberikan, gratis, kepada siapa pun yang mendapatkan salinannya
"perangkat lunak ini dan file dokumentasi terkait ('Perangkat Lunak'), untuk menangani
"dalam Perangkat Lunak tanpa batasan, termasuk tanpa batasan hak
"untuk menggunakan, menyalin, memodifikasi, menggabungkan, menerbitkan, mendistribusikan, mensublisensikan, dan/atau menjual
"salinan Perangkat Lunak, dan untuk mengizinkan orang-orang yang menerima Perangkat Lunak tersebut
"dilengkapi untuk melakukannya, dengan ketentuan sebagai berikut:

"Pemberitahuan hak cipta di atas dan pemberitahuan izin ini harus disertakan dalam
"semua salinan atau bagian substansial dari Perangkat Lunak.

"PERANGKAT LUNAK INI DISEDIAKAN 'SEBAGAIMANA ADANYA', TANPA JAMINAN APA PUN, TERSURAT ATAU
"TERSIRAT, TERMASUK NAMUN TIDAK TERBATAS PADA JAMINAN DIPERDAGANGKAN,
"KESESUAIAN UNTUK TUJUAN TERTENTU DAN TANPA PELANGGARAN. DALAM HAL APAPUN
"PENULIS ATAU PEMEGANG HAK CIPTA BERTANGGUNG JAWAB ATAS KLAIM, KERUSAKAN ATAU LAINNYA
"KEWAJIBAN, BAIK DALAM TINDAKAN KONTRAK, KERUGIAN ATAU LAINNYA, TIMBUL DARI,
"DARI ATAU SEHUBUNGAN DENGAN PERANGKAT LUNAK ATAU PENGGUNAAN ATAU TRANSAKSI LAINNYA DI
"PERANGKAT LUNAK.

set background=dark
hi clear
let g:colors_name = 'koben'
"opsi terminal
"t_Co jumlah warna
let s:t_Co = exists('&t_Co') && !has('gui_running') ? (&t_Co) : -1
if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#cd0000', '#00cd00', '#cdcd00', '#0000ee', '#cd00cd', '#00cdcd', '#e5e5e5', '#7f7f7f', '#ff0000', '#00ff00', '#ffff00', '#5c5cff', '#ff00ff', '#00ffff', '#ffffff']
endif
" normal teks keadaan mode normal gvim
hi Normal   guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
hi! link Terminal Normal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Cursearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
"konstanta karakter 'c', '\n'
hi Character guifg=#f54242 guibg=#000000 gui=NONE cterm=NONE
"digunakan untuk kolom yang diatur dengan kolom warna
hi ColorColumn guifg=NONE guibg=#4d4d4d gui=NONE cterm=NONE
"komentar
hi Comment guifg=#808080 guibg=NONE gui=NONE cterm=NONE
"konstanta apapun
hi Constant guifg=#8700ff guibg=#000000 gui=NONE cterm=NONE
"penggunak java
hi javaConstant guifg=#00ffd7 guibg=#000000 gui=NONE cterm=NONE
"karakter placeholder menggantikan teks tersembunyi
hi Conceal guifg=#ff00ff guibg=#ff00ff gui=NONE cterm=NONE
"karakter di bawah kursor"kedap kedip"
hi Cursor guifg=#ff00ff guibg=#00ffd7 gui=NONE cterm=NONE
"kolom layar tempat kursor berada saat 'kolom kursor' disetel
hi CursorColumn guifg=NONE guibg=#000000 gui=NONE cterm=NONE
"garis layar tempat kursor berada saat 'garis kursor' disetel
hi CursorLine guifg=NONE guibg=#3a3a3a gui=NONE cterm=NONE
hi CursorLineNr guifg=#ff0000 guibg=#3a3a3a gui=bold cterm=bold
"seperti Kursor, tetapi digunakan saat dalam mode IME |CursorIM|
hi CursorIM guifg=NONE guibg=fg gui=NONE cterm=NONE
"nama direktori (dan nama khusus lainnya dalam daftar)
hi Directory guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"setiap konstruksi yang salah
hi Error guifg=#ffffff guibg=#ff0000 gui=NONE cterm=NONE
"pesan kesalahan pada baris perintah
hi ErrorMsg guifg=#ffffff guibg=#cd0000 gui=NONE cterm=NONE
"keyword exception 
hi Exception guifg=#8700ff guibg=NONE gui=NONE cterm=NONE
"garis yang digunakan untuk lipatan tertutup
hi Folded guifg=#000000 guibg=#66ff66 gui=NONE cterm=NONE
"garis yang digunakan untuk diff ketik :vert diffsplit [filename2]
hi FoldColumn guifg=#66ff66 guibg=#000000 gui=NONE cterm=NONE
"konstanta float:2.5e10
hi Float guifg=#f54242 guibg=#000000 gui=bold cterm=bold
"fungsi atau method
hi Function guifg=#8700ff guibg=#000000 gui=NONE cterm=NONE
"dibiarkan kosong, tersembunyi
hi Ignore guifg=#000000 guibg=#000000 gui=NONE cterm=NONE
"nama variabel apa saja
hi Identifier guifg=#8700ff guibg=#000000 gui=NONE cterm=NONE
"separator tag html '< >'
hi htmlEndTag guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
hi htmlTag guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
"Nomor baris untuk perintah ':number" dan ':#', dan kapan 'number'
"atau opsi 'nomor relatif' disetel
"ketik :number atau :#
hi LineNr guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
"Dimungkinkan untuk memberi kursor GUI warna lain saat pemetaan bahasa
"sedang digunakan. Ini dinonaktifkan secara default, untuk menghindari kursor menjadi
"tidak terlihat saat Anda menggunakan warna latar non-standar
hi lCursor guifg=#000000 guibg=#ffffff gui=NONE cterm=NONE
" '~' dan '@' di akhir jendela, karakter dari
" 'showbreak' dan karakter lain yang sebenarnya tidak ada dalam teks 
" (mis., '>' ditampilkan saat karakter lebar ganda tidak pas di akhir baris).
hi NonText guifg=#00ffd7 guibg=NONE gui=bold cterm=bold
"konstanta angka: 234, 0xff
hi Number guifg=#f54242 guibg=#000000 gui=NONE cterm=NONE
"Praprocessor #include #define #import #from
hi PreProc guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"----- digantikan dengan fungsi hi Statemant ----
"perulangan for, do, while, etc
"hi Repeat guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"konstanta string: 'ini adalah string'
hi String guifg=#87ff5f guibg=#000000 gui=NONE cterm=NONE
"pernyataan apapun if, then, else, endif, switch, for, try, etc
hi Statement guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"pengguna java
hi javaStatement guifg=#00ffd7 guibg=#000000 gui=NONE cterm=NONE
hi javaStorageClass guifg=#8700ff guibg=#000000 gui=NONE cterm=NONE
"setiap simbol khusus
hi Special guifg=#ff6600 guibg=NONE gui=NONE cterm=NONE
"int, long, char, etc
hi Type guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"apa pun yang membutuhkan perhatian ekstra; kebanyakan kata kunci TODO FIXME dan XXX
hi Todo guifg=#000000 guibg=#c0c000 gui=NONE cterm=NONE
"judul untuk output dari ':set all', ':autocmd' dll.
hi Title guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
"teks yang menonjol, tautan/link HTML
hi Underlined guifg=#ff00ff guibg=NONE gui=underline cterm=underline
"Penyorotan pola pencarian terakhir digunakan untuk menyorot baris saat ini 
"di jendela perbaikan cepat dan item serupa yang perlu menonjol.
hi Search guifg=#000000 guibg=#c0c000 gui=NONE cterm=NONE
hi IncSearch guifg=#ffffff guibg=NONE gui=reverse cterm=reverse
"kolom di mana |sign| ditampilkan
hi SignColumn guifg=#00ffd7 guibg=#a9a9a9 gui=NONE cterm=NONE
"mode selection
"hi Visual   guifg=#cc0000 guibg=#000000 gui=standout cterm=standout
hi Visual guifg=#f54242 guibg=#000000 gui=standout cterm=standout
"Pemilihan mode visual saat vim adalah 'Tidak Memiliki Pilihan'. 
"Hanya X11 Gui |gui-x11| dan |xterm-clipboard| mendukung ini.
hi VisualNOS guifg=NONE guibg=#000000 gui=bold,underline cterm=underline
"pesan peringatan
hi WarningMsg guifg=#f54242 guibg=NONE gui=NONE cterm=NONE
"above abo[veleft] Jalankan {cmd}. 
"Jika berisi perintah yang membagi jendela, itu akan dibuka ke kiri 
"(pemisahan vertikal) atau di atas (pemisahan horizontal) jendela saat ini. 
"Mengabaikan 'splitbelow' dan 'splitright'.
"Tidak berfungsi untuk mode |:execute| dan |:normal|.
hi! link LineNrAbove LineNr
"below bel[owright] Jalankan {cmd}.
"Jika berisi perintah yang membagi jendela, itu akan dibuka ke kanan 
"(pemisahan vertikal) atau di bawah (pemisahan horizontal) jendela saat ini. 
"Mengabaikan 'splitbelow' dan 'splitright'.
"Tidak berfungsi untuk |:execute| dan |:normal|.
hi! link LineNrBelow LineNr
"Karakter di bawah kursor atau tepat sebelum itu, jika itu adalah braket berpasangan,
"dan kecocokannya. |pi_paren.txt|
hi MatchParen guifg=NONE guibg=#ff0000 gui=NONE cterm=NONE
"'showmode' message (e.g., '-- INSERT --', '-- VISUAL --')
hi ModeMsg guifg=#000000 guibg=#66ff66 gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
"'more-prompt contoh ketik :autocmd (e.g., -- MORE -- etc.)
hi MoreMsg guifg=#000000 guibg=#66ff66 gui=bold cterm=bold
hi Question guifg=#00ff00 guibg=NONE gui=bold cterm=bold
"Meta dan kunci khusus yang terdaftar dengan ':map', juga untuk teks yang 
"digunakan untuk menampilkan karakter yang tidak dapat dicetak dalam teks, 'listchars'.
"Umumnya :text yang ditampilkan berbeda dari aslinya
hi SpecialKey guifg=#00ffd7 guibg=NONE gui=NONE cterm=NONE
"kecocokan saat ini dalam penyelesaian wildmenu
hi WildMenu guifg=#000000 guibg=#00ffd7 gui=NONE cterm=NONE
hi QuickFixLine guifg=#000000 guibg=#00cdcd gui=NONE cterm=NONE
"Kata yang tidak dikenali oleh pemeriksa ejaan. |spell|
"Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
hi SpellBad guifg=#ff0000 guibg=NONE guisp=#ff0000 gui=undercurl cterm=underline
"Kata yang harus dimulai dengan huruf kapital. |spell|
"Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
hi SpellCap guifg=#00ffd7 guibg=NONE guisp=#00ffd7 gui=undercurl cterm=underline
"Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang digunakan di wilayah lain.
"|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
hi SpellLocal guifg=#ff00ff guibg=NONE guisp=#ff00ff gui=undercurl cterm=underline
"Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang hampir tidak pernah digunakan. 
"|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
hi SpellRare guifg=#00ffd7 guibg=NONE guisp=#00ffd7 gui=undercurl cterm=underline
"baris status jendela saat ini
"contoh ketik:split [file_nama]
"hi StatusLine guifg=#ffffff guibg=#0000ff gui=NONE cterm=NONE
hi StatusLine guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
"baris status jendela yang tidak aktif 
"Catatan : jika ini sama dengan 'StatusLine' Vim akan menggunakan '^^^' 
"di baris status jendela saat ini.
"hi StatusLineNC guifg=#ffff00 guibg=#000080 gui=NONE cterm=NONE
hi StatusLineNC guifg=#ffff00 guibg=#000000 gui=NONE cterm=NONE
"kolom yang memisahkan jendela yang terbelah secara vertikal
hi VertSplit guifg=#000000 guibg=#666666 gui=inverse cterm=NONE
"baris halaman tab, bukan label halaman tab aktif
hi TabLine guifg=#ffffff guibg=#000000 gui=standout cterm=standout
"baris halaman tab, di mana tidak ada label
hi TabLineFill guifg=NONE guibg=#000000 gui=reverse cterm=reverse
"baris halaman tab, label halaman tab aktif
hi TabLineSel guifg=#ffffff guibg=#000000 gui=bold cterm=bold
"bagian dari gui tool bar
hi ToolbarLine guifg=NONE guibg=#000000 gui=NONE cterm=NONE
hi ToolbarButton guifg=#000000 guibg=#e5e5e5 gui=bold cterm=bold
hi Pmenu guifg=fg guibg=#303030 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi PmenuSel guifg=#000000 guibg=#e5e5e5 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#ffffff gui=NONE cterm=NONE
"mode diff ketik :vert diffsplit file1.txt file2.txt
"menambah baris teks
hi DiffAdd guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE
"mengubah baris teks
hi DiffChange guifg=#9900cc guibg=#000000 gui=NONE cterm=NONE
"mengubah teks dalam baris yang diubah
hi DiffText guifg=#00ffd7 guibg=#000000 gui=NONE cterm=NONE
"menghapus baris teks
hi DiffDelete guifg=#ffffff guibg=#000000 gui=NONE cterm=NONE

"----------- vim color terminal --------------
"color base 256
if s:t_Co >= 256
  hi Normal ctermfg=231 ctermbg=16 cterm=NONE
  
  hi! link Terminal Normal
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link CurSearch Search
  hi! link CursorLineFold CursorLine
  hi! link CursorLineSign CursorLine
  "konstanta karakter 'c'
  hi Character ctermfg=196 ctermbg=16 cterm=NONE 
  "digunakan untuk kolom yang diatur dengan kolom warna
  hi ColorColumn ctermfg=NONE ctermbg=239 cterm=NONE
  "komentar
  hi Comment ctermfg=246 ctermbg=NONE cterm=NONE 
  "karakter placeholder menggantikan teks tersembunyi
  hi Conceal ctermfg=200 ctermbg=200 cterm=NONE
  "konstanta apapun
  hi Constant ctermfg=93 ctermbg=16 cterm=NONE
	hi javaConstant ctermfg=93 ctermbg=16 cterm=NONE	
  "karakter di bawah kursor"kedap kedip"
  hi Cursor ctermfg=16 ctermbg=50 cterm=NONE
  "kolom layar tempat kursor berada saat 'kolom kursor' disetel
  hi CursorColumn ctermfg=NONE ctermbg=16 cterm=NONE
  "garis layar tempat kursor berada saat 'garis kursor' disetel
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=underline
  hi CursorLineNr ctermfg=226 ctermbg=236 cterm=bold
  "seperti Kursor, tetapi digunakan saat dalam mode IME |CursorIM|
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  "nama direktori (dan nama khusus lainnya dalam daftar)
  hi Directory ctermfg=50 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=50 ctermbg=NONE cterm=bold
  "setiap konstruksi yang salah
  hi Error    ctermfg=255 ctermbg=196 cterm=NONE
  "pesan kesalahan pada baris perintah
  hi ErrorMsg ctermfg=255 ctermbg=196 cterm=NONE
  "keyword exception 
  hi Exception ctermfg=93 ctermbg=NONE cterm=NONE
  "garis yang digunakan untuk lipatan tertutup
  hi Folded ctermfg=16 ctermbg=82 cterm=NONE
  hi FoldColumn ctermfg=82 ctermbg=16 cterm=NONE
  "konstanta float:2.5e10
  hi Float ctermfg=196 ctermbg=16 cterm=bold
  "fungsi atau method
  hi Function ctermfg=93 ctermbg=NONE cterm=NONE 
	"separator tag html kurang dari '<' dan lebih besar '>'
  hi htmlTag ctermfg=255 ctermbg=16 cterm=NONE
  hi htmlEndTag ctermfg=255 ctermbg=16 cterm=NONE
  "dibiarkan kosong, tersembunyi
  hi Ignore ctermfg=16 ctermbg=16 cterm=NONE
  "nama variabel apa saja
  hi Identifier ctermfg=93 ctermbg=16 cterm=NONE
  "Nomor baris untuk perintah ':number" dan ':#', dan kapan 'number'
  "atau opsi 'nomor relatif' disetel
  "ketik :number atau :#
  hi LineNr ctermfg=255 ctermbg=16 cterm=NONE
  "Dimungkinkan untuk memberi kursor GUI warna lain saat pemetaan bahasa
  "sedang digunakan. Ini dinonaktifkan secara default, untuk menghindari kursor menjadi
  "tidak terlihat saat Anda menggunakan warna latar non-standar
  hi lCursor  ctermfg=16 ctermbg=255 cterm=NONE
  " '~' dan '@' di akhir jendela, karakter dari
  " 'showbreak' dan karakter lain yang sebenarnya tidak ada dalam teks 
  " (mis., '>' ditampilkan saat karakter lebar ganda tidak pas di akhir baris).
  hi NonText ctermfg=50 ctermbg=NONE cterm=bold
  "konstanta angka: 234, 0xff
  hi Number ctermfg=196 ctermbg=16 cterm=NONE
  "sama seperti mendefinisikan
	hi Macro ctermfg=93 ctermbg=16 cterm=NONE
  "Praprocessor #include #define #import #from
  hi PreProc ctermfg=50 ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=50 ctermbg=NONE cterm=NONE
  "konstanta string: 'ini adalah string'
  hi String ctermfg=119 ctermbg=16 cterm=NONE
  "pernyataan apapun if, then, else, endif, switch, for, try, etc
  hi Statement ctermfg=50 ctermbg=NONE cterm=NONE
	hi javaStatement ctermfg=50 ctermbg=NONE cterm=NONE
  hi javaStorageClass ctermfg=93 ctermbg=NONE cterm=NONE
  "setiap simbol khusus
  hi Special  ctermfg=202 ctermbg=NONE cterm=NONE
  "int, long, char, etc
  hi Type ctermfg=50 ctermbg=NONE cterm=NONE
  "apa pun yang membutuhkan perhatian ekstra; kebanyakan kata kunci TODO FIXME dan XXX
  hi Todo ctermfg=16 ctermbg=226 cterm=NONE
  "judul untuk output dari ':set all', ':autocmd' dll.
  hi Title ctermfg=46 ctermbg=NONE cterm=NONE
  "teks yang menonjol, tautan/link HTML
  hi Underlined ctermfg=200 ctermbg=NONE cterm=underline
  "Penyorotan pola pencarian terakhir digunakan untuk menyorot baris saat ini 
  "di jendela perbaikan cepat dan item serupa yang perlu menonjol.
  hi Search ctermfg=16 ctermbg=226cterm=NONE
  hi IncSearch ctermfg=255 ctermbg=NONE cterm=reverse
  "kolom di mana |sign| ditampilkan
  hi SignColumn ctermfg=50 ctermbg=12 cterm=NONE   
  "mode selection
  hi Visual ctermfg=16 ctermbg=196 cterm=bold
  "Pemilihan mode visual saat vim adalah 'Tidak Memiliki Pilihan'. 
  "Hanya X11 Gui |gui-x11| dan |xterm-clipboard| mendukung ini.
  hi VisualNOS ctermfg=NONE ctermbg=16 cterm=underline
  "pesan peringatan
  hi WarningMsg ctermfg=196 ctermbg=NONE cterm=NONE
  "above abo[veleft] Jalankan {cmd}. 
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kiri 
  "(pemisahan vertikal) atau di atas (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk mode |:execute| dan |:normal|.
  hi! link LineNrAbove LineNr
  "below bel[owright] Jalankan {cmd}.
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kanan 
  "(pemisahan vertikal) atau di bawah (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk |:execute| dan |:normal|.
  hi! link LineNrBelow LineNr
  "Karakter di bawah kursor atau tepat sebelum itu, jika itu adalah braket berpasangan,
  "dan kecocokannya. |pi_paren.txt|
  hi MatchParen ctermfg=NONE ctermbg=196 cterm=NONE
  "'showmode' message (e.g., '-- INSERT --', '-- VISUAL --')
  hi ModeMsg ctermfg=16 ctermbg=82 cterm=bold
  "'more-prompt contoh ketik :autocmd (e.g., -- MORE -- etc.)
  hi MoreMsg ctermfg=16 ctermbg=82 cterm=bold
  hi Question ctermfg=16 ctermbg=82 cterm=bold
  "Meta dan kunci khusus yang terdaftar dengan ':map', juga untuk teks yang 
  "digunakan untuk menampilkan karakter yang tidak dapat dicetak dalam teks, 'listchars'.
  "Umumnya :text yang ditampilkan berbeda dari aslinya
  hi SpecialKey ctermfg=50 ctermbg=NONE cterm=NONE
  "kecocokan saat ini dalam penyelesaian wildmenu
  hi WildMenu ctermfg=16 ctermbg=50 cterm=NONE
  hi QuickFixLine ctermfg=16 ctermbg=50 cterm=NONE
  "Kata yang tidak dikenali oleh pemeriksa ejaan. |spell|
  "Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellBad ctermfg=196 ctermbg=NONE cterm=underline
  "Kata yang harus dimulai dengan huruf kapital. |spell|
  "Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellCap ctermfg=50 ctermbg=NONE cterm=underline
  "Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang digunakan di wilayah lain.
  "|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellLocal ctermfg=201 ctermbg=NONE cterm=underline
  "Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang hampir tidak pernah digunakan. 
  "|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellRare ctermfg=50 ctermbg=NONE cterm=underline
  "baris status jendela saat ini
  "contoh ketik:split [file_nama]
  "hi StatusLine ctermfg=255 ctermbg=20 cterm=bold
  hi StatusLine ctermfg=255 ctermbg=16 cterm=bold
  "baris status jendela yang tidak aktif 
  "Catatan : jika ini sama dengan 'StatusLine' Vim akan menggunakan '^^^' 
  "di baris status jendela saat ini.
  "hi StatusLineNC ctermfg=220 ctermbg=17 cterm=NONE
  hi StatusLineNC ctermfg=220 ctermbg=16 cterm=NONE 
	"kolom yang memisahkan jendela yang terbelah secara vertikal
  hi VertSplit ctermfg=16 ctermbg=236 cterm=inverse
  "baris halaman tab, bukan label halaman tab aktif
  hi TabLine ctermfg=231 ctermbg=16 cterm=standout
  "baris halaman tab, di mana tidak ada label
  hi TabLineFill ctermfg=NONE ctermbg=16 cterm=reverse
  "baris halaman tab, label halaman tab aktif
  hi TabLineSel ctermfg=255 ctermbg=16 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=16 cterm=NONE
  hi ToolbarButton ctermfg=16 ctermbg=255 cterm=bold
  hi Pmenu ctermfg=fg ctermbg=236 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel ctermfg=16 ctermbg=255 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=155 cterm=NONE
  "mode diff ketik :vert diffsplit file1.txt file2.txt
  "menambah baris teks
  hi DiffAdd ctermfg=231 ctermbg=16 cterm=NONE
  "mengubah baris teks
  hi DiffChange ctermfg=93 ctermbg=16 cterm=NONE
  "mengubah teks dalam baris yang diubah
  hi DiffText ctermfg=51 ctermbg=16 cterm=NONE
  "menghapus baris teks
  hi DiffDelete ctermfg=255 ctermbg=16 cterm=NONE
  unlet s:t_Co
  finish
endif

"------------ vim color terminal ----------------
"color base 16
if s:t_Co >= 16
  hi Normal ctermfg=white ctermbg=black cterm=NONE 
  hi! link Terminal Normal
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link CurSearch Search
  hi! link CursorLineFold CursorLine
  hi! link CursorLineSign CursorLine
  "konstanta karakter 'c'
  hi Character ctermfg=red ctermbg=black cterm=NONE 
  "digunakan untuk kolom yang diatur dengan kolom warna
  hi ColorColumn ctermfg=NONE ctermbg=black cterm=NONE
  "komentar
  hi Comment ctermfg=grey ctermbg=NONE cterm=NONE 
  "karakter placeholder menggantikan teks tersembunyi
  hi Conceal ctermfg=grey ctermbg=grey cterm=NONE  
  "karakter di bawah kursor"kedap kedip"
  hi Cursor ctermfg=black ctermbg=cyan cterm=NONE 
  "kolom layar tempat kursor berada saat 'kolom kursor' disetel
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline 
  "garis layar tempat kursor berada saat 'garis kursor' disetel
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=red ctermbg=NONE cterm=underline 
  "seperti Kursor, tetapi digunakan saat dalam mode IME |CursorIM|
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE 
  "nama direktori (dan nama khusus lainnya dalam daftar)
  hi Directory ctermfg=cyan ctermbg=NONE cterm=NONE 
  "setiap konstruksi yang salah
  hi Error ctermfg=white ctermbg=red cterm=NONE 
  "pesan kesalahan pada baris perintah
  hi ErrorMsg ctermfg=white ctermbg=red cterm=NONE 
  "keyword exception 
  hi Exception ctermfg=darkcyan ctermbg=NONE gui=NONE cterm=NONE 
  "garis yang digunakan untuk lipatan tertutup
  hi Folded ctermfg=green ctermbg=NONE cterm=NONE
  "garis yang digunakan untuk diff ketik :vert diffsplit [filename2]
  hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE 
  "konstanta float:2.5e10
  hi Float ctermfg=red ctermbg=black cterm=NONE 
  "fungsi atau method
  hi Function ctermfg=darkcyan ctermbg=black cterm=NONE
  "separator tag html kurang dari < dan lebih besar >
  hi htmlTag ctermfg=white ctermbg=black cterm=NONE
  hi htmlEndTag ctermfg=white ctermbg=black cterm=NONE	 
  "dibiarkan kosong, tersembunyi
  hi Ignore ctermfg=black ctermbg=black cterm=NONE 
  "Nomor baris untuk perintah ':number" dan ':#', dan kapan 'number'
  "atau opsi 'nomor relatif' disetel
  "ketik :number atau :#
  hi LineNr ctermfg=white ctermbg=black cterm=NONE 
  "Dimungkinkan untuk memberi kursor GUI warna lain saat pemetaan bahasa
  "sedang digunakan. Ini dinonaktifkan secara default, untuk menghindari kursor menjadi
  "tidak terlihat saat Anda menggunakan warna latar non-standar
  hi lCursor ctermfg=black ctermbg=white cterm=NONE 
  " '~' dan '@' di akhir jendela, karakter dari
  " 'showbreak' dan karakter lain yang sebenarnya tidak ada dalam teks 
  " (mis., '>' ditampilkan saat karakter lebar ganda tidak pas di akhir baris).
  hi NonText ctermfg=cyan ctermbg=NONE cterm=bold 
  "konstanta angka: 234, 0xff
  hi Number ctermfg=red ctermbg=black cterm=NONE 
  "Praprocessor #include #define #import #from
  hi PreProc ctermfg=cyan ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=cyan ctermbg=NONE cterm=NONE 
  "konstanta string: 'ini adalah string'
  hi String ctermfg=green ctermbg=black cterm=NONE 
  "pernyataan apapun if, then, else, endif, switch, for, try, etc
  hi Statement ctermfg=cyan ctermbg=NONE cterm=NONE 
  "setiap simbol khusus
  hi Special ctermfg=darkcyan ctermbg=NONE cterm=NONE
  "teks yang digunakan untuk menampilkan karakter yang tidak
  "dapat dicetak dalam teks
  hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE 
  "int, long, char, etc
  hi Type ctermfg=cyan ctermbg=NONE cterm=NONE 
  "apa pun yang membutuhkan perhatian ekstra; kebanyakan kata kunci TODO FIXME dan XXX
  hi Todo ctermfg=black ctermbg=yellow cterm=NONE 
  "judul untuk output dari ':set all', ':autocmd' dll.
  hi Title ctermfg=white ctermbg=NONE cterm=NONE 
  "teks yang menonjol, tautan/link HTML
  hi Underlined ctermfg=magenta ctermbg=NONE cterm=underline 
  "Penyorotan pola pencarian terakhir digunakan untuk menyorot baris saat ini 
  "di jendela perbaikan cepat dan item serupa yang perlu menonjol.
  hi Search ctermfg=black ctermbg=darkyellow cterm=NONE
  hi IncSearch ctermfg=white ctermbg=NONE cterm=reverse 
  "kolom di mana |sign| ditampilkan
  hi SignColumn ctermfg=cyan ctermbg=grey cterm=NONE    
  "mode selection
  hi Visual ctermfg=darkred ctermbg=black cterm=standout 
  "Pemilihan mode visual saat vim adalah 'Tidak Memiliki Pilihan'. 
  "Hanya X11 Gui |gui-x11| dan |xterm-clipboard| mendukung ini.
  hi VisualNOS ctermfg=NONE ctermbg=black cterm=underline 
  "pesan peringatan
  hi WarningMsg ctermfg=darkred ctermbg=NONE cterm=NONE 
  "above abo[veleft] Jalankan {cmd}. 
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kiri 
  "(pemisahan vertikal) atau di atas (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk mode |:execute| dan |:normal|.
  hi! link LineNrAbove LineNr
  "below bel[owright] Jalankan {cmd}.
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kanan 
  "(pemisahan vertikal) atau di bawah (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk |:execute| dan |:normal|.
  hi! link LineNrBelow LineNr 
  "Karakter di bawah kursor atau tepat sebelum itu, jika itu adalah braket berpasangan,
  "dan kecocokannya. |pi_paren.txt|
  hi MatchParen ctermfg=NONE ctermbg=red cterm=NONE 
  "'showmode' message (e.g., '-- INSERT --', '-- VISUAL --')
  hi ModeMsg ctermfg=black ctermbg=darkcyan cterm=bold 
  "'more-prompt contoh ketik :autocmd (e.g., -- MORE -- etc.)
  hi MoreMsg ctermfg=black ctermbg=darkcyan cterm=bold
  "hi Question guifg=#00ff00 guibg=NONE gui=bold cterm=bold 
  "Meta dan kunci khusus yang terdaftar dengan ':map', juga untuk teks yang 
  "digunakan untuk menampilkan karakter yang tidak dapat dicetak dalam teks, 'listchars'.
  "Umumnya :text yang ditampilkan berbeda dari aslinya
  hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE 
  "kecocokan saat ini dalam penyelesaian wildmenu
  hi WildMenu ctermfg=black ctermbg=cyan cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=darkcyan cterm=NONE 
  "Kata yang tidak dikenali oleh pemeriksa ejaan. |spell|
  "Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellBad ctermfg=red ctermbg=NONE cterm=underline 
  "Kata yang harus dimulai dengan huruf kapital. |spell|
  "Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellCap ctermfg=darkcyan ctermbg=NONE cterm=underline 
  "Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang digunakan di wilayah lain.
  "|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellLocal ctermfg=magenta ctermbg=NONE cterm=underline 
  "Kata yang dikenali oleh pemeriksa ejaan sebagai kata yang hampir tidak pernah digunakan. 
  "|spell| Ini akan dikombinasikan dengan penyorotan yang digunakan sebaliknya.
  hi SpellRare ctermfg=yellow ctermbg=NONE cterm=underline 
  "baris status jendela saat ini
  "contoh ketik:split [file_nama]
  hi StatusLine ctermfg=white ctermbg=blue cterm=NONE 
  "baris status jendela yang tidak aktif 
  "Catatan : jika ini sama dengan 'StatusLine' Vim akan menggunakan '^^^' 
  "di baris status jendela saat ini.
  hi StatusLineNC ctermfg=darkyellow ctermbg=darkblue cterm=NONE 
  "kolom yang memisahkan jendela yang terbelah secara vertikal
  hi VertSplit ctermfg=black ctermbg=darkblue cterm=NONE 
  "baris halaman tab, bukan label halaman tab aktif
  hi TabLine ctermfg=white ctermbg=black cterm=standout 
  "baris halaman tab, di mana tidak ada label
  hi TabLineFill ctermfg=NONE ctermbg=black cterm=reverse
  hi Pmenu ctermfg=fg ctermbg=white cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=yellow cterm=NONE
  "mode diff ketik :vert diffsplit file1.txt file2.txt
  "menambah baris teks
  hi DiffAdd ctermfg=white ctermbg=black cterm=NONE
  "mengubah baris teks
  hi DiffChange ctermfg=white ctermbg=black cterm=NONE
  "mengubah teks dalam baris yang diubah
  hi DiffText ctermfg=red ctermbg=black cterm=NONE
  "menghapus baris teks
  hi DiffDelete ctermfg=white ctermbg=black cterm=NONE
  unlet s:t_Co
  finish
endif
"------------ vim color terminal ----------------
"color base 8
if s:t_Co >= 8
  hi Normal ctermfg=white ctermbg=black cterm=NONE 
  hi! link Terminal Normal
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link CurSearch Search
  hi! link CursorLineFold CursorLine
  hi! link CursorLineSign CursorLine
  "konstanta karakter 'c'
  hi Character ctermfg=red ctermbg=black cterm=NONE 
  "digunakan untuk kolom yang diatur dengan kolom warna
  hi ColorColumn ctermfg=NONE ctermbg=grey cterm=NONE
  "komentar
  hi Comment ctermfg=grey ctermbg=NONE cterm=NONE 
  "karakter placeholder menggantikan teks tersembunyi
  hi Conceal ctermfg=grey ctermbg=grey cterm=NONE  
  "karakter di bawah kursor"kedap kedip"
  hi Cursor ctermfg=black ctermbg=cyan cterm=NONE 
  "kolom layar tempat kursor berada saat 'kolom kursor' disetel
  hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=underline 
  "garis layar tempat kursor berada saat 'garis kursor' disetel
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorLineNr ctermfg=red ctermbg=NONE cterm=underline 
  "seperti Kursor, tetapi digunakan saat dalam mode IME |CursorIM|
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE 
  "nama direktori (dan nama khusus lainnya dalam daftar)
  hi Directory ctermfg=cyan ctermbg=NONE cterm=NONE 
  "setiap konstruksi yang salah
  hi Error ctermfg=white ctermbg=red cterm=NONE 
  "pesan kesalahan pada baris perintah
  hi ErrorMsg ctermfg=white ctermbg=red cterm=NONE 
  "keyword exception 
  hi Exception ctermfg=darkcyan ctermbg=NONE gui=NONE cterm=NONE 
  "garis yang digunakan untuk lipatan tertutup
  hi Folded ctermfg=green ctermbg=NONE cterm=NONE
  "garis yang digunakan untuk diff ketik :vert diffsplit [filename2]
  hi FoldColumn ctermfg=NONE ctermbg=NONE cterm=NONE 
  "konstanta float:2.5e10
  hi Float ctermfg=red ctermbg=black cterm=NONE 
  "fungsi atau method
  "hi Function guifg=#8700ff guibg=#000000 gui=NONE cterm=NONE 
  "dibiarkan kosong, tersembunyi
  hi Ignore ctermfg=black ctermbg=black cterm=NONE 
  "Nomor baris untuk perintah ':number" dan ':#', dan kapan 'number'
  "atau opsi 'nomor relatif' disetel
  "ketik :number atau :#
  hi LineNr ctermfg=white ctermbg=black cterm=bold 
  "Dimungkinkan untuk memberi kursor GUI warna lain saat pemetaan bahasa
  "sedang digunakan. Ini dinonaktifkan secara default, untuk menghindari kursor menjadi
  "tidak terlihat saat Anda menggunakan warna latar non-standar
  hi lCursor ctermfg=black ctermbg=white cterm=NONE 
  " '~' dan '@' di akhir jendela, karakter dari
  " 'showbreak' dan karakter lain yang sebenarnya tidak ada dalam teks 
  " (mis., '>' ditampilkan saat karakter lebar ganda tidak pas di akhir baris).
  hi NonText ctermfg=cyan ctermbg=NONE cterm=bold 
  "konstanta angka: 234, 0xff
  hi Number ctermfg=red ctermbg=black cterm=NONE 
  "Praprocessor #include #define #import #from
  hi PreProc ctermfg=cyan ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=cyan ctermbg=NONE cterm=NONE 
  "konstanta string: 'ini adalah string'
  hi String ctermfg=green ctermbg=black cterm=NONE 
  "pernyataan apapun if, then, else, endif, switch, for, try, etc
  hi Statement ctermfg=cyan ctermbg=NONE cterm=NONE 
  "setiap simbol khusus
  hi Special ctermfg=darkcyan ctermbg=NONE cterm=NONE
  "teks yang digunakan untuk menampilkan karakter yang tidak
  "dapat dicetak dalam teks
  hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE 
  "int, long, char, etc
  hi Type ctermfg=cyan ctermbg=NONE cterm=NONE 
  "apa pun yang membutuhkan perhatian ekstra; kebanyakan kata kunci TODO FIXME dan XXX
  hi Todo ctermfg=black ctermbg=yellow cterm=NONE 
  "judul untuk output dari ':set all', ':autocmd' dll.
  hi Title ctermfg=white ctermbg=NONE cterm=NONE 
  "teks yang menonjol, tautan/link HTML
  hi Underlined ctermfg=magenta ctermbg=NONE cterm=underline 
  "Penyorotan pola pencarian terakhir digunakan untuk menyorot baris saat ini 
  "di jendela perbaikan cepat dan item serupa yang perlu menonjol.
  hi Search ctermfg=black ctermbg=darkyellow cterm=NONE
  hi IncSearch ctermfg=white ctermbg=NONE cterm=reverse 
  "kolom di mana |sign| ditampilkan
  hi SignColumn ctermfg=cyan ctermbg=grey cterm=NONE
  "mode selection
  hi Visual ctermfg=darkred ctermbg=black cterm=standout
  "hi Visual   guifg=#f54242 guibg=#000000 gui=standout cterm=standout 
  "Pemilihan mode visual saat vim adalah 'Tidak Memiliki Pilihan'. 
  "Hanya X11 Gui |gui-x11| dan |xterm-clipboard| mendukung ini.
  hi VisualNOS ctermfg=NONE ctermbg=black cterm=underline 
  "pesan peringatan
  hi WarningMsg ctermfg=darkred ctermbg=NONE cterm=NONE 
  "above abo[veleft] Jalankan {cmd}. 
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kiri 
  "(pemisahan vertikal) atau di atas (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk mode |:execute| dan |:normal|.
  hi! link LineNrAbove LineNr
  "below bel[owright] Jalankan {cmd}.
  "Jika berisi perintah yang membagi jendela, itu akan dibuka ke kanan 
  "(pemisahan vertikal) atau di bawah (pemisahan horizontal) jendela saat ini. 
  "Mengabaikan 'splitbelow' dan 'splitright'.
  "Tidak berfungsi untuk |:execute| dan |:normal|.
  hi! link LineNrBelow LineNr 
  "Karakter di bawah kursor atau tepat sebelum itu, jika itu adalah braket berpasangan,
  "dan kecocokannya. |pi_paren.txt|
  hi MatchParen ctermfg=NONE ctermbg=red cterm=NONE 
  "'showmode' message (e.g., '-- INSERT --', '-- VISUAL --')
  hi ModeMsg ctermfg=black ctermbg=darkcyan cterm=bold 
  "'more-prompt contoh ketik :autocmd (e.g., -- MORE -- etc.)
  hi MoreMsg ctermfg=black ctermbg=darkcyan cterm=bold 
  "Meta dan kunci khusus yang terdaftar dengan ':map', juga untuk teks yang 
  "digunakan untuk menampilkan karakter yang tidak dapat dicetak dalam teks, 'listchars'.
  "Umumnya :text yang ditampilkan berbeda dari aslinya
  hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE 
  "kecocokan saat ini dalam penyelesaian wildmenu
  hi WildMenu ctermfg=black ctermbg=cyan cterm=NONE
  hi QuickFixLine ctermfg=black ctermbg=darkcyan cterm=NONE 
  "baris status jendela saat ini
  "contoh ketik:split [file_nama]
  hi StatusLine ctermfg=white ctermbg=blue cterm=NONE 
  "baris status jendela yang tidak aktif 
  "Catatan : jika ini sama dengan 'StatusLine' Vim akan menggunakan '^^^' 
  "di baris status jendela saat ini.
  hi StatusLineNC ctermfg=darkyellow ctermbg=darkblue cterm=NONE 
  "kolom yang memisahkan jendela yang terbelah secara vertikal
  hi VertSplit ctermfg=black ctermbg=darkblue cterm=NONE
  "mode diff ketik :vert diffsplit file1.txt file2.txt
  "menambah baris teks
  hi DiffAdd ctermfg=white ctermbg=black cterm=NONE
  "mengubah baris teks
  hi DiffChange ctermfg=white ctermbg=black cterm=NONE
  "mengubah teks dalam baris yang diubah
  hi DiffText ctermfg=red ctermbg=black cterm=NONE
  "menghapus baris teks
  hi DiffDelete ctermfg=white ctermbg=black cterm=NONE

  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Comment term=bold
  hi Constant term=NONE
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi CursorColumn term=NONE
  hi CursorIM term=NONE
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi Error term=bold,reverse
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi Number term=NONE
  hi NonText ctermfg=cyan term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi PreProc term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi Special term=NONE
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi Statement term=NONE
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi Todo term=bold,reverse
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold

  unlet s:t_Co
  finish
endif
