% 西南林业大学本科毕业（设计）论文答辩申请表、评阅意见表、指导教师意见表（留学生版）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfucommentse}

\RequirePackage{pgfkeys}%,etoolbox,calc

\pgfkeys{%
  Formsubtitle/.store in   = \SWFU@Formsubtitle,   % 指导教师意见 | 评阅意见 | 答辩申请表
  Prjtitle/.store in       = \SWFU@Prjtitle,       % 论文(设计)题目
  Studid/.store in         = \SWFU@Studid,         % 学号
  Studname/.store in       = \SWFU@Studname,       % 学生姓名
  Studsbj/.store in        = \SWFU@Studsbj,        % 学生专业
  School/.store in         = \SWFU@School, School={College of Big Data and Intelligence Engineering},
  Studmark/.store in       = \SWFU@Studmark,       % 评分
  Signature/.store in      = \SWFU@Signature,      % 教师签名
  Commenterlabel/.store in = \SWFU@Commenterlabel, % 指导教师 | 评阅人 | 申请人
  Commentslabel/.store in  = \SWFU@Commentslabel,  % 评语： | 指导教师评审意见：
  Marklabel/.store in      = \SWFU@Marklabel,      % 评分 | NULL
  % Year/.store in           = \SWFU@Year,           %
  % Month/.store in          = \SWFU@Month,          %
  Date/.store in           = \SWFU@Date,           % 年/月/日
  Comments/.store in       = \SWFU@Comments,       % 意见正文
  Hinttitle/.store in      = \SWFU@Hinttitle,      % 提示部分的标题
  Hinttext/.store in       = \SWFU@Hinttext,       % 提示部分的内容
  C/.style = {%评阅意见
    Formsubtitle = Commentary,%
    Hinttitle = Please refer to the following aspects to provide comments,%
    Hinttext = {%
      {\small
        \begin{enumerate}[itemsep=-1ex]
        \item Whether the topic of the thesis is appropriate and what is the significance;
        \item Whether the structure of the paper is complete, whether the writing is
          serious, and whether the writing is smooth;
        \item Evaluation of the quality of the paper (design, methods, results,
          innovation, etc.);
        \item The main problems that exist;
        \item Suggestions.
        \end{enumerate}}},%
    Commenterlabel = {Reviewer (signature)},%
    Commentslabel = {Comments: },%
    Marklabel = {Mark: \underline{\makebox[2.5em]{\purisa\SWFU@Studmark}}\hfill},},
  A/.style = {%指导教师意见
    Formsubtitle = Opinions of the Instructor,%
    Hinttitle = Please refer to the following aspects to provide comments,%
    Hinttext = {%
      {\small
        \begin{enumerate}[itemsep=-1ex]
        \item Workload and attitude;
        \item Ability to independently access data and comprehensively use information;
        \item Skills and analytical and problem-solving abilities;
        \item Evaluation of the quality of the paper (design, methods, results, innovation, etc.);
        \item Suggest.
        \end{enumerate}}},%
    Commenterlabel = Instructor (Signature):,%
    Commentslabel = {Commentary},%
    Marklabel = {Mark: \underline{\makebox[2.5em]{\purisa\SWFU@Studmark}}\hfill}}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage{fontspec}
\newfontfamily\purisa{Purisa}

\RequirePackage[%showframe,nomarginpar,
paperwidth=195mm,paperheight=270mm,
% top=2cm,bottom=2cm,
% left=2cm,right=2cm,
margin=2cm
]{geometry}

\RequirePackage{graphicx} % for signature
\graphicspath{{../figs/}{./figs/}{../img/}{./img/}{./}{../}} %note that the trailing “/” is required

\RequirePackage{tabularray}
% \newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
% \newcolumntype{C}{>{\centering\arraybackslash}X}
% \renewcommand{\arraystretch}{1.5}

\RequirePackage{enumitem}

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    \large\bfseries \SWFU@Formsubtitle{} on the Undergraduate Thesis (Design) of Southwest
    Forestry University
  \end{center}
  \bigskip\noindent%
  \begin{tblr}{colspec={rX[c]},%
      column{1}={b,font=\bfseries}, column{2}={b,c},%
      hline{2-5}={2}{.4pt,solid},%{belowsep=5pt,abovesep=0pt},%
      rows={m}
    }
    {Thesis (Design) title} & {\SWFU@Prjtitle}                \\
    {Student name (ID)}     & {\SWFU@Studname\quad{}(\SWFU@Studid)} \\
    Major                 & {\SWFU@Studsbj}                 \\
    Department            & {\SWFU@School}                  \\
  \end{tblr}%
  \par\vspace*{7mm}\noindent%
  \begin{tblr}{colspec={X}, hlines, vlines}
    \begin{minipage}{1.0\linewidth}
      \smallskip%
      \begin{center}
        \SWFU@Hinttitle
      \end{center}
      \SWFU@Hinttext%
      \smallskip%
    \end{minipage} \\
  \end{tblr}
  \noindent{\bfseries\SWFU@Commentslabel}\par\bigskip%
  \SWFU@Comments%
  \vfill%
  \noindent\SWFU@Marklabel%
  \SWFU@Commenterlabel{}\underline{\makebox[5em]{\SWFU@Signature}}\hfill
  Date: \underline{{\purisa\SWFU@Date}}}
