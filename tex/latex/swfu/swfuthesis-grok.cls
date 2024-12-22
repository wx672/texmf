% 西南林业大学本科毕业（设计）论文 [2019]
% swfuthesis.cls - LaTeX class for Southwest Forestry University undergraduate theses
% Version: 1.1 (2025/05/13)
% Description: A LaTeX class based on ctexbook for formatting SWFU undergraduate theses, 
%              with predefined styles for title pages, abstracts, and bibliography.
% Usage: \documentclass{swfuthesis}
%        \swfusetup{Author=..., Title=..., ...}
%        \begin{document}
%        \maketitle
%        \begin{abstract}...\end{abstract}
%        ...
%        \end{document}
% Requirements: Compile with XeLaTeX or LuaLaTeX for proper CJK support.
% Dependencies: ctexbook, geometry, tocloft, fancyhdr, biblatex, and optional packages (e.g., minted, tikz).
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}[2025/05/13 v1.1 SWFU Undergraduate Thesis Class]

% --- Engine Check ---
\RequirePackage{ifxetex,ifluatex}
\ifxetex\else\ifluatex\else
  \ClassError{swfuthesis}{This class requires XeLaTeX or LuaLaTeX}
    {Compile with xelatex or lualatex}
\fi

% --- Core Dependencies ---
\RequirePackage{calc,etoolbox}
\RequirePackage{pgfkeys}

% --- Class Options ---
\newif\ifSWFU@useminted
\newif\ifSWFU@usetikz
\newif\ifSWFU@debug
%\newif\ifSWFU@english
\DeclareOption{minted}{\SWFU@usemintedtrue}
\DeclareOption{nominted}{\SWFU@usemintedfalse}
\DeclareOption{tikz}{\SWFU@usetikztrue}
\DeclareOption{notikz}{\SWFU@usetikzfalse}
\DeclareOption{debug}{\SWFU@debugtrue}
%\DeclareOption{english}{\SWFU@englishtrue}

% Pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

% --- Load Base Class ---
\LoadClass[scheme=chinese,zihao=-4]{ctexbook}

