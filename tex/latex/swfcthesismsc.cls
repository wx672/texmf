% 西南林业大学硕士学位论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcthesismsc}

% pass unknown options to book
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass[a4paper,12pt,oneside]{book}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage[%showframe,showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{etoolbox}
\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array}
\RequirePackage{ulem}

% graphicx
\RequirePackage{graphicx} % before xltxtra
\graphicspath{% mind the trailing "/"
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

% titlesec
\RequirePackage{titlesec} % \titleformat, \titlespacing
\titleformat{\chapter}{\centering\LARGE\bfseries}{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{*0}{*4}

% add dotted line for chapters in toc
% \renewcommand*\l@chapter{\@dottedtocline{1}{0em}{1.5em}}

\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page

% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
\fancyhead[C]{\leftmark}

\fancypagestyle{plain}{% for the 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}}

\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

% caption
\RequirePackage{caption} % \captionsetup
\RequirePackage{subcaption}
\captionsetup{labelsep=quad}

\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered, plainpages=false, breaklinks=true,
  colorlinks=false,
  pdfborderstyle={/S/U/W .3},% border style will be underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

\RequirePackage{xkvltxp}
\RequirePackage{fixme}
\fxsetup{
  margin=false,
  status=draft,
  author=Fixme,
  inline=true,
  marginclue=true,
  theme=color
}

% before xunicode!
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage[CJKmath=true,AutoFakeSlant=true,PunctStyle=kaiming]{xeCJK} % slant header

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

\RequirePackage{tikz}

\RequirePackage[backend=biber,
style=chem-angew,sorting=none,articletitle=true,
hyperref=true,doi=false,isbn=false,%url=false,
date=iso,seconds=true,% to suppress compile warnings
]{biblatex}

\renewcommand*{\bibfont}{\small} % 11pt
\let\cite=\supercite%

% https://tex.stackexchange.com/questions/23832/biblatex-make-title-hyperlink-to-doi-url-if-available
% \newbibmacro{string+url}[1]{%
%   \iffieldundef{url}{#1}{\href{\thefield{url}}{#1}}}

%\DeclareFieldFormat{title}{\usebibmacro{string+url}{\mkbibemph{#1}}}

\defaultfontfeatures{Mapping=tex-text}
% Liberation fonts is a drop-in replacement for Microsoft Times, Arial and Courier fonts
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
%\setmonofont{Liberation Mono}

\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
\setCJKmonofont{Noto Sans Mono CJK SC}

\newCJKfontfamily\hei{Noto Sans CJK SC Bold} % \hei{Hello, world!}
\newCJKfontfamily\song{Noto Serif CJK SC}
\newCJKfontfamily\kai{AR PL UKai CN}
\newCJKfontfamily\quotefont{AR PL UKai CN}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

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
  \titleformat{\chapter}{\centering\LARGE\bfseries}{附录\,\thechapter}{1em}{}
  \appendix}

% set caption label style to, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}

% not used. use \makebox instead.
\newcommand{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}

\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

% Variables to hold the text fields for the preliminary pages
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
%\newcommand{\Degree}[1]{\gdef\SWFCField@Degree{#1}} % 申请学位级别（硕士）
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
  \begin{center}
    \vspace*{20ex}
    \tikz \node [scale=3,font=\bfseries] {硕士学位论文};\\[0ex]% {\Huge \textbf{硕士学位论文}}\\[2ex]
    {\large \textbf{MASTER THESIS}}\\[12ex]

    \extrarowsep=^3mm_-2mm
    \begin{large}
      \begin{tabu} to .85\textwidth {rX[3.3,c]}%
        \textbf{论文题目}&%
        \makebox[0pt][t]{%
          \begin{minipage}[t]{20em}
            \centering\parbox[t]{18em}{\centering\textbf{\SWFCField@Title}}
          \end{minipage}}%
        \rule[-.5ex]{20em}{.1pt}\par
        \rule[-.2ex]{20em}{.1pt}\\
      \end{tabu}
      \begin{tabu} to .75\textwidth {@{}rX[3.3,c]@{}}%
        \textbf{学科专业}&\textbf{\SWFCField@Subject}\\\tabucline{2-2}%
        \textbf{学\hspace{2em}号}&\textbf{\SWFCField@AuthorId}\\\tabucline{2-2}%
        \textbf{作者姓名}&\textbf{\SWFCField@Author}\\\tabucline{2-2}%
        \textbf{指导教师} &\textbf{\SWFCField@Advisor\SWFCField@AdvisorTitle}\\\tabucline{2-2}%
      \end{tabu}
    \end{large}
  \end{center}
  \clearpage
  \thispagestyle{empty}
  \extrarowsep=^3mm_-2mm
  \begin{center}
    \vspace*{-7ex}
    \begin{footnotesize}
      \begin{tabu}{rX[c]rX[c]}
        分类号&&密级&\\\tabucline{2-2}\tabucline{4-4}
        UDC&&&\\\tabucline{2-2}
      \end{tabu}
    \end{footnotesize}
  
    \vspace{6ex}
    \tikz\node [scale=2.7,font=\bfseries] {\makebox[7em][s]{学位论文}};\\[4ex]
    % https://tex.stackexchange.com/questions/89980/change-lineskip-to-fill-the-available-space
    \begin{minipage}[c][4em][s]{.8\linewidth}
      %https://tex.stackexchange.com/questions/74151/interline-spacing
      \lineskip=2pt \lineskiplimit=\maxdimen \baselineskip=-1pt
      \centering \bfseries\LARGE \uline{\SWFCField@Title}
    \end{minipage}\\[4ex]
    \begin{minipage}{.15\linewidth}
      \centering {\bfseries\large \uline{\SWFCField@Author}}
    \end{minipage}\\[10ex]
    
    \begin{tabu}to .8\linewidth {rX[c]X[c]}
      指导教师&\textbf{\SWFCField@Advisor}&\texttt{\SWFCField@AdvisorTitle}\\\tabucline{2-3}
      &\textbf{西南林业大学}&\textbf{昆明}\\\tabucline{2-3}
      &&\\\tabucline{2-3}
      &&\\\tabucline{2-3}
    \end{tabu}\\[10ex]    

    \begin{tabu}to .8\linewidth {rX[c]rX[c]}
      申请学位级别&\textbf{硕士}&%
      学科专业&\textbf{\SWFCField@Subject}\\\tabucline{2-2}\tabucline{4-4}%
      提交论文日期&\textbf{\SWFCField@DateA}&%
      论文答辩日期&\textbf{\SWFCField@DateB}\\\tabucline{2-2}\tabucline{4-4}
    \end{tabu}

    \begin{tabu}to .8\linewidth {lX[c]}
      学位授予单位和日期&\textbf{西南林业大学}\\\tabucline{2-2}
      答辩委员会主席&\textbf{\SWFCField@Chairman}\\\tabucline{2-2}
    \end{tabu}
  \end{center}  
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{10ex}
    {\Large \textbf{\SWFCField@enTitle}}\\[25ex]
    \begin{large}
      \textbf{A Master Thesis Submitted to}\\[-1ex]
      \textbf{Southwest Forestry University}\\[5ex]
      
    \begin{tabu}to .8\linewidth {rX[c]@{}}
      Major:&\textbf{\SWFCField@enSubject}\\\tabucline{2-2}
      Author:&\textbf{\SWFCField@enAuthor}\\\tabucline{2-2}
      Advisor:&\textbf{\SWFCField@enAdvisor}\\\tabucline{2-2}
      School:&%
      \makebox[0pt][t]{%
        \begin{minipage}[t]{20em}
          \centering\parbox[t]{18em}{\centering\textbf{School of Big Data and Intelligence Engineering}}
        \end{minipage}}%
        \rule[-.6ex]{20em}{.1pt}\par
        \rule{20em}{.1pt}\\
    \end{tabu}
    \end{large}
  \end{center}
  \clearpage
  \thispagestyle{empty}
  \vspace*{1ex}
  \begin{center}
    {\large \textbf{独创性声明}}
  \end{center}
  本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。据我所知，除了
  文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为
  获得西南林业大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做
  的任何贡献均已在论文中作了明确的说明并表示谢意。

  \begin{flushright}
    作者签名：\underline{\hspace{8em}}\qquad{}%
    日期：\quad\SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@DateC{}日
  \end{flushright}
  \vspace{8ex}
  \begin{center}
    {\large \textbf{论文使用授权}}
  \end{center}
  本学位论文作者完全了解并同意西南林业大学有关保留、使用学位论文的规定，学校有权保留并向国
  家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权西南林业大学可以将
  学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存、
  汇编学位论文。

（保密的学位论文在解密后应遵守此规定）

\vspace{3ex}
\begin{flushright}
  作者签名：\underline{\hspace{8em}}\quad{}导师签名：\underline{\hspace{8em}}\\[2ex]
  日期：\quad\SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@DateC{}日
\end{flushright}
\clearpage}

\newcommand{\abstractpage}{% Abstract page
  \providecommand\pdfbookmark[3][]{} \pdfbookmark[0]{摘要}{bm:cnAbstract}
  \thispagestyle{empty}
  \begin{center}
    {\large\textbf{摘\hspace{1em}要}}
  \end{center}
  \SWFCField@Abstract\par
  \vspace{2ex}
  \noindent \textbf{关键字：}~\SWFCField@Keywords
  \clearpage}

\newcommand{\enabstractpage}{% English abstract page  
  \providecommand\pdfbookmark[3][]{}%
  \pdfbookmark[0]{Abstract}{bm:Abstract}
  \thispagestyle{empty}
  \begin{center}
    {\large \textbf{ABSTRACT}}
  \end{center}
  \SWFCField@enAbstract\par
  \vspace{1em}
  \noindent\textbf{Key words: }~\SWFCField@enKeywords
  \clearpage}

\newcommand{\authorinfopage}{% Author info page
  \phantomsection{}
  \addcontentsline{toc}{chapter}{个人简介}
  \chapter*{个人简介}
  \SWFCField@AuthorInfo
  \clearpage}

\newcommand{\advisorinfopage}{% Advisor info page
  \phantomsection{}
  \addcontentsline{toc}{chapter}{导师简介}
  \chapter*{导师简介}
  \SWFCField@AdvisorInfo
  \clearpage}

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

\RequirePackage[firstpage]{draftwatermark}
\SetWatermarkAngle{0}
% \SetWatermarkColor{red!10}
\SetWatermarkScale{1.5}
\SetWatermarkHorCenter{.48\paperwidth}
\SetWatermarkVerCenter{.15\paperheight}
\SetWatermarkText{\includegraphics{thesisheading}}

\RequirePackage{minted} % minted has to be loaded at last!!!
\usemintedstyle{bw}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newcommand{\codec}[1]{\mintinline{c}|#1|}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  rulecolor=\color{lightgray},autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}

\newenvironment{codeblock}[1][.8]% e.g. \begin{codeblock}[.8] ... \end{codeblock}
{\begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}
{\end{singlespace}\end{minipage}\end{center}}

% Initial defaults
\Title{} \enTitle{}%
\Author{} \enAuthor{} \AuthorInfo{} \AuthorId{}%
\Advisor{} \enAdvisor{} \AdvisorTitle{} \AdvisorInfo{} \enAdvisorB{}%
\Year{\hspace{3em}}\Month{\hspace{2em}}\DateA{\hspace{2em}}\DateB{\hspace{2em}}\DateC{\hspace{2em}}%
\Subject{} \enSubject{}%
\Abstract{} \enAbstract{} \Keywords{} \enKeywords{}%
\Acknowledgments{}
\Chairman{}

\setlength{\parindent}{2em}
