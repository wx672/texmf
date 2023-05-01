% 西南林业大学本科毕业（设计）论文（留学生版） [2021]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesise}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Author/.store in        = \@author, Author = Author name,% 
  Title/.store in         = \@title, Title = Thesis title,% 
  Signature/.store in     = \SWFU@Signature, Signature = Your signature, % 作者签名（用于原创声明页）
  ID/.store in            = \SWFU@ID, ID = Your student ID,% 
  % Major/.store in         = \SWFU@Major, Major = Your major?,%  
  % enTitle/.store in       = \SWFU@enTitle, enTitle = 英文标题, %
  % enAuthor/.store in      = \SWFU@enAuthor, enAuthor = 英文学生姓名,%
  Advisor/.store in       = \SWFU@Advisor, Advisor = Your advisor?,%
  Reviewer/.store in      = \SWFU@Reviewer, Reviewer = Lord Voldemort,%
  Month/.store in         = \SWFU@Month, Month = ？,%
  Date/.store in          = \SWFU@Date, Date = ？,%
  Year/.store in          = \SWFU@Year, Year = ？,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

% pass unknown options to report
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass[12pt]{report}

\RequirePackage{fontspec}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
\setmonofont{Liberation Mono}

\RequirePackage{newunicodechar}
\newunicodechar{✓}{{\symbola ✓}}%
\newunicodechar{✔}{{\dejavu ✔}}%checkmark
\newfontfamily\purisa{Purisa}
\newfontfamily\symbola{Symbola}

% \ctexset{%
%   chapter/name = {},%
%   chapter/number = {\thechapter},%
%   chapter/format = \centering\large\bfseries,% 小3号，黑体
%   section/format = {\bfseries\zihao{4}},% 4号，黑体
%   subsection/format = \bfseries,% 小4号，黑体
%   subsubsection/format = \bfseries,% 黑体（在规范中未说明）
%   paragraph/format = \bfseries,% 黑体（在规范中未说明）
%   subparagraph/format = \bfseries,% 黑体（在规范中未说明）
% }

%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,asymmetric,twoside=true,% if oneside, left/right; if twoside, inner/outer
vmargin=3cm,% 上下页边距为3cm，左=(2.5cm + 装订边0.5cm)，右2cm
% left=3cm,right=2cm, % for oneside
inner=3cm,outer=2cm,% for twoside (comment out \renewcommand{\cleardoublepage} following)
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

%\renewcommand\cleardoublepage{\clearpage} % for oneside configuration

%%%%% titlesec, for making chapter header higher
\RequirePackage{titlesec}%explicit
\titleformat{\chapter}[hang]% shape
{\normalfont\LARGE\bfseries}% format
{\thechapter}%                label
{20pt}%                       sep between label and title body
{\centering\LARGE}%        before-code #1

\titlespacing{\chapter}{0pt}{-20pt}{30pt}

%%%%% xstring 
% \RequirePackage{xstring} % for \StrSubstitute{} in \fancyhead

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}

% solve an overleaf warning
\setlength\headheight{23pt}
\addtolength\topmargin{-11pt}

\fancypagestyle{plain}{% for the 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont -- \thepage\ --}
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{fancy}