% --- Metadata Setup with pgfkeys ---
\pgfkeys{/swfu/.is family, /swfu,%
  Author/.store in    = \@author,         Author    = {},%
  Author*/.store in   = \SWFU@Author*,    Author*   = {},%英文姓名
  Title/.store in     = \@title,          Title     = {},%
  Title*/.store in    = \SWFU@Title*,     Title*    = {},%英文标题
  Signature/.store in = \SWFU@Signature,  Signature = {},%作者签名
  ID/.store in        = \SWFU@ID,         ID        = {},%学号
  Major/.store in     = \SWFU@Major,      Major     = {},%专业
  Advisor/.store in   = \SWFU@Advisor,    Advisor   = {},%
  AdvisorSig/.store in= \SWFU@AdvisorSig, AdvisorSig= {},%指导教师签名
  Reviewer/.store in  = \SWFU@Reviewer,   Reviewer  = {},%评阅人
  Year/.store in      = \SWFU@Year,       Year      = \the\year,%
  Month/.store in     = \SWFU@Month,      Month     = \the\month,%
  Date/.store in      = \SWFU@Date,       Date      = \the\day,%
  LogoText/.store in  = \SWFU@LogoText,   LogoText  = swfulogo-text,%
  LogoEmblem/.store in= \SWFU@LogoEmblem, LogoEmblem= swfulogo-emblem,%
  BibStyle/.store in  = \SWFU@BibStyle,   BibStyle  = gb7714-2015,%
  TOCDepth/.store in  = \SWFU@TOCDepth,   TOCDepth  = 2,%
  %CodeLanguages/.store in = \SWFU@CodeLanguages, CodeLanguages = {c,cpp,python},%
}
% User command to set metadata
\newrobustcmd{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% --- Validate Required Metadata ---
\AtBeginDocument{
  \ifx\@author\empty
    \ClassError{swfuthesis}{Author not specified}
      {Use \string\swfusetup{Author=...}}
  \fi
  \ifx\@title\empty
    \ClassError{swfuthesis}{Title not specified}
      {Use \string\swfusetup{Title=...}}
  \fi
  \ifx\SWFU@ID\empty
    \ClassWarning{swfuthesis}{ID not specified; using empty value}
  \fi
}

% --- Font Setup ---
% Define font size macros for consistency
\newcommand{\swfufontsmall}{\small} % 5号
\newcommand{\swfufontlarge}{\large} % 小2号

% CJK font with fallback
\IfFontExistsTF{Noto Sans CJK SC}
  {\newCJKfontfamily\HEI{Noto Sans CJK SC}}% for a better "〇"
  {\newCJKfontfamily\HEI{SimHei}
   \ClassWarning{swfuthesis}{Noto Sans CJK SC not found; using SimHei}}

% --- Formatting Setup ---
\ctexset{
  chapter/name = {},
  chapter/number = {\thechapter},
  chapter/format = \centering\large\heiti, % 小3号，黑体
  chapter/beforeskip = {0pt}, % Lift chapter title
  section/format = {\heiti\zihao{4}}, % 4号，黑体
  subsection/format = \heiti, % 小4号，黑体
  subsubsection/format = \heiti,
  paragraph/format = \heiti,
  subparagraph/format = \heiti,
}

% --- Page Layout (geometry) ---
\RequirePackage[
  a4paper, asymmetric, twoside=true,%
  vmargin=3cm, inner=3cm, outer=2cm,%
  headsep=1em, footskip=1cm,%
  \ifSWFU@debug showframe,\fi%
]{geometry}

% --- Table of Contents (tocloft) ---
\RequirePackage{tocloft}%
\setlength{\cftbeforetoctitleskip}{0em}%
\setlength{\cftbeforeloftitleskip}{0em}%
\setlength{\cftbeforelottitleskip}{0em}%
\renewcommand{\cftdotsep}{2}%
\renewcommand{\cfttoctitlefont}{\hfill\Large\heiti}%
\renewcommand{\cftaftertoctitle}{\hfill}%
\renewcommand{\cftloftitlefont}{\hfill\Large\heiti}%
\renewcommand{\cftafterloftitle}{\hfill}%
\renewcommand{\cftlottitlefont}{\hfill\Large\heiti}%
\renewcommand{\cftafterlottitle}{\hfill}%
\AtBeginDocument{\setcounter{tocdepth}{\SWFU@TOCDepth}}%

% --- Headers and Footers (fancyhdr) ---
\RequirePackage{fancyhdr}
\fancyhf{}
\fancypagestyle{plain}{% 1st page of each chapter
  \fancyhf{}
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\fancyhead[CE]{\footnotesize\leftmark}
\fancyhead[CO]{\footnotesize\@title}
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
\renewcommand{\headrulewidth}{.4pt}

% --- Miscellaneous Packages ---
\RequirePackage{emptypage} % Clear headers/footers on empty pages
\RequirePackage[bottom]{footmisc} % Stick footnotes to page bottom
\RequirePackage{enumitem}
\setlist{nosep} % Remove vertical spacing in lists
\RequirePackage{tabularray,multicol,tasks}%

% --- Graphics (graphicx) ---
\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}}% mind the trailing '/'

% --- Hyperlinks (hyperref) ---
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,% internal links
  citebordercolor=cyan,% links to bibliography
  filebordercolor=magenta,% file links
  urlbordercolor=blue,% external links
}

% --- Debugging (fixme) ---
\RequirePackage{fixme}
\fxsetup{%
  status=draft,%
  theme=color,%
  margin=false,marginclue=false,%
  inline=true,%  
  author=,%
}

% --- Math and Symbols ---
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

% --- Line Spacing (setspace) ---
\RequirePackage{setspace}
\newcommand{\swfudoublespacing}{\setstretch{1.5}}
\newcommand{\swfusinglespacing}{\setstretch{1.2}}
\swfudoublespacing % Default spacing

% --- TikZ (optional) ---
\ifSWFU@usetikz
  \RequirePackage{tikz}
  \usetikzlibrary{calc,positioning,backgrounds,scopes}
\else
  \ClassInfo{swfuthesis}{TikZ disabled; use 'tikz' option to enable}
\fi

