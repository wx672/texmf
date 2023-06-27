% 实践（实习）报告 [电子信息工程]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Author/.store in    = \@author, %
  Title/.store in     = \@title, %
  ID/.store in        = \SWFU@ID, %
  Major/.store in     = \SWFU@Major, %
  Advisor/.store in   = \SWFU@Advisor, %
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date, %
  Year/.store in      = \SWFU@Year, %
  %%% Defaults
  Author    = \textcolor{red}{学生姓名？},% 
  Title     = \textcolor{red}{课程名称？},% 
  ID        = \textcolor{red}{学号？},% 
  Major     = \textcolor{red}{专业班级？},% 
  Advisor   = \textcolor{red}{指导教师？},% 
  Month     = \the\month,% 
  Date      = \the\day,% 
  Year      = \the\year,%   
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4,fontset=none]{ctexbook}

\ctexset{%
  chapter/name = {第,部分},%
  chapter/number = {\chinese{chapter}},%
  chapter/format = \centering\large\heiti,% 小3号，黑体
  chapter/beforeskip = {0pt},%
  section/name = {第,步},%
  section/number = {\arabic{section}},%
  section/format = {\heiti\zihao{4}},% 4号，黑体
  subsection/name = {},%
  subsection/format = \heiti,% 小4号，黑体
  subsection/numbering = false,%
  subsubsection/name = {},%
  subsubsection/format = \heiti,% 小4号，黑体
  subsubsection/numbering = false,%
  paragraph/format = \heiti,% 黑体
  subparagraph/format = \heiti,% 黑体
}

\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
\newCJKfontfamily\kaishu{LXGW Bright GB}%
\newCJKfontfamily\heiti{WenQuanYi Micro Hei}%

%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,twoside=false,%
vmargin=3cm,%
hmargin=2cm,%
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{plain}

%%%%% misc
% \RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{units,xparse}%
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{tabularray,multicol,tasks}%,booktabs,makecell,tabularx,multirow,longtable

\settasks{%
  label={(\arabic*)},%
  label-width={4ex},%
}

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
%\def\UrlBreaks{\do\/\do-} % break long url
\RequirePackage[nobiblatex]{xurl} % break long url

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[onehalfspacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}
\renewcommand{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
%\usemintedstyle{bw}

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

\newminted{c}{} \newminted{cpp}{} \newminted[shcode]{shell}{}
\newminted{latex}{} \newminted{bibtex}{} \newminted{gas}{}
\newminted{nasm}{} \newminted{python}{} \newminted{js}{}
\newminted{html}{}

% need lexer.py
% https://github.com/fcurella/jsx-lexer/blob/master/jsx/lexer.py
% \newenvironment{jsxcode}%
% {\VerbatimEnvironment\begin{minted}{lexer.py:JsxLexer -x}}%
% {\end{minted}}

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
    \begin{tikzpicture}[remember picture, overlay]
      \draw ($(current page.north west) + (1in,-1in)$) rectangle %
      ($(current page.south east) + (-1in,1in)$);
    \end{tikzpicture}

    \vspace*{2cm}
    \begin{center}
      \includegraphics[width=.6\linewidth]{swfulogo}\\[4cm]%6mm
      %{\huge\kaishu\bfseries 西南林业大学}\\[1mm]%
      {\LARGE\kaishu\bfseries 大数据与智能工程学院}\\\bigskip%[3cm]%
      {\Huge\heiti 实践（实习）报告}\\[1cm]%
      \begin{minipage}{.7\linewidth}
        \begin{large}
          \begin{tblr}{width=\linewidth, colspec={@{}rX[c]@{}},%
              column{1}={font=\bfseries},%
              rows={belowsep=-5pt,abovesep=20pt},%
              hline{2,3,4,5,6} = {2}{.4pt,solid},%
            }
            课程名称&\@title\\
            专业班级&\SWFU@Major\\
            学\qquad{}号&\SWFU@ID\\
            学生姓名&\@author\\
            指导教师&\mbox{\SWFU@Advisor}\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\bfseries\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
}

%%%%% misc
\renewcommand{\headrulewidth}{0pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}

