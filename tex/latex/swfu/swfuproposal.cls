% 西南林业大学本科毕业论文（设计）开题报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuproposal}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese]{ctexart}

\newfontfamily\dejavu{DejaVu Sans Mono}%
\newcommand\unchecked{{\dejavu □}} %ballot box
\newcommand\checked{{\large\dejavu ☑}} %🗹

\RequirePackage{pgfkeys}

\pgfkeys{%
  PrjFrmA/.store in       = \SWFU@PrjFrmA, PrjFrmA={\unchecked{}}, %科研项目
  PrjFrmB/.store in       = \SWFU@PrjFrmB, PrjFrmB={\unchecked{}}, %社会实践
  PrjFrmC/.store in       = \SWFU@PrjFrmC, PrjFrmC={\unchecked{}}, %大学生创新创业项目
  PrjFrmD/.store in       = \SWFU@PrjFrmD, PrjFrmD={\unchecked{}}, %其它来源
  Studid/.store in         = \SWFU@Studid, % 学号
  Advisor/.store in        = \SWFU@Advisor, Advisor=,             % 指导教师
  AdvisorSig/.store in     = \SWFU@AdvisorSig, AdvisorSig=,       % 指导教师签名
  AdvisorTitle/.store in   = \SWFU@AdvisorTitle, AdvisorTitle=,   %指导教师职称
  AdvisorGender/.store in  = \SWFU@AdvisorGender, AdvisorGender=, %指导教师性别
  AdvisorAge/.store in     = \SWFU@AdvisorAge, AdvisorAge=,       %指导教师年龄
  AdvisorDegree/.store in  = \SWFU@AdvisorDegree, AdvisorDegree=, %指导教师学位
  AdvisorFrom/.store in   = \SWFU@AdvisorFrom, AdvisorFrom=大数据与智能工程学院,%
  AdvisorComment/.store in = \SWFU@AdvisorComment, % 指导教师意见
  Date/.store in           = \SWFU@Date,      % 填表时间(日)
  Month/.store in          = \SWFU@Month,     % 填表时间(月)
  Year/.store in           = \SWFU@Year,      % 填表时间(年)
  Subject/.store in        = \SWFU@Subject,   % 专业
  Grade/.store in          = \SWFU@Grade,     % 年级
  Partone/.store in        = \SWFU@Partone,   % 1. 该研究的目的、意义
  Parttwo/.store in        = \SWFU@Parttwo,   % 2. 国内外研究现状及发展趋势
  Partthree/.store in      = \SWFU@Partthree, % 3. 主要参考文献
  Partfour/.store in       = \SWFU@Partfour,  % 4. 该研究的主要内容，重点解决的问题，预期结果或成果
  Partfive/.store in       = \SWFU@Partfive,  % 5. 拟采取的研究方法或实验方法，
                                              %    步骤，可能出现的技术问题及解决办法
  Partsix/.store in        = \SWFU@Partsix,   % 6. 完成该研究已具备的条件  
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage[%showframe,%showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{graphicx} % before xltxtra
\graphicspath{{./figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{caption,subcaption}% \captionof{table|figure}{t|f}

\RequirePackage{tabularx,longtable,booktabs,makecell,multicol,multirow,array}
\renewcommand{\arraystretch}{1.5}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\newcolumntype{R}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\RequirePackage{indentfirst,enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered, breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}

% https://tex.stackexchange.com/questions/247185/tcolorbox-theorem-which-isnt-framed-on-the-sides
\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,sharp corners,nobeforeafter,%
  colback=white,coltitle=black,colbacktitle=white,%
  boxrule=.5pt,titlerule=0pt,%
  bottomrule at break=.5pt,after skip=-1.5pt,% bottomrule=0pt, bottom=1em,
  before upper={\parindent 2em},% indentfirst  
  fonttitle=\large\bfseries,title=#1}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand\doublespacing{\setstretch{1.6}}

\setlength{\parindent}{2em}

\pagestyle{empty}

\newcommand{\SWFUtitlepage}{% Title page layout
  \thispagestyle{empty}
  \begin{center}
    \makebox[14em][s]{\LARGE\heiti 西南林业大学}\\[5mm]
    \makebox[28em][s]{\LARGE\heiti 本科毕业论文（设计）开题报告}\\[5mm]
    \vskip 3cm
    \begin{large}
      \begin{minipage}{1.0\linewidth}
        \begin{tabularx}{\textwidth}{@{}rX@{}}
          \makebox[5em][s]{论文题目}%
          &\makebox[0pt][t]{%
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
            \makebox[7em][s]{专业名称}&\SWFU@Subject\\[-1ex]\cline{2-2}
            \makebox[7em][s]{年级}&\SWFU@Grade\\[-1ex]\cline{2-2}
            \makebox[7em][s]{学生姓名}&\@author\\[-1ex]\cline{2-2}
            \makebox[7em][s]{学生学号}&\SWFU@Studid\\[-1ex]\cline{2-2}
            \makebox[7em][s]{指导教师 (职称)}&\SWFU@Advisor{}（\SWFU@AdvisorTitle）\\[-1ex]\cline{2-2}
                                      &\\[-1ex]\cline{2-2}
            \makebox[7em][s]{填表时间}&%
          \SWFU@Year{}年\,\SWFU@Month{}月\,\SWFU@Date{}日\\[-1ex]\cline{2-2}
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
    \LARGE\bfseries\makebox[7em][s]{填表说明}
  \end{center}
  \vskip 5ex
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
  \begin{singlespace}
    \noindent
    \begin{tabularx}{\linewidth}{|M{2em}|@{}X@{}|}\hline
      指导教师基本情况%
      & {\begin{tabularx}{\linewidth}{c|c|c|c|c|C}
           指导教师姓名%
           &\makecell*{性\\别}&\makecell*{年\\龄}&\makecell*{学历或\\学位}%
           &\makecell*{专业技术\\职务或职称}&工作单位\\\hline
           \SWFU@Advisor%
           &\SWFU@AdvisorGender&\SWFU@AdvisorAge&\SWFU@AdvisorDegree%
           &\SWFU@AdvisorTitle&\SWFU@AdvisorFrom\\\hline
           &&&&&\\
         \end{tabularx}}\\\hline
      课题来源%
      & \qquad\SWFU@PrjFrmA{}科研项目%
        \qquad\SWFU@PrjFrmB{}社会实践%
        \qquad\SWFU@PrjFrmC{}大学生创新创业项目%
        \qquad\SWFU@PrjFrmD{}其它来源\\[2ex]%
    \end{tabularx}
  \end{singlespace}
  \vskip -2pt
  \begin{mainbodybox}{1.\, 该研究的目的、意义}
    \SWFU@Partone
  \end{mainbodybox}
  \begin{mainbodybox}{2.\, 国内外研究现状及发展趋势}
    \SWFU@Parttwo
  \end{mainbodybox}
  \begin{mainbodybox}{3.\, 主要参考文献}
    \SWFU@Partthree
  \end{mainbodybox}
  \begin{mainbodybox}{4.\, 该研究的主要内容，重点解决的问题，预期结果或成果}
    \SWFU@Partfour
  \end{mainbodybox}
  \begin{mainbodybox}{5.\, 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法}
    \SWFU@Partfive
  \end{mainbodybox}
  \begin{mainbodybox}{6.\, 完成该研究已具备的条件}
    \SWFU@Partsix
  \end{mainbodybox}
  \begin{mainbodybox}{指导教师意见}
    \bigskip
    \SWFU@AdvisorComment\par
    \hfill 签名：\makebox[7em]{\SWFU@AdvisorSig}\par
    \medskip
    \hfill\SWFU@Year 年 \SWFU@Month 月 \SWFU@Date 日
  \end{mainbodybox}
  \noindent
  \begin{tcolorbox}[sharp corners,nobeforeafter,%
    left=0pt,right=0pt,top=-13pt,bottom=0pt,boxsep=0pt,%
    colback=white, boxrule=.5pt]
    \singlespacing\noindent
    \begin{tabularx}{\linewidth}{P{1em}|X|P{1em}|X}
      \qquad{}教研室意见%
      & 教研室负责人：\par%
        \vspace*{18ex}%
        \hfill{}年\qquad{}月\qquad{}日%
      & \quad{}教学院系部意见\par%
      & 教学院系部负责人：\par%
        \vspace*{18ex}%
        \hfill{}年\qquad{}月\qquad{}日\\
    \end{tabularx}    
  \end{tcolorbox}%
}

\newcommand{\makeproposal}{%
  \SWFUtitlepage{}
  \instructionpage{}
  \tablebody{}
}
