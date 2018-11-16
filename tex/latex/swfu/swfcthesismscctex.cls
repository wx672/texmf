% 西南林业大学硕士学位论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcthesismscctex}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[a4paper,openany,scheme=chinese,zihao=-4]{ctexbook}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage[%showframe,%
margin=3cm,%
nomarginpar,headheight=15pt% to avoid "headheight too small"
]{geometry}

\RequirePackage{etoolbox,units,xkvltxp,emptypage}
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
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}


%%%%%
\pagenumbering{arabic}
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}

\pagestyle{fancy}
% Must go after the first call of \pagestyle{fancy} !!!
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\quad #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\quad #1}}

\newcommand{\Appendix}[1]{%
  \renewcommand{\chaptermark}[1]{\markboth{附录\,\thechapter\quad #1}{}}%
  \appendix\singlespacing}


%%%%% Variables to hold the text fields for the preliminary pages
\newcommand{\Title}[1]{\gdef\SWFCField@Title{#1}} % 论文题目
\newcommand{\enTitle}[1]{\gdef\SWFCField@enTitle{#1}} % 论文题目（英文）
\newcommand{\Author}[1]{\gdef\SWFCField@Author{#1}} % 作者姓名
\newcommand{\AuthorInfo}[1]{\gdef\SWFCField@AuthorInfo{#1}} % 个人简介
\newcommand{\AuthorId}[1]{\gdef\SWFCField@AuthorId{#1}} % 学号
\newcommand{\enAuthor}[1]{\gdef\SWFCField@enAuthor{#1}} % 作者姓名（英文）
\newcommand{\Advisor}[1]{\gdef\SWFCField@Advisor{#1}} % 指导教师
\newcommand{\enAdvisor}[1]{\gdef\SWFCField@enAdvisor{#1}} % 指导教师（英文）
\newcommand{\enAdvisorB}[1]{\gdef\SWFCField@enAdvisorB{#1}} % 指导教师B（英文）
\newcommand{\AdvisorTitle}[1]{\gdef\SWFCField@AdvisorTitle{#1}} % 指导教师职称
\newcommand{\AdvisorInfo}[1]{\gdef\SWFCField@AdvisorInfo{#1}} % 导师简介
% \newcommand{\Degree}[1]{\gdef\SWFCField@Degree{#1}} % 申请学位级别（硕士）
\newcommand{\ClsID}[1]{\gdef\SWFCField@ClsID{#1}} % 分类号
\newcommand{\DateA}[1]{\gdef\SWFCField@DateA{#1}} % 提交论文日期
\newcommand{\DateB}[1]{\gdef\SWFCField@DateB{#1}} % 论文答辩日期
\newcommand{\DateC}[1]{\gdef\SWFCField@DateC{#1}} % 独创性声明页上的日期
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}
\newcommand{\Abstract}[1]{\gdef\SWFCField@Abstract{#1}}
\newcommand{\enAbstract}[1]{\gdef\SWFCField@enAbstract{#1}}
\newcommand{\Keywords}[1]{\gdef\SWFCField@Keywords{#1}}
\newcommand{\enKeywords}[1]{\gdef\SWFCField@enKeywords{#1}}
\newcommand{\Acknowledgments}[1]{\gdef\SWFCField@Acknowledgments{#1}}
\newcommand{\Chairman}[1]{\gdef\SWFCField@Chairman{#1}} % 答辩委员会主席
\newcommand{\Subject}[1]{\gdef\SWFCField@Subject{#1}} % 学科专业
\newcommand{\enSubject}[1]{\gdef\SWFCField@enSubject{#1}} % 学科专业（英文）
% \newcommand{\School}[1]{\gdef\SWFCField@School{#1}}
% \newcommand{\enSchool}[1]{\gdef\SWFCField@enSchool{#1}}

\newcommand{\SWFCtitlepage}{% Title page layout
  \thispagestyle{empty}
    \begin{tikzpicture}%[remember picture,overlay]
      \node (logo) at (current page.north) [yshift=-4.2cm]%
      {\includegraphics[width=.8\textwidth]{swfulogo-tw}};
      \node (h1) [below=2.3cm of logo,xshift=7mm,scale=3.4,font=\bfseries,align=center] {硕士学位论文};
      \node (h2) [below=4mm of h1,scale=1.3,font=\bfseries] {MASTER THESIS};
    \end{tikzpicture}
  \begin{center}
    \vspace*{18ex}
    \extrarowsep=^3mm_-2mm
    \begin{tabu} to \textwidth {@{}X[r]X[3.8,l]}%
      {\Large \textbf{论文题目}}&%
      \makebox[0pt][t]{%
        \begin{minipage}[t]{27em}
          \centering\parbox[t]{26em}{\centering\textbf{\Large\SWFCField@Title}}
        \end{minipage}}%
      \rule[-.5ex]{27em}{.1pt}\par
      \rule[-.1ex]{27em}{.1pt}\\
    \end{tabu}\\[3ex]
    \begin{Large}
      \begin{tabu} to .75\textwidth {@{}rX[3.3,c]@{}}%
        \textbf{学科专业}&\textbf{\SWFCField@Subject}\\[-2pt]\tabucline{2-2}%
        \textbf{学\hspace{2em}号}&\textbf{\SWFCField@AuthorId}\\[-2pt]\tabucline{2-2}%
        \textbf{作者姓名}&\textbf{\SWFCField@Author}\\[-2pt]\tabucline{2-2}%
        \textbf{指导教师} &\textbf{\SWFCField@Advisor\hspace{1ex}（\SWFCField@AdvisorTitle）}\\[-2pt]\tabucline{2-2}%
      \end{tabu}
    \end{Large}
  \end{center}
  \clearpage\shipout\null
  \thispagestyle{empty}
  \extrarowsep=^3mm_-2mm
  \begin{center}
    \vspace*{-7ex}
    \begin{footnotesize}
      \begin{tabu}{rX[l]rX[c]}
        分类号&\SWFCField@ClsID&密级&\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}
        UDC&&&\\\tabucline{2-2}
      \end{tabu}
    \end{footnotesize}
  
    \vspace{6ex}
    \tikz\node [scale=2.7,font=\bfseries] {\makebox[7em][s]{学位论文}};\\[10ex]
    % https://tex.stackexchange.com/questions/89980/change-lineskip-to-fill-the-available-space
    \begin{minipage}[c][4em][s]{.8\linewidth}
      %https://tex.stackexchange.com/questions/74151/interline-spacing
      \lineskip=6pt \lineskiplimit=\maxdimen %\baselineskip=-3pt
      \centering \bfseries\LARGE \uline{\SWFCField@Title}
    \end{minipage}\\[3ex]
    \begin{minipage}{.15\linewidth}
      \centering {\bfseries\large \uline{\SWFCField@Author}}
    \end{minipage}\\[19ex]
    
    \begin{tabu}to .8\linewidth {rX[c]X[c]}
      指导教师&\textbf{\SWFCField@Advisor}&\textbf{\SWFCField@AdvisorTitle}\\\tabucline{2-3}
      &\textbf{西南林业大学}&\textbf{昆明}\\\tabucline{2-3}
      &&\\\tabucline{2-3}
      &&\\\tabucline{2-3}
    \end{tabu}\\[8ex]    

    \begin{tabu}to .8\linewidth {rX[c]rX[c]}
      申请学位级别&\textbf{硕士}&%
      学科专业&\textbf{\SWFCField@Subject}\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}%
      提交论文日期&\textbf{\SWFCField@DateA}&%
      论文答辩日期&\textbf{\SWFCField@DateB}\\[-2pt]\cmidrule{2-2}\cmidrule{4-4}%
    \end{tabu}

    \begin{tabu}to .8\linewidth {lX[c]}
      学位授予单位和日期&\textbf{西南林业大学}\\\tabucline{2-2}
      答辩委员会主席&\textbf{\SWFCField@Chairman}\\\tabucline{2-2}
    \end{tabu}
  \end{center}  
  \clearpage\shipout\null
  \thispagestyle{empty}
  \begin{center}
    \vspace*{15ex}
    {\Large \textbf{\SWFCField@enTitle}}\\[25ex]
    \begin{large}
      \textbf{A Master Thesis Submitted to}\\[-1ex]
      \textbf{Southwest Forestry University}\\[15ex]
      
    \begin{tabu}to .8\linewidth {rX[c]@{}}
      Major:&\textbf{\SWFCField@enSubject}\\\tabucline{2-2}
      Author:&\textbf{\SWFCField@enAuthor}\\\tabucline{2-2}
      Advisor:&\textbf{\SWFCField@enAdvisor}\\\tabucline{2-2}
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
      日期：\SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@DateC{}日
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
      日期：\SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@DateC{}日
    \end{flushright}
  \end{large}
\clearpage\shipout\null}

\newcommand{\abstractpage}{% Abstract page
  \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{摘要}{bm:cnAbstract}
  \thispagestyle{plain}
  \pagenumbering{roman}
  \begin{center}
    {\large\textbf{摘\hspace{1em}要}}
  \end{center}
  \hspace{2em}\SWFCField@Abstract\par
  \vspace{2ex}
  \noindent \textbf{关键字：}~\SWFCField@Keywords
  \clearpage
}

\newcommand{\enabstractpage}{% English abstract page  
  \providecommand\pdfbookmark[3][]{}%
  \pdfbookmark[0]{Abstract}{bm:Abstract}
  \thispagestyle{plain}
  \begin{center}
    {\large \textbf{ABSTRACT}}
  \end{center}
  \hspace{2em}\SWFCField@enAbstract\par
  \vspace{1em}
  \noindent\textbf{Key words: }~\SWFCField@enKeywords
  \clearpage
}

\newcommand{\authorinfopage}{% Author info page
  \phantomsection{}
  \addcontentsline{toc}{chapter}{个人简介}
  \chapter*{个人简介}
  \SWFCField@AuthorInfo
}

\newcommand{\advisorinfopage}{% Advisor info page
  \phantomsection{}
  \addcontentsline{toc}{chapter}{导师简介}
  \chapter*{导师简介}
  \SWFCField@AdvisorInfo
}

\newcommand{\acknowledgmentspage}{% Acknowledgments page  
  \phantomsection{}
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}
  \chapter*{致\hspace{1em}谢}
  \SWFCField@Acknowledgments}

\newcommand{\makepreliminarypages}{% preliminary pages
  \SWFCtitlepage{}
  \doublespacing{} % global line spacing
  \abstractpage{}
  \enabstractpage}

\newcommand{\maketailpages}[1]{% tail pages
  \doublespacing
  \authorinfopage{} % 个人简介
  \advisorinfopage{} % 导师简介
  \begin{refsection}
    \nocite{#1} \printbibliography[heading={bibintoc},title={获得成果目录}] % 个人论文清单
  \end{refsection}
  \acknowledgmentspage{} % 鸣谢
}

\RequirePackage[chapter]{minted} % minted has to be loaded at last!!!
\usemintedstyle{bw}

%%%%% caption
\RequirePackage{caption,bicaption,subcaption} % \captionsetup

% set caption label style to, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}

\captionsetup{labelsep=quad}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

\DeclareCaptionOption{bi-first}[]{%
  \def\tablename{表}%
  \def\figurename{图}%
  \def\listingscaption{程序}}

\DeclareCaptionOption{bi-second}[]{%
  \def\tablename{Table}%
  \def\figurename{Figure}%
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
\newenvironment{longlisting}{\captionsetup{type=listing}}{}


%%%%% ctex
\ctexset{
  section/format = \Large\bfseries,
  chapter/name = {},
  chapter/number = {\thechapter},
}


%%%%% Initial defaults
\Title{} \enTitle{}%
\Author{} \enAuthor{} \AuthorInfo{} \AuthorId{}%
\Advisor{} \enAdvisor{} \AdvisorTitle{} \AdvisorInfo{} \enAdvisorB{}%
\Year{\hspace{3em}}\Month{\hspace{2em}}%
\DateA{\hspace{2em}}%提交论文日期
\DateB{\hspace{2em}}%论文答辩日期
\DateC{\hspace{2em}}%保密协议签名日期
\Subject{} \enSubject{}%
\Abstract{} \enAbstract{} \Keywords{} \enKeywords{}%
\Acknowledgments{}
\Chairman{}
\ClsID{}
\setlength{\parindent}{2em}
% \setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}
