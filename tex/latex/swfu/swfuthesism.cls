% 西南林业大学硕士学位论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesism}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store in        = \@title,            Title={论文题目？},%
  enTitle/.store in      = \SWFU@enTitle,      enTitle={论文题目（英文）？},%
  Author/.store in       = \@author,           Author={作者姓名？},%
  Signature/.store in    = \SWFU@Signature,    Signature={作者签名？},%
  enAuthor/.store in     = \SWFU@enAuthor,     enAuthor={作者姓名（英文）？},%
  AuthorId/.store in     = \SWFU@AuthorId,     AuthorId={学号？},%
  Advisor/.store in      = \SWFU@Advisor,      Advisor={指导教师？},%
  AdvisorSig/.store in   = \SWFU@AdvisorSig,   AdvisorSig={导师签名？},%
  enAdvisor/.store in    = \SWFU@enAdvisor,    enAdvisor={指导教师（英文）},%
  AdvisorTitle/.store in = \SWFU@AdvisorTitle, AdvisorTitle={指导教师职称},%
  ClsID/.store in        = \SWFU@ClsID,        ClsID={分类号？},%
  DateA/.store in        = \SWFU@DateA,        DateA={提交论文日期？},%
  DateB/.store in        = \SWFU@DateB,        DateB={论文答辩日期？},%
  DateC/.store in        = \SWFU@DateC,        DateC={独创性声明页上的日期？},%  
  Year/.store in         = \SWFU@Year,         Year={年？},% 
  Month/.store in        = \SWFU@Month,        Month={月？},% 
  Chairman/.store in     = \SWFU@Chairman,     Chairman={答辩委员会主席？},%
  Subject/.store in      = \SWFU@Subject,      Subject={学科专业？},%
  enSubject/.store in    = \SWFU@enSubject,    enSubject={学科专业（英文）？},%
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[a4paper,openany,scheme=chinese,zihao=-4]{ctexbook}

%%%%% ctex
\ctexset{%
  chapter/name         = {},%
  chapter/number       = {\thechapter},%
  chapter/format       = {\centering\heiti\zihao{-3}},% 小3号，黑体
  section/format       = {\heiti\zihao{4}},% 4号，黑体
  subsection/format    = {\heiti\zihao{4}},% 4号，黑体
  subsubsection/format = {\heiti\zihao{-4}},% 小4，黑体
  paragraph/format     = {\heiti\zihao{-4}},% 黑体（在规范中未说明）
  subparagraph/format  = {\heiti\zihao{-4}},% 黑体（在规范中未说明）
}

\RequirePackage[%showframe,%
a4paper,asymmetric,twoside=true,% if oneside, left/right; if twoside, inner/outer
margin=3cm,%
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar,%
]{geometry}

%%%%% titlesec, for making chapter header higher
\RequirePackage{titlesec}%explicit
\titleformat{\chapter}[hang]% shape
{\normalfont\large\heiti}%    format
{\thechapter}%                label
{20pt}%                       sep between label and title body
{\centering\large}%        before-code #1

\titlespacing{\chapter}{0pt}{-20pt}{30pt}

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

\RequirePackage{tabularray,longtable,multicol}%,multirow,booktabs,makecell
\renewcommand{\arraystretch}{1.5}

\RequirePackage[bottom,perpage]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{tasks,lua-ul}

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
\RequirePackage[nobiblatex]{xurl} % break long url
%\def\UrlBreaks{\do\/\do-} % break long url

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
\RequirePackage[backend=biber, style=gb7714-2015, gbpub=false, gbtype=true,
gbpunctin=false, url=false, doi=false, isbn=false]{biblatex}

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

\setmintedinline{breakbytokenanywhere=true,fontsize=\small,autogobble=false}

