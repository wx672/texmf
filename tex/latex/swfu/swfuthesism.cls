% 西南林业大学硕士学位论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesism}

%\RequirePackage{ifxetex} % XeTeX only

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

\RequirePackage[%showframe,%
margin=3cm,%
nomarginpar,headheight=15pt% to avoid "headheight too small"
]{geometry}

\RequirePackage{etoolbox,units,emptypage}%xkvltxp,
\RequirePackage{varwidth,ulem,rotating,float,comment}
\RequirePackage{indentfirst}
\RequirePackage{booktabs,tabu,longtable,multicol,multirow,array}
\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}


%%%%% graphicx
\RequirePackage{graphicx} % before xltxtra
\graphicspath{% mind the trailing "/"
  {./figs/}{../figs/}{./img/}{../img/}{./}}


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


%%%%%
\pagenumbering{arabic}
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}

\pagestyle{fancy}
% Must go after the first call of \pagestyle{fancy} !!!
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\quad #1}}

\renewcommand{\maketitle}{% Title page layout
  \thispagestyle{empty}
  \begin{tikzpicture}%[remember picture,overlay]
    \node (logo) at (current page.north) [yshift=-4.2cm]%
    {\includegraphics[width=.8\textwidth]{swfulogo}};%
    \node (h1) [below=2.3cm of logo,xshift=7mm,scale=3.4,font=\bfseries,align=center] {硕士学位论文};%
    \node (h2) [below=4mm of h1,scale=1.3,font=\bfseries] {MASTER THESIS};%
  \end{tikzpicture}%
  \begin{center}%
    \vspace*{18ex}%
    \extrarowsep=^3mm_-2mm%
    \begin{tabu} to \textwidth {@{}X[r]X[3.8,l]}%
      {\Large\bfseries 论文题目}&%
      \makebox[0pt][t]{%
        \begin{minipage}[t]{27em}
          \centering\parbox[t]{26em}{\centering\bfseries\Large\@title}
        \end{minipage}}%
      \rule[-.5ex]{27em}{.1pt}\par%
      \rule[-.1ex]{27em}{.1pt}\\%
    \end{tabu}\\[3ex]%
    \begin{Large}
      \begin{tabu} to .75\textwidth {@{}rX[3.3,c]@{}}%
        \textbf{学科专业}&\textbf{\SWFU@Subject}\\[-2pt]\tabucline{2-2}%
        \textbf{学\hspace{2em}号}&\textbf{\SWFU@AuthorId}\\[-2pt]\tabucline{2-2}%
        \textbf{作者姓名}&\textbf{\@author}\\[-2pt]\tabucline{2-2}%
        \textbf{指导教师} &\textbf{\SWFU@Advisor\hspace{1ex}（\SWFU@AdvisorTitle）}\\[-2pt]\tabucline{2-2}%
      \end{tabu}
    \end{Large}
  \end{center}
  \clearpage\shipout\null%
  \thispagestyle{empty}%
  \extrarowsep=^3mm_-2mm%
  \begin{center}
    \vspace*{-7ex}
    \begin{footnotesize}
      \begin{tabu}{rX[l]rX[c]}
        分类号&\SWFU@ClsID&密级&\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}
        UDC&&&\\\tabucline{2-2}
      \end{tabu}
    \end{footnotesize}
  
    \vspace{6ex}
    \tikz\node [scale=2.7,font=\bfseries] {\makebox[7em][s]{学位论文}};\\[10ex]
    % https://tex.stackexchange.com/questions/89980/change-lineskip-to-fill-the-available-space
    \begin{minipage}[c][4em][s]{.8\linewidth}
      %https://tex.stackexchange.com/questions/74151/interline-spacing
      \lineskip=6pt \lineskiplimit=\maxdimen %\baselineskip=-3pt
      \centering \bfseries\LARGE \uline{\@title}
    \end{minipage}\\[3ex]
    \begin{minipage}{.15\linewidth}
      \centering {\bfseries\large \uline{\@author}}
    \end{minipage}\\[19ex]
    
    \begin{tabu}to .8\linewidth {rX[c]X[c]}
      指导教师&\textbf{\SWFU@Advisor}&\textbf{\SWFU@AdvisorTitle}\\\tabucline{2-3}
      &\textbf{西南林业大学}&\textbf{昆明}\\\tabucline{2-3}
      &&\\\tabucline{2-3}
      &&\\\tabucline{2-3}
    \end{tabu}\\[8ex]    

    \begin{tabu}to .8\linewidth {rX[c]rX[c]}
      申请学位级别&\textbf{硕士}&%
      学科专业&\textbf{\SWFU@Subject}\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}%
      提交论文日期&\textbf{\SWFU@DateA}&%
      论文答辩日期&\textbf{\SWFU@DateB}\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}%
    \end{tabu}

    \begin{tabu}to .8\linewidth {lX[c]}
      学位授予单位和日期&\textbf{西南林业大学}\\\tabucline{2-2}
      答辩委员会主席&\textbf{\SWFU@Chairman}\\\tabucline{2-2}
    \end{tabu}
  \end{center}  
  \clearpage\shipout\null
  \thispagestyle{empty}
  \begin{center}
    \vspace*{15ex}
    {\Large \textbf{\SWFU@enTitle}}\\[25ex]
    \begin{large}
      \textbf{A Master Thesis Submitted to}\\[-1ex]
      \textbf{Southwest Forestry University}\\[15ex]
      
    \begin{tabu}to .8\linewidth {rX[c]@{}}
      Major:&\textbf{\SWFU@enSubject}\\\tabucline{2-2}
      Author:&\textbf{\SWFU@enAuthor}\\\tabucline{2-2}
      Advisor:&\textbf{\SWFU@enAdvisor}\\\tabucline{2-2}
      School:&%
      \makebox[0pt][t]{%
        \begin{minipage}[t]{19em}
          \centering\parbox[t]{17em}{\centering\textbf{College of Big Data and Intelligence Engineering}}
        \end{minipage}}%
      \rule[-.6ex]{19em}{.1pt}\par
      \rule{19em}{.1pt}\\
    \end{tabu}
    \end{large}
  \end{center}
  \clearpage\shipout\null
  \thispagestyle{empty}
  \vspace*{1ex}
  \begin{center}
    {\Large \textbf{独创性声明}}
  \end{center}
  \begin{large}
    \hspace{2em}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
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
    {\Large \textbf{论文使用授权}}
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
    {\large\textbf{摘\hspace{1em}要}}
  \end{center}\qquad}{}

