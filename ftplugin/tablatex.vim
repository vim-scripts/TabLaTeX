"""""""""""""""""""""""""""""""""""""""
" TabLaTeX 1                          "
"                                     "
" Pedro Diaz (tablatex@cavecanen.org) "
"""""""""""""""""""""""""""""""""""""""




"""""""""""""
" Variables "
"""""""""""""
set timeoutlen=300
set ignorecase


"""""""""""""
" Typefaces "
"""""""""""""

" Bold
imap b<Tab>			\textbf{}<Left>
nmap <C-C>b			wbi\textbf{<Esc>ea}<Esc>

" Italic
imap i<Tab>			\textit{}<Left>
nmap <C-C>i			wbi\textit{<Esc>ea}<Esc>

" Smallcaps
imap s<Tab>			\textsc{}<Left>
nmap <C-C>s			wbi\textsc{<Esc>ea}<Esc>

" Verbatim
imap v<Tab>			\verb++<Left>
nmap <C-C>v			wbi\verb+<Esc>ea+<Esc>
imap V<Tab>			<CR>\begin{verbatim}<CR><CR>\end{verbatim}<UP>

" Typewriter
imap t<Tab>			\texttt{}<Left>
nmap <C-C>t			wbi\texttt{<Esc>ea}<Esc>

" Underline
imap _<Tab>			\underline{}<Left>
nmap <C-C>_         wbi\underline{<Esc>ea}<Esc>



""""""""""""""""
" Enumerations "
""""""""""""""""
imap I<Tab>			<CR>\begin{itemize}<CR><CR>\end{itemize}<UP><tab>
imap E<Tab>			<CR>\begin{enumerate}<CR><CR>\end{enumerate}<UP><tab>
imap p<Tab>			<Esc>$o\item{}<Left>



"""""""""""""
" Math mode "
"""""""""""""
imap m<Tab>			$$<Left>


"""""""""""
" Tabular "
"""""""""""
imap T<Tab>			<CR>\begin{tabular}{}<CR>\end{tabular}<UP><Esc>$i
imap -<Tab>			\hline<CR>
inoremap &              <space>&<space>



""""""""""""
" Graphics "
""""""""""""
imap *<Tab>			\includegraphics[width=cm]{}<Esc>F=a


"""""""""""""""""
" Double quotes "
"""""""""""""""""
imap "				``''<Left><Left>
inoremap \"			"
nmap <C-C>"			wbi``<Esc>ea''<Esc>





"""""""""""""""""
" Text position "
"""""""""""""""""
imap L<Tab>			\begin{flushleft}<CR><CR>\end{flushleft}<UP>
nmap <C-C>L			O\begin{flushleft}<Esc><down>o\end{flushleft}<UP>

imap R<Tab>			\begin{flushright}<CR><CR>\end{flushright}<UP>
nmap <C-C>R			O\begin{flushright}<Esc><down>o\end{flushright}<UP>

imap C<Tab>			\begin{center}<CR><CR>\end{center}<UP>
nmap <C-C>C			O\begin{center}<Esc><down>o\end{center}<UP>




"""""""""""""""""""
" New environment "
"""""""""""""""""""
imap N<Tab>			<Esc>:call InsertEnv()<CR>

function! InsertEnv() 
	let s:t = input( "Environment? " )
	execute "normal o\\begin{".s:t."}\<CR>\<CR>\\end{".s:t."}\<UP>\<Esc>"
endfunction


""""""""
" Misc "
""""""""
vmap %			:s/^/% <CR>


""""""""""""
" Movement "
""""""""""""

" In/out of braces
imap }<Tab>		<Esc>f}a<space>
imap {<Tab>		<Esc>F{bi

" In/out of environments
imap ]<Tab>		<Esc>/\\end{.*}<cr>f}a
imap [<Tab>		<Esc>?\\begin{.*}<cr>i



"""""""""""""""""""""""
" Compiling & viewing "
"""""""""""""""""""""""
map <F5>		<Esc>:w<cr>:!xterm -e make clean all &<cr><cr>
map <F9>        <Esc>:!gv *.ps&<cr>