\newmintinline{c}{} %e.g. \cinline{int main()}
\newmintinline[ltx]{latex}{}
\newmintinline{python}{}
\newmintinline{shell}{}

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{% Titlepage layout
  \thispagestyle{empty}
  \begin{tikzpicture}%[remember picture,overlay]
    \node (logo) at (current page.north) [yshift=-4.2cm]%
    {\includegraphics[width=13cm]{swfulogo}};%
    \node (h1) [below=1.5cm of logo,xshift=7mm,scale=3.4,%
    font=\heiti,align=center] {硕士学位论文};%
    \node (h2) [below=4mm of h1,scale=1.3,font=\bfseries] {MASTER THESIS};%
  \end{tikzpicture}%
  \begin{center}%
    \vspace*{25mm}%
    %%%
    \begin{tblr}{width=\textwidth, colspec={rX[c]},%
        rowsep=-.17\baselineskip,% work with \raisebox{} below        
        hline{2}={2}{leftpos=-1,rightpos=-1},%
        row{1}={font=\Large\heiti}}%
      论文题目&{\setstretch{1.2}%
        \makebox[0pt][s]{%
          \parbox[t]{.99\linewidth}{%
            \centering\@title\strut% \fbox{你好\strut}%
          }}%
        \raisebox{-.16\baselineskip}[0pt][0pt]{%
          \rule{\linewidth}{.4pt}}}\\
    \end{tblr}\\[2cm]
    %%%
    \begin{tblr}{width=.75\textwidth, colspec={rX[c]},%
        column{1}={font=\Large\heiti},%
        column{2}={font=\Large},%
        rows={abovesep+=15pt,belowsep+=-5pt},%
        hline{2-Z}={2}{.4pt,solid}%{abovespace=-3pt, belowspace=5mm},%
      }%
      学科专业&\SWFU@Subject\\
      学\qquad{}号&\SWFU@AuthorId\\
      作者姓名&\@author\\
      指导教师 &\SWFU@Advisor\hspace{1ex}（\SWFU@AdvisorTitle）\\
    \end{tblr}
  \end{center}
  %%%
  \clearpage\shipout\null%
  %%%
  \thispagestyle{empty}
  %%%
  \begin{center}
    \vspace*{-2cm}
    %%%
    \begin{tblr}{width=\linewidth, colspec={rXrX[c]},%
        rows={belowsep+=-7pt,font=\footnotesize},%
        hline{2}={2,4}{.4pt,solid},%
        hline{3}={2}{.4pt,solid},%
      }
      分类号&\SWFU@ClsID&密级&\\
      UDC&&&\\
    \end{tblr}\\[1.5cm]
    %%%
    \tikz\node [scale=2.7,font=\heiti] {\makebox[7em][s]{学位论文}};\\[2cm]
    %%%
    \begin{tblr}{width=.9\linewidth,colspec={X[c]},%
        rowsep=-.17\baselineskip,% work with \raisebox{} below        
        row{1}={font=\LARGE\heiti},%
        hline{Z}={1}{-}{leftpos=-1,rightpos=-1},%
      }
      {\setstretch{1.2}%
        \makebox[0pt][s]{%
          \parbox[t]{.99\linewidth}{%
            \centering\@title\strut% \fbox{你好\strut}%
          }}%
        \raisebox{-.16\baselineskip}[0pt][0pt]{% work with rowsep above
          \rule{\linewidth}{.4pt}}}\\
    \end{tblr}\\[1cm]
    %%%
    \underline{\;\@author\;}\\[2cm]
    %%%
    \begin{tblr}{width=.8\linewidth,colspec={rX[c]X[c]},%
        rows={abovesep+=10pt,belowsep+=-5pt},%
        column{2,3}={c}{font=\heiti},%
        hline{2-Z}={2-3}{.4pt,solid},%
      }
      指导教师&\SWFU@Advisor&\SWFU@AdvisorTitle\\
      &西南林业大学&昆明\\
      &&\\
      &&\\
    \end{tblr}\\[15mm]
    %%%
    \begin{tblr}{width=.8\linewidth,colspec={rX[c]rX[c]},%
        rows={abovesep+=10pt,belowsep+=-5pt},%
        column{2,4}={font=\bfseries},%
        hline{2-Z}={2,4}{.4pt,solid},%
      }%
      申请学位级别&硕士&学科专业&\SWFU@Subject\\
      提交论文日期&\SWFU@DateA&论文答辩日期&\SWFU@DateB\\
    \end{tblr}\\%
    %%%
    \begin{tblr}{width=.8\linewidth,colspec={lX[c]},%
        rows={abovesep+=10pt,belowsep+=-5pt},%
        column{2}={font=\heiti},%
        hline{2-Z}={2}{.4pt,solid},%
      }
      学位授予单位和日期&西南林业大学\\
      答辩委员会主席&\SWFU@Chairman\\
    \end{tblr}
  \end{center}  
  %%%
  \clearpage\shipout\null
  %%%
  \thispagestyle{empty}
  \begin{center}
    \vspace*{15ex}
    %%%
    {\Large\bfseries\SWFU@enTitle}\\[25ex]
    %%%
    \begin{large}
      {\bfseries A Master Thesis Submitted to}\\[-1ex]
      {\bfseries Southwest Forestry University}\\[15ex]
      %%%
      \begin{tblr}{width=.8\linewidth, colspec={rX[c]},%
          rows={abovesep+=10pt,belowsep+=-6pt},%
          column{2}={font=\bfseries},%
          hline{2-Y}={2}{leftpos=-1,rightpos=-1},%
          hline{Z}={2}{leftpos=-1,rightpos=-1},%
        }%
      Major:&\SWFU@enSubject\\
      Author:&\SWFU@enAuthor\\
      Advisor:&\SWFU@enAdvisor\\
      School:&{%
        \makebox[0pt][s]{%
          \parbox[t]{.99\linewidth}{%
            \centering College of Big Data and Intelligence Engineering\strut%
          }}%
        \raisebox{-.18\baselineskip}[0pt][0pt]{%
          \rule{\linewidth}{.4pt}}}\\%
    \end{tblr}
    %%%
    \end{large}
  \end{center}
  %%%
  \clearpage\shipout\null
  %%%
  \thispagestyle{empty}
  \vspace*{1ex}
  %%%
  \begin{center}
    \Large\bfseries 独创性声明
  \end{center}
  %%%
  \begin{large}
    \qquad{}本人声明所呈交的学位论文是本人在导师指导下进行的研究工作及取得的研究成果。
    据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究
    成果，也不包含为获得西南林业大学或其它教育机构的学位或证书而使用过的材料。与我一同工作
    的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。
    \begin{flushright}
      作者签名：\underline{\SWFU@Signature}\qquad{}%
      日期：\SWFU@Year{}年\SWFU@Month{}月\SWFU@DateC{}日
    \end{flushright}
  \end{large}
  %%%
  \vspace{8ex}
  \begin{center}
    \Large\heiti 论文使用授权
  \end{center}
  %%%
  \begin{large}
    \hspace{2em}本学位论文作者完全了解并同意西南林业大学有关保留、使用学位论文的规定，学校
    有权保留并向国家有关部门或机构送交论文的复印件和磁盘，允许论文被查阅和借阅。本人授权西
    南林业大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫
    描等复制手段保存、汇编学位论文。

    （保密的学位论文在解密后应遵守此规定）

    \vspace{3ex}
    \begin{flushright}
      作者签名：\underline{\SWFU@Signature}\quad{}%
      导师签名：\underline{\SWFU@AdvisorSig}\\[2ex]%
      日期：\SWFU@Year{}年\SWFU@Month{}月\SWFU@DateC{}日
    \end{flushright}
  \end{large}
  \clearpage\shipout\null}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
      \printbibliography[heading={bibintoc},title={获得成果目录}]\label{p:ref2}\pagebreak
    \end{singlespace}
  \end{refsection}}

