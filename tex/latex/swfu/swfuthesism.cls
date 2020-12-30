% 西南林业大学硕士学位论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesism}

\RequirePackage{pgfkeys}

\pgfkeys{
  Title/.store in           = \@title,           % 论文题目             
  enTitle/.store in         = \SWFU@enTitle,     % 论文题目（英文）     
  Author/.store in          = \@author,          % 作者姓名             
  enAuthor/.store in        = \SWFU@enAuthor,    % 作者姓名（英文）     
  AuthorId/.store in        = \SWFU@AuthorId,    % 学号                 
  Advisor/.store in         = \SWFU@Advisor,     % 指导教师             
  enAdvisor/.store in       = \SWFU@enAdvisor,   % 指导教师（英文）     
  AdvisorTitle/.store in    = \SWFU@AdvisorTitle,% 指导教师职称         
  ClsID/.store in           = \SWFU@ClsID,       % 分类号               
  DateA/.store in           = \SWFU@DateA, DateA/.default={\hspace{2em}},% 提交论文日期         
  DateB/.store in           = \SWFU@DateB, DateB/.default={\hspace{2em}},% 论文答辩日期         
  DateC/.store in           = \SWFU@DateC, DateC/.default={\hspace{2em}},% 独创性声明页上的日期 
  Year/.store in            = \SWFU@Year,   Year/.default={\hspace{3em}},% 年
  Month/.store in           = \SWFU@Month, Month/.default={\hspace{2em}},% 月
  Chairman/.store in        = \SWFU@Chairman, % 答辩委员会主席       
  Subject/.store in         = \SWFU@Subject,  % 学科专业             
  enSubject/.store in       = \SWFU@enSubject,% 学科专业（英文）       
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[a4paper,openany,scheme=chinese,zihao=-4]{ctexbook}

%%%%% ctex
\ctexset{%
  chapter/name = {},%
  chapter/number = {\thechapter},%
  chapter/format = {\centering\zihao{-3}\heiti},% 小3号，黑体
  section/format = {\zihao{4}\heiti},% 4号，黑体
  subsection/format = {\zihao{4}\heiti},% 4号，黑体
  subsubsection/format = {\zihao{-4}\heiti},% 小4，黑体
  paragraph/format = {\zihao{-4}\heiti},% 黑体（在规范中未说明）
  subparagraph/format = {\zihao{-4}\heiti},% 黑体（在规范中未说明）
}

\RequirePackage[%showframe,%
margin=3cm,%
nomarginpar,headheight=15pt% to avoid "headheight too small"
]{geometry}

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
\fancyhead[CO]{{\small \leftmark}}
\fancyhead[CE]{{\small 西南林业大学硕士学位论文}}

\fancypagestyle{plain}{% for the 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}}

%\RequirePackage{etoolbox,units,emptypage}%xkvltxp,
%\RequirePackage{rotating,float,comment}%,ulem,varwidth
%\RequirePackage{indentfirst}
\RequirePackage{tabularx,longtable,multicol,multirow,booktabs,makecell}
\renewcommand\theadfont{\bfseries}%\normalfont
\renewcommand{\arraystretch}{1.5}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% graphicx
\RequirePackage{graphicx} % before xltxtra
\graphicspath{% mind the trailing "/"
  {./figs/}{../figs/}{./img/}{../img/}{./}}

%%%%% tocloft
\RequirePackage{tocloft}
\renewcommand\cftdotsep{2}
\renewcommand\cfttoctitlefont{\hfill\Large\heiti}
\renewcommand\cftaftertoctitle{\hfill}
\renewcommand\cftloftitlefont{\hfill\Large\heiti}
\renewcommand\cftafterloftitle{\hfill}
\renewcommand\cftlottitlefont{\hfill\Large\heiti}
\renewcommand\cftafterlottitle{\hfill}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered=true,%
  breaklinks=true, colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% border style will be underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

%%%%% fixme
\RequirePackage{fixme}
\fxsetup{margin=true, marginclue=false, inline=false, status=draft, author=Fixme, theme=color}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{%
  calc,positioning,fit,%
  arrows,shapes,patterns,quotes,%
  decorations.pathmorphing,%
  backgrounds,scopes,%
  mindmap,trees,%
  tikzmark,%
}%

%%%%% biblatex
\RequirePackage[backend=biber,style=gb7714-2015,gbpub=false,gbtype=true,gbpunctin=false,url=false,doi=false,isbn=false]{biblatex}

%%%%% caption
\RequirePackage{subcaption,bicaption} % \captionsetup

% set caption label style to, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}

\captionsetup{labelsep=quad,format=hang}