\renewcommand{\chaptermark}[1]{%
  \markboth{\thechapter.\ #1}{}}

\fancyhead[CE]{\footnotesize\leftmark}
\fancyhead[CO]{\footnotesize\StrSubstitute{\@title}{\\}{}}
\fancyfoot[C]{\fontsize{8}{8}\selectfont -- \thepage\ --}

%%%%% misc
\RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{emptypage} % for removing header/footer on empty pages
\RequirePackage{tabularx,tabularray,longtable,multicol,multirow,booktabs,makecell}
\renewcommand\theadfont{\bfseries}%\normalfont
\renewcommand{\arraystretch}{1.5}

% \newcolumntype{C}{>{\centering\arraybackslash}X}
% \newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
%\setlist{itemsep=-.5ex}
%\setlist[1]{labelindent=\parindent,align=left}
\setlist{nosep} % kills all vertical spacing

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

%%%%% tocloft
\RequirePackage{tocloft}
\renewcommand\cftdotsep{2}
\renewcommand\cfttoctitlefont{\hfill\Large\bfseries}
\renewcommand\cftaftertoctitle{\hfill}
\renewcommand\cftloftitlefont{\hfill\Large\bfseries}
\renewcommand\cftafterloftitle{\hfill}
\renewcommand\cftlottitlefont{\hfill\Large\bfseries}
\renewcommand\cftafterlottitle{\hfill}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  % bookmarksnumbered,%
  % breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

%%%%% fixme
\RequirePackage{fixme}
\fxsetup{%
  margin=true, marginclue=false,%
  status=draft, author=, inline=false, theme=color}

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}
\renewcommand{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
% \RequirePackage{tikz}
% \usetikzlibrary{%
%   calc,positioning,fit,%
%   arrows,shapes,patterns,quotes,%
%   decorations.pathmorphing,%
%   backgrounds,scopes,%
%   mindmap,trees,%
%   tikzmark,%
% }%

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
\renewcommand*{\bibfont}{\small} % 11pt

%%%%% caption
\RequirePackage[labelfont=bf]{caption} % \captionsetup, font=footnotesize,
\DeclareCaptionFont{hei}{\small\bfseries}
\captionsetup{labelsep=quad, format=hang, skip=5pt, font=hei}
\RequirePackage{subcaption}

\captionsetup{subrefformat=parens}
%\labelformat{subfigure}{\thefigure(#1)}

% set caption label style to, e.g. 3-2.
% \renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
% \renewcommand{\thetable}{\thechapter{}-\arabic{table}}
% \renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
% \renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}
\renewcommand{\theequation}{\thechapter{}-\arabic{equation}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
% \usemintedstyle{bw}

% \renewcommand{\listingscaption}{程序} % used by minted
% \renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newcommand{\cinline}[1]{\mintinline{c}|#1|}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  baselinestretch=0.95,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  % rulecolor=\color{lightgray},
  autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}
\newminted{php}{} \newminted{js}{}

\newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt,}

\newmintedfile[phpfile]{php}{%\phpfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%,fontfamily=FiraCode
\newmintedfile[jsfile]{javascript}{%\jsfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%,fontfamily=FiraCode

% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}%
  \begin{singlespace}}{\end{singlespace}}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

\renewcommand{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{1mm}
    \begin{center}
      \includegraphics[width=10cm]{swfulogo}\\[2cm]%
      {\Huge\bfseries\@title}\\[1.5cm]
      {\LARGE\@author}\\
      {\Large(№~\SWFU@ID)}\\\medskip
      {\Large College of Big Data and Intelligence Engineering}\\
      {\Large Southwest Forestry University}\\[3cm]
      %\SetTblrInner{rowsep=-1ex}%X[c,font=\large]X[c,font=\large]
      \begin{tblr}{width=.8\linewidth, colspec={X[c]X[c]},row{1}={font=\large}}
        {\emph{Supervisor}\\[-1ex]\SWFU@Advisor}&{\emph{Reviewer}\\[-1ex]\SWFU@Reviewer}\\
      \end{tblr}\\[1cm]
      {\Large In partial fulfillment of the requirements for the degree of Bachelor of Science
      in Engineering}
      \vfill
      {\Large\SWFU@Month\enskip\SWFU@Date,\enskip\SWFU@Year}
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    {\Large\bfseries Originality Statement}
  \end{center}
  \begin{large}
    \hspace{2em}I certify that the dissertation submitted is my research work and
research results obtained under the guidance of my instructor. The
results of the thesis are owned by Southwest Forestry University. As far as
I know, except for the places where the paper is specially marked and
acknowledged, the paper does not contain research results that have been
published or written by other people, nor does it include use for obtaining
a degree or certificate from Southwest Forestry University or other
educational institutions Used materials. The contributions of the comrades
who work with me to this research have been clearly explained in the
paper.

If there is any inaccuracy in the application dissertation and information, I
shall bear all related responsibilities.

    \vspace*{1em}
    \begin{flushright}
      \begin{tblr}{width=.8\linewidth, colspec={X[r]c},%
          abovesep=3mm, belowsep=-5pt,%
          hline{2,3}={2}{}}%
        Author's signature:&\SWFU@Signature\\
        Date:&\SWFU@Month{}\enskip\SWFU@Date{},\;\SWFU@Year{}
      \end{tblr}
    \end{flushright}
  \end{large}
  \cleardoublepage
}

\renewenvironment{abstract}{%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    % 英文摘要标题，3号，居中，加粗。
    {\singlespacing\Large\@title}\\[5mm]%
    {\large
      \@author\\%
      % 官方模板的地址肯定是体育老师设计的，用不得。
      \begin{singlespace}
        College of Big Data and Intelligence Engineering\\%
        Southwest Forestry University\\%
        Kunming 650224, Yunnan, China
      \end{singlespace}}%
  \end{center}
  \vspace{2em}%
  % Abstract一词，小4号加粗；摘要正文，小4号字。
  \noindent\textbf{Summarize:}}{}

\newenvironment{keyword}{%Key Words一词，小4号加粗；关键词正文，小4号字。
  \vskip 2ex\noindent\textbf{Key Words: }}{\cleardoublepage}%

\newcommand{\makebib}{% 参考文献
  % \zihao{4}{学校规范要求“参考文献”四字用4号字，不要理它，保持小3号就好}
  \begin{singlespace}%学校规范中对参考文献页的行距没有要求
    \printbibliography[heading={bibintoc},title={References}]\label{p:ref}
  \end{singlespace}
  \pagebreak}% 
\renewcommand*{\bibfont}{\small} % 5号宋体

\newenvironment{advisorInfo}{% 指导教师简介
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{Instructor}%
  \chapter*{Instructor}%
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak}
  
\newenvironment{acknowledgment}{% 致谢
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{Acknowledgments}%
  \chapter*{Acknowledgments}
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak\singlespacing}

%%%%% misc
\renewcommand{\headrulewidth}{.4pt}
%\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}
%\setlist{nosep} % kills all vertical spacing
% \renewcommand{\listfigurename}{插图目录}
% \renewcommand{\listtablename}{表格目录}