\newenvironment{keyword}{%
  \vskip 2ex\noindent\textbf{关键字：}}{\pagebreak}

\newenvironment{eabstract}{%
  \providecommand\pdfbookmark[3][]{}\pdfbookmark[0]{Abstract}{bm:Abstract}%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    {\large \textbf{ABSTRACT}}
  \end{center}\qquad}{}

\newenvironment{ekeyword}{%
  \vskip 2ex\noindent\textbf{Key words: }}{\pagebreak}

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

%%%%% minted
\RequirePackage[chapter]{minted} % minted has to be loaded at last!!!
\usemintedstyle{bw}

%%%%% caption
\RequirePackage{caption,bicaption,subcaption} % \captionsetup

% set caption label style to, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}

\captionsetup{labelsep=quad,format=hang}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

\DeclareCaptionOption{bi-first}[]{%
  \def\tablename{表}%
  \def\figurename{图}%
  \def\listingscaption{程序}}

\DeclareCaptionOption{bi-second}[]{%
  \def\tablename{Tab.\!}%
  \def\figurename{Fig.\!}%
  \def\listingscaption{Code}}

%%%%%
\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}


%%%%% minted
\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newcommand{\codec}[1]{\mintinline{c}|#1|}

\setmintedinline{breaklines=true,fontsize=\small,autogobble=false}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  rulecolor=\color{lightgray},autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

% code listing cross pages
\newenvironment{longlisting}{\captionsetup{type=listing}\begin{singlespace}}{\end{singlespace}}


%%%%% ctex
\ctexset{
  section/format = \Large\bfseries,
  chapter/name = {},
  chapter/number = {\thechapter},
}

\setlength{\parindent}{2em}
% \setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}