\DeclareCaptionOption{bi-first}[]{%
  \def\tablename{表}%
  \def\figurename{图}%
  \def\listingscaption{程序}}

\DeclareCaptionOption{bi-second}[]{%
  \def\tablename{Tab.\!}%
  \def\figurename{Fig.\!}%
  \def\listingscaption{Code}}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

%%%%%
\pagenumbering{arabic}
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}

\pagestyle{fancy}
% Must go after the first call of \pagestyle{fancy} !!!
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\quad #1}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
\usemintedstyle{bw}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newcommand{\codec}[1]{\mintinline{c}|#1|}
\newcommand{\cinline}[1]{\mintinline{c}|#1|}

\setmintedinline{breaklines=true,fontsize=\small,autogobble=false}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  rulecolor=\color{lightgray},autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}

\newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt,}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}%
  \begin{singlespace}}{\end{singlespace}}

\renewcommand{\maketitle}{% Title page layout
  \thispagestyle{empty}
  \begin{tikzpicture}%[remember picture,overlay]
    \node (logo) at (current page.north) [yshift=-4.2cm,scale=.13]%
    {\includegraphics{swfulogo}};%
    \node (h1) [below=1.5cm of logo,xshift=7mm,scale=3.4,font=\heiti,align=center] {硕士学位论文};%
    \node (h2) [below=4mm of h1,scale=1.3,font=\bfseries] {MASTER THESIS};%
  \end{tikzpicture}%
  \begin{center}%
    \vspace*{18ex}%
    \begin{tabularx}{\textwidth}{@{}r@{\,\,}CX}%
      {\Large\heiti 论文题目}&\makebox[0pt][t]{% wrapable long title
        \begin{minipage}[t]{27em}
          \centering\parbox[t]{26em}{\centering\heiti\Large\@title}
        \end{minipage}}%
      \rule[-1ex]{27em}{.2pt}\par%
      \rule[-.6ex]{27em}{.2pt}&\\%
    \end{tabularx}\\[3ex]%
    \begin{Large}
      \begin{tabularx}{.75\textwidth}{@{}>{\heiti}rC@{}}%
        学科专业&\SWFU@Subject\\[-9pt]\cline{2-2}%
        学\qquad{}号&\SWFU@AuthorId\\[-9pt]\cline{2-2}%
        作者姓名&\@author\\[-9pt]\cline{2-2}%
        指导教师 &\SWFU@Advisor\hspace{1ex}（\SWFU@AdvisorTitle）\\[-9pt]\cline{2-2}%
      \end{tabularx}
    \end{Large}
  \end{center}

  \clearpage\shipout\null%

  \thispagestyle{empty}%
  \begin{center}
    \vspace*{-7ex}
    \begin{footnotesize}
      \begin{tabularx}{\linewidth}{rXrC}
        分类号&\SWFU@ClsID&密级&\\[-5pt]\cline{2-2}\cline{4-4}
        UDC&&&\\[-5pt]\cline{2-2}
      \end{tabularx}
    \end{footnotesize}
  
    \vspace{6ex}
    \tikz\node [scale=2.7,font=\heiti] {\makebox[7em][s]{学位论文}};\\[10ex]
    % https://tex.stackexchange.com/questions/89980/change-lineskip-to-fill-the-available-space
    \begin{minipage}[c][4em][s]{.8\linewidth}
      %https://tex.stackexchange.com/questions/74151/interline-spacing
      \lineskip=6pt \lineskiplimit=\maxdimen %\baselineskip=-3pt
      \centering \heiti\LARGE \underline{\,\@title\,}
    \end{minipage}\\[3ex]
    \begin{minipage}{.15\linewidth}
      \centering \heiti\large \underline{\,\@author\,}
    \end{minipage}\\[15ex]
    
    \begin{tabularx}{.8\linewidth}{r>{\heiti}C>{\heiti}C}
      指导教师&\SWFU@Advisor&\SWFU@AdvisorTitle\\[-6pt]\cline{2-3}
      &西南林业大学&昆明\\[-6pt]\cline{2-3}
      &&\\[-6pt]\cline{2-3}
      &&\\[-6pt]\cline{2-3}
    \end{tabularx}\\[5ex]

    \begin{tabularx}{.8\linewidth}{r>{\heiti}Cr>{\heiti}C}
      申请学位级别&硕士&%
      学科专业&\SWFU@Subject\\[-6pt]\cline{2-2}\cline{4-4}%
      提交论文日期&\SWFU@DateA&%
      论文答辩日期&\SWFU@DateB\\[-6pt]\cline{2-2}\cline{4-4}%
    \end{tabularx}

    \begin{tabularx}{.8\linewidth}{l>{\heiti}C}
      学位授予单位和日期&西南林业大学\\[-6pt]\cline{2-2}
      答辩委员会主席&\SWFU@Chairman\\[-6pt]\cline{2-2}
    \end{tabularx}
  \end{center}  

  \clearpage\shipout\null

  \thispagestyle{empty}
  \begin{center}
    \vspace*{15ex}
    {\Large\bfseries\SWFU@enTitle}\\[25ex]
    \begin{large}
      {\bfseries A Master Thesis Submitted to}\\[-1ex]
      {\bfseries Southwest Forestry University}\\[15ex]
      
    \begin{tabularx}{.8\linewidth}{r>{\bfseries}C@{}}
      Major:&\SWFU@enSubject\\[-7pt]\cline{2-2}
      Author:&\SWFU@enAuthor\\[-7pt]\cline{2-2}
      Advisor:&\SWFU@enAdvisor\\[-7pt]\cline{2-2}
      School:&%
      \makebox[0pt][t]{%
        \begin{minipage}[t]{19em}
          \centering\parbox[t]{17em}{%
            \centering\heiti College of Big Data and Intelligence Engineering}
        \end{minipage}}%
      \rule[-.6ex]{19em}{.1pt}\par
      \rule{19em}{.1pt}\\
    \end{tabularx}
    \end{large}
  \end{center}
  
  \clearpage\shipout\null

  \thispagestyle{empty}
  \vspace*{1ex}
  \begin{center}
    \Large\heiti 独创性声明
  \end{center}
  \begin{large}
    \qquad{}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
    据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究
    成果，也不包含为获得西南林业大学或其它教育机构的学位或证书而使用过的材料。与我一同工作
    的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。
    \begin{flushright}
      作者签名：\underline{\hspace{7em}}\qquad{}%
      日期：\SWFU@Year{}年\SWFU@Month{}月\SWFU@DateC{}日
    \end{flushright}
  \end{large}

  \vspace{8ex}
  \begin{center}
    \Large\heiti 论文使用授权
  \end{center}
  \begin{large}
    \hspace{2em}本学位论文作者完全了解并同意西南林业大学有关保留、使用学位论文的规定，学校
    有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权西
    南林业大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫
    描等复制手段保存、汇编学位论文。

    （保密的学位论文在解密后应遵守此规定）

    \vspace{3ex}
    \begin{flushright}
      作者签名：\underline{\hspace{7em}}\quad{}导师签名：\underline{\hspace{8em}}\\[2ex]
      日期：\SWFU@Year{}年\SWFU@Month{}月\SWFU@DateC{}日
    \end{flushright}
  \end{large}

  \clearpage\shipout\null}

