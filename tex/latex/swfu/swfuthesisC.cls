% 西南林业大学高等学历继续教育毕业论文（设计） [2019]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesisC}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store in     = \@title, %
  Title*/.store in    = \SWFU@Title*, %英文标题
  Major/.store in     = \SWFU@Major, %
  Level/.store in     = \SWFU@Level, % 层次
  ID/.store in        = \SWFU@ID, %
  Author/.store in    = \@author, %
  Author*/.store in   = \SWFU@Author*, %英文姓名
  Advisor/.store in   = \SWFU@Advisor, %
  Reviewer/.store in  = \SWFU@Reviewer, %
  Campus/.store in    = \SWFU@Campus,% 教学点
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date, %
  Year/.store in      = \SWFU@Year, %
  Signature/.store in = \SWFU@Signature, %
  Fingerprint/.store in = \SWFU@Fingerprint,%
  Address/.store in   = \SWFUatAddress,%（工作单位 所在地区 邮编）
  Address*/.store in  = \SWFU@Address*,%（英文工作单位 所在地区 邮编）
  %%% Defaults
  Title     = \textcolor{red}{题目？},% 
  Title*    = \textcolor{red}{英文标题？}, % 
  Major     = \textcolor{red}{专业？},%
  Level     = {本科},%本科/专科
  ID        = \textcolor{red}{学号},% 
  Author    = \textcolor{red}{姓名？},% 
  Author*   = \textcolor{red}{英文姓名？},% 
  Advisor   = {赵辛楣（教授），高松年（教授）},% 
  Reviewer  = {李梅亭（教授）},% 
  Month     = \the\month,% 
  Date      = \the\day,% 
  Year      = \the\year,%
  Campus    = \textcolor{red}{教学点？},%
  Signature = \textcolor{red}{手写签名图片？}, % 用于原创声明页
  Address      = \textcolor{red}{工作单位 所在地区 邮编？},%
  Address*     = \textcolor{red}{英文工作单位 所在地区 邮编？},%
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[fontset=none,scheme=chinese,zihao=-4]{ctexbook}
%一号\Huge; 二号\LARGE; 小三\large;      五号\small;        六号\scriptsize
%小一\huge; 小二\Large; 小四\normalsize; 小五\footnotesize; 小六\tiny

\ctexset{%
  fontset=windows,%
  chapter/name = {},%
  chapter/number = {\large\bfseries\thechapter},%
  chapter/format = {\large\heiti},% 小3号，黑体
  chapter/beforeskip = {0pt},% 抬高章标题
  section/format = {\bfseries\zihao{4}},% 4号，宋体
  subsection/format = \bfseries,% 小4号，宋体
  subsubsection/format = \bfseries,% 宋体（在规范中未说明）
  paragraph/format = \bfseries,% 宋体（在规范中未说明）
  subparagraph/format = \bfseries,% 宋体（在规范中未说明）
}

\newCJKfontfamily\HEI{Noto Sans CJK SC}% for a better "〇"
%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,asymmetric,%
vmargin=3cm,%
twoside=false,left=35mm,right=25mm,% for oneside
%twoside=true,inner=35mm,outer=25mm,% for twoside
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

\renewcommand\cleardoublepage{\clearpage} % for oneside configuration

%%%%% tocloft
\RequirePackage{tocloft}
\setlength{\cftbeforetoctitleskip}{0em}% make "目录" higher
\setlength{\cftbeforeloftitleskip}{0em}%
\setlength{\cftbeforelottitleskip}{0em}%
\renewcommand\cftdotsep{2}%
\renewcommand\cfttoctitlefont{\hfill\Large\bfseries}%
\renewcommand\cftaftertoctitle{\hfill}%
\renewcommand\cftloftitlefont{\hfill\Large\bfseries}%
\renewcommand\cftafterloftitle{\hfill}%
\renewcommand\cftlottitlefont{\hfill\Large\bfseries}%
\renewcommand\cftafterlottitle{\hfill}%

%%%%% fancyhdr
\RequirePackage[twoside]{fancyhdr}% even in oneside layout
\fancyhf{}