\setlength{\parindent}{2em}
% \setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}


%%% circled footnote numbers

%% https://tex.stackexchange.com/questions/639370/how-to-enumerate-footnotes-with-circled-numbers

% \setmainfont{Arial}

%%% define circled command%%%%%%%%%%%%%%
\tikzset{%
  circlednode/.style={
    circle,%
    draw,%
    inner sep=0.05ex,%
    text depth=0ex,%
    font=\normalfont,%
    minimum size=1ex%
  }
}

\newcommand*\circled[1]{%
  \ifnumcomp{#1}{>}{9}{% 
    % if > 9:
    \tikz[baseline=(char.base)]%
    \node[circlednode] (char) {%
      \addfontfeature{LetterSpace=-9.0}\scalebox{0.5}[1]{\bfseries#1}};%
  }{% if <= 9: 
    \tikz[baseline=(char.base)]%
    \node[circlednode] (char) {#1};%
  }%
}
%%%footnote numbers setting%%%%%%%%%%%%%%%
%make footnote numbers be circled------------------
\renewcommand{\thefootnote}{%
  \raisebox{0.25ex}{\scalebox{0.7}{\protect\circled{\arabic{footnote}}}}}

%%% https://zhuanlan.zhihu.com/p/74515148

\RequirePackage{xpatch}

% cancel the superscript style of counter used in footnote text
\xpatchcmd\@makefntext%
{{\hss\@makefnmark}}%
{{\hss\@makefnmark@nosuperscript}\space}%
{}{\fail}

% normal style, lower baseline
\newcommand\@makefnmark@nosuperscript{%
  % \lower -.1ex
  \hbox{\scalebox{1.2}{\@thefnmark}\;}}

\newcommand{\ring}[1]{\circled{#1}}