\newenvironment{abstract}{%
  \providecommand\pdfbookmark[3][]{}\pdfbookmark[0]{摘要}{bm:cnAbstract}%
  \thispagestyle{plain}\phantomsection{}%
  \pagenumbering{roman}
  \begin{center}
    \large\heiti 摘\quad{}要
  \end{center}\qquad}{}

\newenvironment{keyword}{%
  \vskip 2ex\noindent{\heiti 关键字：}}{\pagebreak}

\newenvironment{eabstract}{%
  \providecommand\pdfbookmark[3][]{}\pdfbookmark[0]{Abstract}{bm:Abstract}%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    \large\bfseries ABSTRACT
  \end{center}\qquad}{}

\newenvironment{ekeyword}{%
  \vskip 2ex\noindent{\heiti Key words: }}{\pagebreak}

\newenvironment{authorInfo}{% 个人简介
  \phantomsection{}%
  \addcontentsline{toc}{chapter}{个人简介}%
  \chapter*{个人简介}%
  \vskip 2em\begin{doublespace}}%
  {\end{doublespace}\pagebreak}

\newenvironment{advisorInfo}{% 导师简介
  \phantomsection{}%
  \addcontentsline{toc}{chapter}{导师简介}%
  \chapter*{导师简介}%
  \vskip 2em\begin{doublespace}}%
  {\end{doublespace}\pagebreak}

\newenvironment{acknowledgment}{% 致谢
  \phantomsection{}%
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}%
  \chapter*{致\hspace{1em}谢}%
  \vskip 2em\begin{doublespace}}%
  {\end{doublespace}\pagebreak}

\newcommand{\makebib}{%
  \begin{singlespace}
    \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}\pagebreak
  \end{singlespace}}

\newcommand{\publication}[1]{%
  \begin{refsection}
    \begin{singlespace}
      \nocite{#1}%
      \printbibliography[heading={bibintoc},title={获得成果目录}]\label{p:ref}\pagebreak
    \end{singlespace}
  \end{refsection}}

\setlength{\parindent}{2em}
% \setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}
