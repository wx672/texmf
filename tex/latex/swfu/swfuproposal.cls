% 西南林业大学本科毕业论文（设计）开题报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuproposal}

% pass unknown options to book
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aritcle}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

%\RequirePackage{ifxetex} % XeTeX only
\RequirePackage{zhlipsum}

\newfontfamily\nerd{DejaVu Sans Mono Nerd Font Complete}%
\newcommand\unchecked{{\nerd □}} %ballot box
\newcommand\checked{{\large\nerd 🗹}} %☑

\RequirePackage{pgfkeys}

\pgfkeys{%
  Title/.store in          = \@title,          %论文标题
  Author/.store in         = \@author,         %作者
  Projfrom/.store in       = \SWFU@Projfrom, Projfrom=自选, %
  Chk/.store in          = \SWFU@Chk, Chk={\unchecked}, %课题来源打勾
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

\RequirePackage{tabularx,longtable,booktabs,makecell,multicol,multirow,array}
\renewcommand{\arraystretch}{1.5}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\newcolumntype{R}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\RequirePackage{indentfirst,enumitem} % \setlist
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
    \vskip 3cm
    \begin{large}
    \begin{minipage}{1.0\linewidth}
      \begin{tabularx}{\textwidth}{@{}rX@{}}
        论\,文\,题\,目&%
        \makebox[0pt][t]{%
          \begin{minipage}[t]{30em}
            \begin{center}
              \parbox[t]{29em}{\centering\bfseries\Large\@title}
            \end{center}
          \end{minipage}}%
        \rule[-1.5ex]{30em}{.1pt}\par%
        \rule[-1.5ex]{30em}{.1pt}\\%
      \end{tabularx}
    \end{minipage}
    \vskip 2cm
    \begin{minipage}{.8\linewidth}
      \begin{center}
        \begin{tabularx}{\textwidth}{@{}rC@{}}
          专\hspace{1em}业\hspace{1em}名\hspace{1em}称&\SWFU@Subject\\\cline{2-2}
          年\hspace{5em}级&\SWFU@Grade\\\cline{2-2}
          学\hspace{1em}生\hspace{1em}姓\hspace{1em}名&\@author\\\cline{2-2}
          学\hspace{1em}生\hspace{1em}学\hspace{1em}号&\SWFU@Studid\\\cline{2-2}
          指导教师（职称）&\SWFU@Advisor{}（\SWFU@AdvisorTitle） \\\cline{2-2}
          &\\\cline{2-2}
          填\hspace{1em}表\hspace{1em}时\hspace{1em}间&
          \SWFU@Year{}年\,\SWFU@Month{}月\,\SWFU@Date{}日\\\cline{2-2}
        \end{tabularx}
      \end{center}
    \end{minipage}
  \end{large}
  \vfill
  {\Large\bfseries 西南林业大学教务处制}\\[1cm]
\end{center}
\clearpage}

\newcommand{\instructionpage}{% Instruction page
  \begin{center}
    {\LARGE\bfseries 填\quad 表\quad 说\quad 明}\\[5mm]
  \end{center}
  \vskip 3ex
  \begin{itemize}
  \item[一、] 开题报告各项内容要实事求是，逐条认真填写，表达要明确、严谨。外来语应用中文和
    英文同时表达，第一次出现的缩写词，须注出全称。
  \item[二、] 开题报告需用计算机打印，一律为 A4 开本，于左侧装订成册。各栏空格不够时，请自
    行加页。
  \item[三、] 开题报告需在第八学期开学之前完成。
  \item[四、] 开题报告需装入西南林业大学毕业论文（设计）档案袋。
  \end{itemize}
  \clearpage}

\newcommand{\tablebody}{% main part
  \singlespacing\noindent
  \begin{tabularx}{\linewidth}{|M{2em}|@{}X@{}|}\hline
    指导教师\par{}基本情况%
    & {\begin{tabularx}{\linewidth}{c|c|c|c|c|C}
        指导教师姓名&\makecell*{性\\别}&\makecell*{年\\龄}&\makecell*{学历或\\学位}&\makecell*{专业技术\\职务或职称}&工作单位\\\hline
        \SWFU@Advisor&\SWFU@AdvisorGender&\SWFU@AdvisorAge&
        \SWFU@AdvisorDegree&\SWFU@AdvisorTitle&\SWFU@AdvisorWhere\\\hline
        &&&&&\\
      \end{tabularx}}\\\hline
    课题来源&\quad \SWFU@Chk{}科研项目\quad\SWFU@Chk{}社会实践\quad\SWFU@Chk{} 大学生创新创业项目\quad\SWFU@Chk{}其它来源\\
  \end{tabularx}
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
  \begin{tabularx}{\linewidth}{|r@{\ }X|}\hline
  &指导教师意见\\[2ex]
    &\hspace{3em}{\Large\SWFU@AdvisorComment}\\[-1ex]
    &\hfill 签名：\makebox[7em]{\SWFU@AdvisorSig}\\
    &\hfill\SWFU@Year 年 \SWFU@Month 月 \SWFU@Date 日\\\hline
  \end{tabularx}\vspace*{-1pt}
  \noindent
  \begin{tabularx}{\linewidth}{|m{1em}|X|m{1em}|X|}
    教研室意见&%
    \begin{tabular}{l}%
      教研室负责人：\\%[6ex]
      \vspace*{10ex}\\
      \hspace{5em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\%[-3ex]
    \end{tabular} &%
    教学院系部意见&%
    \begin{tabular}{l}%
      教学院系部负责人：\\%[4ex]
      \vspace*{10ex}\\
      \hspace{5em}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\%[-3ex]
    \end{tabular}\\\hline
  \end{tabularx}}

\newcommand{\makeproposal}{% preliminary pages
  \SWFUtitlepage{}
  \doublespacing% global line spacing
  \instructionpage{}
  \tablebody{}}
