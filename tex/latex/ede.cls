% Journal of Electronic Design Engineering
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ede}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Title/.store in      = \@title,%
  Author/.store in     = \@author,%
  Address/.store in    = \ede@address,%
  Abstract/.store in   = \ede@abstract,%
  Keyword/.store in    = \ede@keyword,%
  ztnum/.store in      = \ede@ztnum, %中图分类号
  wxcode/.store in     = \ede@wxcode,%文献标识码
  enTitle/.store in    = \ede@entitle,%
  enAuthor/.store in   = \ede@enauthor,%
  enAddress/.store in  = \ede@enaddress,%
  enAbstract/.store in = \ede@enabstract,%
  enKeyword/.store in  = \ede@enkeyword,%
}

\newcommand{\edesetup}[1]{\pgfkeys{#1}}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[twocolumn,oneside,a4paper,UTF8,scheme=chinese]{ctexart} % zihao=5

%%% geometry
\RequirePackage{geometry}

%%% table
\RequirePackage{tabularx,longtable,booktabs}    
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

\RequirePackage{amsmath,amsfonts,amssymb,pifont,marvosym}

\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

\RequirePackage{abstract}    % one-column abstract for 2-col env

\renewcommand{\maketitle}{% Title layout
  \begin{center}
    {\huge\xingkai\@title}\\[1ex]
    {\large\@author}\\
    {（\kaishu\ede@address）}
  \end{center}
  \noindent\textbf{摘要：}{\kaishu\ede@abstract}\par
  \noindent\textbf{关键词：}{\kaishu\ede@keyword}\par
  \textbf{中图分类号：}\ede@ztnum\hfill\textbf{文献标识码：}\ede@wxcode
  \begin{center}
    {\Large\ede@entitle}\\[1ex]
    \ede@enauthor\\
    \emph{(\ede@enaddress)}
  \end{center}
  \noindent\textbf{Abstract: }\ede@enabstract\par
  \noindent\textbf{Key words: }\ede@enkeyword\par
  \vspace*{3ex}
}

% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 11pt

\newcommand{\makebib}{% 参考文献
  \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}}

%%%%% caption
\RequirePackage{caption} % \captionsetup
\RequirePackage{subcaption}
\captionsetup{labelsep=quad}

\RequirePackage{tikz} 
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{% for 2nd level enumerate
    \node[shape=circle,draw,inner sep=2pt] (char) {#1};}}

%%% enumitem
\RequirePackage{enumitem}
\setlist[enumerate,1]{label=\arabic*）, ref=\arabic*}
\setlist[enumerate,2]{label=\protect\circled{\arabic*}}% untested!


\setmainfont{Liberation Serif}
\newCJKfontfamily\xingkai{FZXingKai-S04S}
  
\RequirePackage{minted}
\usemintedstyle{bw}

\ctexset{
  section/format = \large\heiti,%
  subsection/format = \heiti,%
}

\date{}

\pagestyle{empty}