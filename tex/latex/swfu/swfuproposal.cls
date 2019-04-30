% 西南林业大学本科毕业论文（设计）开题报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuproposal}

% pass unknown options to book
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aritcle}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{ifxetex} % XeTeX only
\RequirePackage{zhlipsum}
\RequirePackage{pgfkeys}

\pgfkeys{%
  Title/.store in          = \@title,          %论文标题
  Projfrom/.store in       = \SWFU@Projfrom, Projfrom=自选, %
  Author/.store in         = \@author,         %作者
  Studid/.store in         = \SWFU@Studid,         %学号
  Advisor/.store in        = \SWFU@Advisor, Advisor=王晓林, %指导教师
  AdvisorSig/.store in     = \SWFU@AdvisorSig,     %指导教师签名
  AdvisorTitle/.store in   = \SWFU@AdvisorTitle, AdvisorTitle=讲师, %指导教师职称
  AdvisorGender/.store in  = \SWFU@AdvisorGender, AdvisorGender=男, %指导教师性别
  AdvisorAge/.store in     = \SWFU@AdvisorAge, AdvisorAge=50,%指导教师年龄
  AdvisorDegree/.store in  = \SWFU@AdvisorDegree, AdvisorDegree=硕士, %指导教师学位
  AdvisorWhere/.store in   = \SWFU@AdvisorWhere, AdvisorWhere=大数据与信息工程学院, %指导教
                                %师所属院系
  AdvisorComment/.store in = \SWFU@AdvisorComment, %指导教师意见
  Date/.store in           = \SWFU@Date,           %日
  Month/.store in          = \SWFU@Month,          %月
  Year/.store in           = \SWFU@Year,           %年
  Subject/.store in        = \SWFU@Subject,        %专业
  Grade/.store in          = \SWFU@Grade,          %年级
  Partone/.store in        = \SWFU@Partone,        %1. 该研究的目的、意义
  Parttwo/.store in        = \SWFU@Parttwo,        %2. 国内外研究现状及发展趋势
  Partthree/.store in      = \SWFU@Partthree,      %3. 主要参考文献
  Partfour/.store in       = \SWFU@Partfour,       %4. 该研究的主要内容，重点解决的问题，预期结果或成果
  Partfive/.store in       = \SWFU@Partfive,       %5. 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法
  Partsix/.store in        = \SWFU@Partsix,        %6. 完成该研究已具备的条件  
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage[top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
%showframe,showcrop,
]{geometry}

\RequirePackage{graphicx} % before xltxtra
\graphicspath{{./figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array}

\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage{wx672hyperref}
\RequirePackage{wx672bib}

\RequirePackage{xcolor}
\RequirePackage{wx672hyperref}

% https://tex.stackexchange.com/questions/247185/tcolorbox-theorem-which-isnt-framed-on-the-sides
\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,sharp corners,
  colback=white,coltitle=black,colbacktitle=white,
  boxrule=.5pt,titlerule=0pt,
  bottom=2ex,
  fonttitle=\bfseries,title=#1}

\newtcolorbox{mainlistbox}[1]{sharp corners,
  colback=white,coltitle=black,colbacktitle=white,
  boxrule=.5pt,titlerule=0pt,
  toptitle=1ex,bottomtitle=3ex,center title,
  fonttitle=\bfseries,title={\Huge #1}}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

\setlength{\parindent}{2em}

\pagestyle{empty}

\newcommand{\SWFUtitlepage}{% Title page layout
  \thispagestyle{empty}
  \begin{center}
    \makebox[14.7em][s]{\Large\heiti 西南林业大学}\\[5mm]
    \makebox[20em][s]{\Large\heiti 本科毕业论文（设计）开题报告}\\[5mm]
    \vskip 2cm
    \begin{large}
    \begin{minipage}{1.0\linewidth}
      \extrarowsep=^8mm_-7pt
      \begin{tabu} to \textwidth {@{}rX[l]@{}}
        论\,文\,题\,目：&%
        \makebox[0pt][t]{%
          \begin{minipage}[t]{30em}
            \centering\parbox[t]{29em}{\centering\textbf{\Large\@title}}
          \end{minipage}}%
        \rule[-.5ex]{30em}{.1pt}\par%
        \rule[-.1ex]{30em}{.1pt}\\%
      \end{tabu}
    \end{minipage}
    \vskip 1cm
    \begin{minipage}{.8\linewidth}
      \begin{center}
        \extrarowsep=^8mm_-7pt
        \begin{tabu}spread\textwidth{@{}rX[c]@{}}
          专\hspace{1em}业\hspace{1em}名\hspace{1em}称：&\SWFU@Subject\\\tabucline{2-2}
          年\hspace{5em}级：&\SWFU@Grade\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}学\hspace{1em}号：&\SWFU@Studid\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}姓\hspace{1em}名：&\@author\\\tabucline{2-2}
          指导教师（职称）：&\SWFU@Advisor{}（\SWFU@AdvisorTitle）
          \\\tabucline{2-2}
          &\\\tabucline{2-2}
          填\hspace{1em}表\hspace{1em}时\hspace{1em}间：&
          \SWFU@Year\ 年\ \SWFU@Month\ 月\ \SWFU@Date\ 日\\\tabucline{2-2}
        \end{tabu}
      \end{center}
    \end{minipage}
  \end{large}
  \vfill
  {\Large\textbf{教\,务\,处\,制}}\\[1cm]
\end{center}
\clearpage}

\newcommand{\instructionpage}{% Instruction page
  \begin{center}
    {\LARGE\textbf{填\hspace{1em}表\hspace{1em}说\hspace{1em}明}}\\[5mm]
  \end{center}
  \vskip 3ex
  \begin{itemize}
  \item[一、] 开题报告各项内容要实事求是，逐条认真填写，表达要明确、严谨。外来语应用中文和
    英文同时表达，第一次出现的缩写词，须注出全称。
  \item[二、] 开题报告需用计算机打印，一律为 A4 开本，于左侧装订成册。各栏空格不够时，请自
    行加页。
  \item[三、] 开题报告需在第八学期开学之前完成。
  \end{itemize}
  \clearpage}

\newcommand{\tablebody}{% main part
  \singlespacing\noindent
%  \extrarowsep=_8pt^8pt
  \extrarowsep=^2pt
  \begin{tabu}{|X[-1,c,m]|@{}X[m]@{}|}\tabucline-
    指导教师\par{}基本情况%
    & \begin{tabu}{c|c|c|X[-1,c,m]|X[-1,c,m]|c}
      指导教师姓名&性别&年龄&学历或\par{}学位&专业技术\par{}职务或职称&工作单位\\[2pt]\tabucline-
      \SWFU@Advisor&\SWFU@AdvisorGender&\SWFU@AdvisorAge&
      \SWFU@AdvisorDegree&\SWFU@AdvisorTitle&\SWFU@AdvisorWhere\\\tabucline-
      &&&&&\\
    \end{tabu}\\\tabucline-
    课题来源&\quad 1. 导师课题的一部分；2. 其他（须具体说明）
    \underline{\quad\SWFU@Projfrom\quad}。\\%\tabucline-
  \end{tabu}
  \vskip -1ex
  \begin{mainbodybox}{1.\, 该研究的目的、意义}
    \SWFU@Partone
  \end{mainbodybox}
  \vskip -1.7ex
  \begin{mainbodybox}{2.\, 国内外研究现状及发展趋势}
    \SWFU@Parttwo
  \end{mainbodybox}
  \vskip -1.7ex
  \begin{mainbodybox}{3.\, 主要参考文献}
    \SWFU@Partthree
  \end{mainbodybox}
  \vskip -1.7ex
  \begin{mainbodybox}{4.\, 该研究的主要内容，重点解决的问题，预期结果或成果}
    \SWFU@Partfour
  \end{mainbodybox}
  \vskip -1.7ex
  \begin{mainbodybox}{5.\, 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法}
    \SWFU@Partfive
  \end{mainbodybox}
  \vskip -1.7ex
  \begin{mainbodybox}{6.\, 完成该研究已具备的条件}
    \SWFU@Partsix
  \end{mainbodybox}
  \vspace*{-1ex}
  \noindent
  \begin{tabu}{|r@{\ }X|}\tabucline-
  &指导教师意见\\[2ex]
    &\hspace{3em}{\Large\SWFU@AdvisorComment}\\[-1ex]
    &\hfill 签名：\makebox[7em]{\SWFU@AdvisorSig}\\
    &\hfill\SWFU@Year 年 \SWFU@Month 月 \SWFU@Date 日\\\tabucline-
  \end{tabu}\vspace*{-1pt}
  % \extrarowsep=_17pt
  \noindent
  \begin{tabu}{|m{1em}|X[15,m]|m{1em}|X[15,m]|}
    教研室意见& \begin{tabular}{l}%
                  教研室负责人：\\%[6ex]
                  \\
                  \\
                  \\
                  \\
                  \\
                  \hspace{5em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\%[-3ex]
    \end{tabular} &教学院系部意见& \begin{tabular}{l}%
                                     教学院系部负责人：\\%[4ex]
                                     \\
                                     \\
                                     \\
                                     \\
                                     \\
\hspace{5em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\%[-3ex]
                                   \end{tabular}\\\tabucline-
  \end{tabu}}

\newcommand{\makeproposal}{% preliminary pages
  \SWFUtitlepage{}
  \doublespacing% global line spacing
  \instructionpage{}
  \tablebody{}}
