% 西南林业大学本科毕业（设计）论文答辩申请表、评阅意见表、指导教师意见表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfucomments}

\RequirePackage{pgfkeys}%,etoolbox,calc

\pgfkeys{%
  Formsubtitle/.store in   = \SWFU@Formsubtitle,   % 指导教师意见 | 评阅意见 | 答辩申请表
  Prjtitle/.store in       = \SWFU@Prjtitle,       % 论文(设计)题目
  Studid/.store in         = \SWFU@Studid,         % 学号
  Studname/.store in       = \SWFU@Studname,       % 学生姓名
  Studsbj/.store in        = \SWFU@Studsbj,        % 学生专业
  School/.store in         = \SWFU@School, School={大数据与智能工程学院},%
  Studmark/.store in       = \SWFU@Studmark,       % 评分
  Signature/.store in      = \SWFU@Signature,      % 教师签名
  Commenterlabel/.store in = \SWFU@Commenterlabel, % 指导教师 | 评阅人 | 申请人
  Commentslabel/.store in  = \SWFU@Commentslabel,  % 评语： | 指导教师评审意见：
  Marklabel/.store in      = \SWFU@Marklabel,      % 评分 | NULL
  Year/.store in           = \SWFU@Year,  Year = \the\year,%
  Month/.store in          = \SWFU@Month, Month = \the\month,%
  Date/.store in           = \SWFU@Date,  Date = \the\day,%
  Comments/.store in       = \SWFU@Comments,       % 意见正文
  Hinttitle/.store in      = \SWFU@Hinttitle,      % 提示部分的标题
  Hinttext/.store in       = \SWFU@Hinttext,       % 提示部分的内容
  C/.style = {%评阅意见
    Formsubtitle = 评阅意见,%
    Hinttitle = 请参照以下几个方面提出意见,%
    Hinttext = {%
      \begin{enumerate}
      \item 论文选题是否恰当，有何意义；
      \item 论文结构是否完整，写作是否认真，文字是否通顺；
      \item 对论文质量的评价（设计、结果、方法、创新性等）；
      \item 存在的主要问题；
      \item 建议。
      \end{enumerate}},%
    Commenterlabel = {评阅人（签名）：},%
    Commentslabel = {评\hspace{1ex}语：},%
    Marklabel = {评分：\underline{\makebox[2.5em]{\purisa\SWFU@Studmark}}\hfill},},
  A/.style = {%指导教师意见
    Formsubtitle = 指导教师意见,
    Hinttitle = 请参照以下几个方面提出意见,
    Hinttext = {%
      \begin{enumerate}
      \item 工作量和工作态度；
      \item 独立查阅资料和综合利用信息的能力；
      \item 技能与分析、解决问题的能力；
      \item 对论文质量的评价（设计、结果、方法、创新性等）；
      \item 建议。
      \end{enumerate}},%
    Commenterlabel = 指导教师（签名）：,%
    Commentslabel = {评\hspace{1ex}语：},%
    Marklabel = {评分：\underline{\makebox[2.5em]{\purisa\SWFU@Studmark}}\hfill}},
  S/.style = {%答辩申请表
    Formsubtitle = 答辩申请表,%
    Hinttitle = 指导教师评审意见主要包含以下几个方面,%
    Hinttext = {%
      \begin{enumerate}
      \item 论文格式是否完整；
      \item 是否同意答辩；
      \item 存在的主要问题；
      \item 其他；
      \item 建议。
      \end{enumerate}},%
    Commenterlabel = 申请人（签名）：,%
    Commentslabel = 指导教师评审意见：,%
    Marklabel=,}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}%fontset=ubuntu

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./img/}{./}{../}} %note that the trailing “/” is required

\newfontfamily\purisa{Purisa}

\RequirePackage[%showframe,nomarginpar,
paperwidth=195mm,paperheight=270mm,
top=3cm,bottom=2cm,
left=2.5cm,right=2.5cm,
]{geometry}

\RequirePackage{tabularray}
% \newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
% \newcolumntype{C}{>{\centering\arraybackslash}X}
% \renewcommand{\arraystretch}{1.5}

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    \large\heiti 西南林业大学本科毕业（设计）论文\SWFU@Formsubtitle
  \end{center}
  \bigskip\noindent%
  \begin{tblr}{width=\linewidth, colspec={rX[c]rX[c]},% rowspec={Q[f]Q[f]Q[f]},%
      column{1,3}={font=\heiti}, column{2,4}={font=\kaishu},%
      cell{1}{2}={c=3}{c,font=\kaishu},%
      hline{2}={2-4}{},%
      hline{3,4}={2,4}{},
    }
    论文(设计)题目: & \SWFU@Prjtitle                                  \\
    学生姓名:       & \SWFU@Studname & 学号: & \texttt{\SWFU@Studid} \\
    学院:           & \SWFU@School   & 专业: & \SWFU@Studsbj         \\
  \end{tblr}%
  \par\vspace*{7mm}\noindent%
  \fbox{\begin{minipage}{1.0\linewidth}
      \smallskip%
      \begin{center}
        \large\SWFU@Hinttitle
      \end{center}
      \SWFU@Hinttext%
      \smallskip%
    \end{minipage}}
  \par\medskip
  \noindent\SWFU@Commentslabel\par
  {\kaishu\SWFU@Comments}%
  \vfill%
  \noindent%
  \SWFU@Marklabel%
  \SWFU@Commenterlabel{}\underline{\makebox[5em]{\SWFU@Signature}}\hfill
  日期：%
  \underline{\makebox[3em]{\purisa\SWFU@Year}}年
  \underline{\makebox[3ex]{\purisa\SWFU@Month}}月
  \underline{\makebox[3ex]{\purisa\SWFU@Date}}日}