% --- Bibliography (biblatex) ---
\RequirePackage{xurl}% break long url
\urlstyle{sf}% url.sty, tt/sf/rm/same
\RequirePackage[%
  backend=biber,%
  style=\SWFU@BibStyle,%
  sorting=none,%
  gbpub=false,%
  gbtype=false,%
  gbpunctin=false,%
  url=false,%
  doi=false,%
  isbn=false%
]{biblatex}
\newcommand{\swfubibfont}{\small} % 5号宋体
\renewcommand*{\bibfont}{\swfubibfont}

% --- Captions ---
\RequirePackage[labelfont=bf]{caption} % \captionsetup, font=footnotesize,
\DeclareCaptionFont{hei}{\small\heiti}
\captionsetup{labelsep=quad, format=hang, skip=5pt, font=hei}
\RequirePackage{subcaption}
\captionsetup{subrefformat=parens}
\labelformat{subfigure}{\thefigure(#1)}
% --- set caption label style to dashed, e.g. 3-2. ---
% \renewrobustcmd{\thefigure}{\thechapter{}-\arabic{figure}}
% \renewrobustcmd{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
% \renewrobustcmd{\thetable}{\thechapter{}-\arabic{table}}
% \renewrobustcmd{\thesubtable}{\thechapter{}-\arabic{subtable}}
\renewrobustcmd{\theequation}{\thechapter{}-\arabic{equation}}

% --- Code Listings (minted, optional) ---
\ifSWFU@useminted
  \RequirePackage[chapter]{minted}
  \usemintedstyle{bw}
  \ClassWarning{swfuthesis}
    {The 'minted' package requires Python and Pygments. Ensure they are installed.}
  \setminted{%
    linenos=true,%
    numbersep=3pt,%
    fontsize=\small,%
    baselinestretch=0.95,%
    frame=leftline,%
    framesep=10pt,%
    autogobble=true,%
    breaklines=true,%
    fontfamily=courier,%
  }%
  
  \newminted{c}{} \newminted{cpp}{} \newminted{shell}{}
  \newminted{latex}{} \newminted{bibtex}{} \newminted{gas}{}
  \newminted{nasm}{} \newminted{python}{} \newminted{js}{}
  \newminted{html}{}%
  
  %e.g. \cinline{int main()}
  \newmintinline{c}{} \newmintinline[ltx]{latex}{}
  \newmintinline{python}{}  \newmintinline{shell}{}
  %
  \renewcommand{\listingscaption}{程序}
  \renewcommand{\listoflistingscaption}{程序目录}
  \renewcommand{\thelisting}{\thechapter-\arabic{listing}}
  \renewcommand{\theFancyVerbLine}
  {\textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}
  % Code file support
  \newmintedfile[cfile]{c}{%\cfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%,fontfamily=FiraCode
  \newmintedfile[cppfile]{cpp}{%\cppfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%
  \newmintedfile[mkfile]{makefile}{%\mkfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%
  \newmintedfile{nasm}{%\nasmfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%
  \newmintedfile[pyfile]{python}{%\pyfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%
  \newmintedfile[shfile]{shell}{%\shfile{filepath}
    baselinestretch=1,linenos,breaklines,autogobble}%
  % Single-line code
  \newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt}
\else
  \ClassInfo{swfuthesis}{Minted disabled; use 'minted' option to enable}
\fi

% --- Code Block Environment ---
% e.g. \begin{codeblock} ... \end{codeblock}
\newenvironment{codeblock}[1][.8]{%
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

% \newenvironment{codeblock}[2][.8]{% #1=width, #2=type (code/text)
%   \begin{center}\begin{minipage}{#1\textwidth}
%       \ifstrequal{#2}{code}{\begin{singlespace}}{\begin{\swfudoublespacing}}}
%         {\ifstrequal{#2}{code}{\end{singlespace}}{\end{\swfudoublespacing}}
%     \end{minipage}\end{center}}

% --- Long Listing Environment ---
\newenvironment{longlisting}
{\captionsetup{type=listing}\begin{singlespace}}
  {\end{singlespace}}

% need lexer.py
% https://github.com/fcurella/jsx-lexer/blob/master/jsx/lexer.py
% \newenvironment{jsxcode}%
% {\VerbatimEnvironment%
% \begin{minted}{lexer.py:JsxLexer -x}}{\end{minted}}%

% --- Title Page ---
\renewrobustcmd{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{5mm}
    \begin{center}
      \IfFileExists{\SWFU@LogoText.pdf}
        {\includegraphics[width=17em]{\SWFU@LogoText}}
        {\ClassWarning{swfuthesis}{Logo \SWFU@LogoText not found}}
      \\[6mm]
      \makebox[19em][s]{\LARGE\heiti 本科毕业论文\:(设计)}\\[1mm]%
      {\LARGE\HEI （\SWFU@Year\,届）}\\[8mm]%（\zhdigits{\SWFU@Year}\,届）}\\[8mm]%
      \IfFileExists{\SWFU@LogoEmblem.pdf}
        {\includegraphics[width=8em]{\SWFU@LogoEmblem}}
        {\ClassWarning{swfuthesis}{Logo \SWFU@LogoEmblem not found}}
      \\[1cm]
      \begin{large}
        \begin{tblr}{colspec={cX[c]},%
            rowsep=-.17\baselineskip,% work with \raisebox{} below
            column{2}={font=\Large\heiti},% 小2号、黑体
            hline{Z}={2}{leftpos=-1,rightpos=-1},%
          }
          题\qquad{}目&{\setstretch{1.2}%
            \makebox[0pt][s]{%
              \parbox[t]{\linewidth}{\centering%
                \@title\strut%\fbox{你好\strut}
              }}%
            \raisebox{-.16\baselineskip}[0pt][0pt]{% work with rowsep above
              \rule{\linewidth}{.4pt}}}\\%
        \end{tblr}\\[25mm]
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
        \begin{tblr}{colspec={rcrX[c]},%
            rows={belowsep=-5pt,abovesep=10pt},%
            hline{2,3}={2,4}{.4pt},%
            hline{4,5}={2-4}{.4pt},%
            cell{3,4}{2}={c=3}{c},% advisor, reviewer
          }
          学\qquad{}院&\mbox{大数据与智能工程学院}&\enskip{}专业&\mbox{\SWFU@Major}\\
          学生姓名&\mbox{\@author}&\enskip{}学号&\mbox{\SWFU@ID}\\
          指导教师&\mbox{\SWFU@Advisor}\\
          \makebox[4em][s]{评阅人}&\mbox{\SWFU@Reviewer}\\
        \end{tblr}
      \end{large}
      \vfill
      {\Large\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center} {\Large\heiti 原创性声明} \end{center}%
  \begin{large}
    \hspace{2em}本人郑重声明，所呈交的学位论文是本人在指导教师指导下进行的研究工作及取得的
    研究成果，论文成果归西南林业大学所有。尽我所知，除了论文中特别加以标注和致谢的地方外，
    论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得 西南林业大学或其他教育机构
    的学位或证书而使用过的材料。与我共同工作的同志对本研究所作的贡献均已在论文中作了明确的
    说明。

    申请学位论文与资料若有不实之处，本人承担一切相关责任。
    \vspace*{1em}
    \begin{flushright}
      作者签名：\underline{\,\makebox[25mm][c]{\SWFU@Signature}\,}\quad{}%
      日期：%
      \underline{\,\SWFU@Year{}\,}年%
      \underline{\,\makebox[1em][c]{\SWFU@Month{}}\,}月%
      \underline{\,\SWFU@Date{}\,}日
    \end{flushright}
  \end{large}
  \vspace*{2em}
  \begin{center} {\Large\heiti 使用授权声明} \end{center}%
  \begin{large}
    \hspace{2em}本人完全了解学校有关保留、使用毕业论文（设计）的规定，
    即：同意学校保留并向国家有关部门或机构送交论文（设计）的纸质版和电
    子版，允许论文（设计）被查阅、借阅和复印；学校可以将毕业论文（设计）
    的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等
    复制手段保存和汇编毕业论文（设计）。
  
    \textbf{（保密的论文在解密后应适用本授权书）}
 
    \begin{flushright}
      作者签名：\underline{\,\makebox[25mm][c]{\SWFU@Signature}\,}\quad{}%
      指导教师签名： \underline{\,\makebox[25mm][c]{\SWFU@AdvisorSig}\,}\\[1em]%
      日期：%
      \underline{\,\SWFU@Year{}\,}年%
      \underline{\,\makebox[1em][c]{\SWFU@Month{}}\,}月%
      \underline{\,\SWFU@Date{}\,}日
    \end{flushright}
  \end{large}
  \cleardoublepage
}

% --- Abstract Environment ---
\newenvironment{abstract}{% 中文摘要
  \thispagestyle{plain}\phantomsection%
  \begin{center}% 摘要标题，小2号（Large）、黑体、居中    
    % {\swfusinglespacing\heiti\Large\StrSubstitute{\@title}{\\}{}}\\[5mm]%
    {\swfusinglespacing\heiti\Large\@title}\\[5mm]%
    {\zihao{4}\@author\par% 署名用4号，宋体
      （西南林业大学\,大数据与智能工程学院\,\,昆明\,\,650224）}% 地址，4号宋体
  \end{center}%
  \vspace{3ex}%
  \noindent{\heiti 摘\quad{}要：}\small}{}% 摘要正文为5号字（small）

\newenvironment{keyword}{% 关键词内容为5号字（small）
  \vskip 2ex\noindent{\heiti 关键词：}\small}{\cleardoublepage}

% --- English Abstract Environment ---
\newenvironment{EAbstract}{%
  \thispagestyle{plain}\phantomsection%
  \begin{center}
    {\swfusinglespacing\zihao{3}\SWFU@Title*}\\[5mm]%% 英文摘要标题，3号，居中，加粗。
    {\large
      \SWFU@Author*\\%
      % 官方模板的地址肯定是体育老师设计的，用不得。
      \begin{singlespace}
        College of Big Data and Intelligence Engineering\\%
        Southwest Forestry University\\%
        Kunming 650224, Yunnan, China
      \end{singlespace}}%
  \end{center}
  \vspace{2em}%
  % Abstract一词，小4号加粗；摘要正文，小4号字。
  \noindent\textbf{Abstract:}}{}

\newenvironment{EKeyword}{%Key Words一词，小4号加粗；关键词正文，小4号字。
  \vskip 2ex\noindent\textbf{Key Words: }}{\cleardoublepage}

% --- Bibliography ---
\newrobustcmd{\makebib}{
  % \zihao{4}{学校规范要求“参考文献”四字用4号字，不要理它，保持小3号就好}
  \begin{singlespace}%学校规范中对参考文献页的行距没有要求
    \printbibliography[heading=bibintoc,title=参考文献]\label{p:ref}
  \end{singlespace}
  \pagebreak
}

% --- Advisor Info ---
\newenvironment{advisorInfo}{%
  \thispagestyle{plain}\phantomsection%
  \addcontentsline{toc}{chapter}{指导教师简介}%
  \chapter*{\zihao{4}指导教师简介}%
  \vskip 2em\begin{\swfudoublespacing}\small%
}{\end{\swfudoublespacing}\pagebreak}

% --- Thanks ---
\newenvironment{Thanks}{
  \thispagestyle{plain}\phantomsection
  \addcontentsline{toc}{chapter}{致\quad{}谢}
  \chapter*{致\quad{}谢}
  \vskip 2em\begin{\swfudoublespacing}\small
}{\end{\swfudoublespacing}\pagebreak\swfusinglespacing}
  
% % --- Appendix Support ---
% \newenvironment{swfuappendix}{
%   \appendix\chapter*{附录}
%   \addcontentsline{toc}{chapter}{附录}
% }{\cleardoublepage}

% --- Miscellaneous ---
\raggedbottom
\setlength{\parindent}{2em}
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}

% --- Example Usage (Commented) ---
% \documentclass[debug,minted]{swfuthesis}
% \swfusetup{
%   Author=张三, Author*=San Zhang,
%   Title=论文题目, Title*=Thesis Title,
%   ID=123456, Major=计算机科学与技术,
%   Advisor=李四（教授）, Reviewer=王五（教授）,
%   Signature=signature.pdf, AdvisorSig=advisor_sig.pdf,
%   Year=2025, Month=5, Date=13
% }
% \begin{document}
% \maketitle
% \begin{abstract}...\end{abstract}
% \begin{keyword}...\end{keyword}
% \tableofcontents
% \chapter{引言}
% \makebib
% \begin{Thanks}...\end{Thanks}
% \end{document}