\fancypagestyle{plain}{% 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}% like "88"
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{fancy}
% 奇数页：“西南林业大学 20XX”届本/专科毕业论文（宋体5号字）
% 偶数页：“姓名   论文题目”（宋体5号字）
\fancyhead[CE]{\small 西南林业大学2025届\SWFU@Level{}毕业论文}%\the\year{}
\fancyhead[CO]{\small\@author\qquad\@title}
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}% e.g. "88"

%%%%% misc
% \RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{emptypage} % removing header/footer on empty pages
\RequirePackage{siunitx}%
\sisetup{%
  sticky-per=true,%
  detect-mode=true,%
  per-mode=symbol-or-fraction%
}%
\RequirePackage{datetime2}%for \ReviewDate
\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{tabularray,multicol,tasks}%,booktabs,makecell,tabularx,multirow,longtable
\RequirePackage{pdflscape}

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\RequirePackage[nobiblatex]{xurl} % break long url

%%%%% fixme
\RequirePackage{fixme}
\fxsetup{%
  status=draft,%
  theme=color,%
  margin=false,marginclue=false,%
  inline=true,%  
  author=,%
}

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}
\renewcommand{\onehalfspacing}{\setstretch{1.25}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,sorting=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 

%%%%% caption
\usepackage[labelfont=bf]{caption,subcaption,bicaption} % \captionsetup, font=footnotesize,
\DeclareCaptionFont{capfont}{\footnotesize}%小五号
\captionsetup{labelsep=quad, format=hang, skip=5pt, font=capfont}

\DeclareCaptionOption{bi-first}[]{%
  \def\tablename{表}%
  \def\figurename{图}%
  \def\listingscaption{程序}}

\DeclareCaptionOption{bi-second}[]{%
  \def\tablename{Table\!}%
  \def\figurename{Figure\!}%
  \def\listingscaption{Code}}

\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

\captionsetup{subrefformat=parens}
\labelformat{subfigure}{\thefigure(#1)}

% set caption label to dashed style, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}
\renewcommand{\theequation}{\thechapter{}-\arabic{equation}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
\usemintedstyle{bw}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newmintinline{c}{} %e.g. \cinline{int main()}
\newmintinline[ltx]{latex}{}
\newmintinline{python}{}
\newmintinline{shell}{}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  baselinestretch=0.95,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  % rulecolor=\color{lightgray},
  autogobble=true,breaklines=true}

\newminted{c}{} \newminted{cpp}{} \newminted{shell}{}
\newminted{latex}{} \newminted{bibtex}{} \newminted{gas}{}
\newminted{nasm}{} \newminted{python}{} \newminted{js}{}
\newminted{html}{}

% need lexer.py
% https://github.com/fcurella/jsx-lexer/blob/master/jsx/lexer.py
\newenvironment{jsxcode}%
{\VerbatimEnvironment%
\begin{minted}{lexer.py:JsxLexer -x}}{\end{minted}}%

\newmintedfile[cfile]{c}{%\cfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[cppfile]{cpp}{%\cppfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[mkfile]{makefile}{%\mkfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile{nasm}{%\nasmfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[pasfile]{pascal}{%\pasfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[pyfile]{python}{%\pyfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile{shell}{%\shellfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[shfile]{shell}{%\shfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%

\newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt,}

% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}%
  \begin{singlespace}}{\end{singlespace}}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{5mm}
    \begin{center}
      \includegraphics[width=11.5cm]{swfulogo}\\[2cm]%
      {\Huge\heiti%
        \mbox{高等学历继续教育毕业论文\:(设计)}}\\[35mm]%
      \begin{minipage}{\linewidth}
        \centering
        \begin{large}
          \begin{tblr}{width=.9\linewidth,colspec={cX[c]},%12.5cm
              rowsep=-.17\baselineskip,% work with \raisebox{} below
              column{1}={font=\heiti},
              column{2}={font=\Large},% 小2号、黑体
              hline{Z}={2}{leftpos=-1,rightpos=-1},% 
            }
            论文题目&{\setstretch{1.2}%
              \makebox[0pt][s]{%
                \parbox[t]{.99\linewidth}{%
                  \centering\@title\strut%\fbox{你好\strut}                  
                }}%
              \raisebox{-.16\baselineskip}[0pt][0pt]{% work with rowsep above
                \rule{\linewidth}{.4pt}}}\\%            
          \end{tblr}\\[1cm]
          %%%
          \begin{tblr}{width=.78\linewidth, colspec={rX[c]},%11cm
              rows={belowsep=-5pt,abovesep=5pt},%
              hline{2-Z} = {2}{.4pt,solid},%
              column{1}={font=\heiti},%
            }
            专\qquad{}业&\SWFU@Major\\
            层\qquad{}次&\SWFU@Level\\
            学\qquad{}号&\SWFU@ID\\
            作者姓名&\@author\\
            指导教师&\mbox{\SWFU@Advisor}\\
            评阅教师&\mbox{\SWFU@Reviewer}\\
            \makebox[4em][s]{教学点}&\SWFU@Campus\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \thispagestyle{empty}
  \vspace*{3mm}
  \begin{center}
    {\large\bfseries 诚信承诺}
  \end{center}
    \hspace{2em}我承诺在毕业论文（设计）过程中遵守学校有关规定，恪守学
    术规范，论文（设计）中所使用的相关资料、数据、观点等真实可靠，对引
    用的他人材料、数据、观点均已注释说明来源，不存在剽窃、抄袭他人的学
    术观点、思想和成果，不存在伪造、篡改实验数据。如有违规行为发生，我
    愿承担一切责任，接受学校的处理，并承担相应的法律责任。
    \vspace*{1em}
    \begin{flushright}
      \makebox[6cm][l]{学生：\qquad\SWFU@Signature%
        \tikz[remember picture,overlay] %
        \draw (-30pt,-20pt) node[opacity=.4,rotate=40]{\SWFU@Fingerprint};%
      } \par\bigskip%
      \makebox[6cm][l]{\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日}
    \end{flushright}
    \cleardoublepage
  }

\newenvironment{abstract}{% 中文摘要
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}% 摘要标题，小三号（Large）、黑体、居中    
    {\singlespacing\heiti\Large\@title}\\[5mm]%
    \@author\\（\SWFUatAddress）%
    % （广西国有博白林场，广西玉林，537617）
  \end{center}%
  \vspace{3ex}%
  \noindent{\heiti 摘要：}}{}%摘要内容为宋体，小四号字

\newenvironment{keyword}{% 关键词内容为小四号字
  \vskip 2ex\noindent%
  {\heiti 关键词：}}{\cleardoublepage}

\newenvironment{abstract*}{% 英文摘要
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    \begin{singlespace}
      % 英文摘要标题，小三号，居中，加粗。
      {\Large\bfseries\sffamily\SWFU@Title*}\\[5mm]%
      {\large\SWFU@Author*\\\medskip
        (\SWFU@Address*)}
    \end{singlespace}
  \end{center}
  \vspace*{2em}
  % Abstract一词，小4号加粗；摘要正文，小4号字。
  \noindent\textbf{Abstract:}~}{}

\newenvironment{keyword*}{%Key Words一词，小4号加粗；关键词正文，小4号字。
  \vskip 2ex\noindent%
  \textbf{Key Words:~}}{\cleardoublepage}

\newcommand{\makebib}{% 参考文献
  % \zihao{4}{学校规范要求“参考文献”四字用4号字，不要理它，保持小3号就好}
  \begin{singlespace}%学校规范中对参考文献页的行距没有要求
    \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}
  \end{singlespace}
  \pagebreak}% 
\renewcommand*{\bibfont}{\small} % 5号宋体

\newenvironment{Thanks}{% 致谢
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}%
  \chapter*{致\quad{}谢}
  \vskip 2em\begin{doublespace}}%5号宋体
  {\end{doublespace}\pagebreak\singlespacing}

%%%%% misc
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}

\renewcommand{\contentsname}{目\qquad{}录}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}

\newcommand\fromto[2]{#1\,\char`~\,#2}
