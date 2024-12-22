% 西南林业大学本科毕业（设计）论文答辩申请表、评阅意见表、指导教师意见表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfucomments}

\RequirePackage{pgfkeys}%,etoolbox,calc

\pgfkeys{%
  School/.store in = \SWFU@School, School={大数据与智能工程学院},%
  FormHeading/.store in = \SWFU@FormHeading, % 指导教师意见 | 评阅意见 | 答辩申请表
  Title/.store in = \SWFU@Title, % 论文(设计)题目
  Name/.store in    = \SWFU@Name,    % 学生姓名
  ID/.store in      = \SWFU@ID,      % 学号
  Subject/.store in = \SWFU@Subject, % 学生专业
  Mark/.store in    = \SWFU@Mark,    % 评分
  Signature/.store in      = \SWFU@Signature,      % 教师签名
  Commenterlabel/.store in = \SWFU@Commenterlabel, % 指导教师 | 评阅人 | 申请人
  Commentslabel/.store in  = \SWFU@Commentslabel,  % 评语： | 指导教师评审意见：
  Marklabel/.store in      = \SWFU@Marklabel,      % 评分 | NULL
  Year/.store in           = \SWFU@Year,  Year  = \the\year,%
  Month/.store in          = \SWFU@Month, Month = \the\month,%
  Date/.store in           = \SWFU@Date,  Date  = \the\day,%
  Comments/.store in       = \SWFU@Comments,  % 意见正文
  Hinttitle/.store in      = \SWFU@Hinttitle, % 提示部分的标题
  Hinttext/.store in       = \SWFU@Hinttext,  % 提示部分的内容
  C/.style = {%评阅意见
    FormHeading = 评阅意见,%
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
    Marklabel = {评分：\underline{\makebox[2.5em]{\hwfamily\SWFU@Mark}}},},
  A/.style = {%指导教师意见
    FormHeading = 指导教师意见,
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
    Marklabel = {%
      评分：\underline{\makebox[2.5em][c]{\hwfamily\SWFU@Mark}}}},
  S/.style = {%答辩申请表
    FormHeading = 答辩申请表,%
    Hinttitle   = 指导教师评审意见主要包含以下几个方面,%
    Hinttext    = {%
      \begin{enumerate}
      \item 论文格式是否完整；
      \item 是否同意答辩；
      \item 存在的主要问题；
      \item 其他；
      \item 建议。
      \end{enumerate}},%
    Commentslabel  = {指导教师评审意见：},%
    Commenterlabel = {申请人（签名）：},%
    Marklabel=,%留空，答辩申请表上没有分数
  }}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}%article
\ProcessOptions\relax

\LoadClass[12pt]{ctexart}%article

\RequirePackage{wx672en,tabularray,graphicx}%wx672babel,

\RequirePackage[%showframe,
a4paper,nomarginpar,%
top=3cm,bottom=2cm,hmargin=2cm,%
]{geometry}

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    \large\sffamily\bfseries 西南林业大学本科毕业（设计）论文\SWFU@FormHeading%
  \end{center}
  \bigskip\noindent%
  \begin{tblr}{colspec={rX[c]rX[c]}, rows={m,abovesep=8pt},%
      hline{2}={2-4}{}, hline{3,4}={2,4}{},%
      cell{1}{2}={c=3}{font=\ttfamily},%
      column{1,3}={font=\bfseries}, column{2,4}={font=\ttfamily},%
    }
    {论文(设计)\\题目:} & \makebox[0pt][c]{\SWFU@Title} & & \\
    学生姓名: & \SWFU@Name & 学号: & \SWFU@ID \\
    学院: & \SWFU@School & 专业: & \SWFU@Subject \\
  \end{tblr}\par%
  \vspace*{7mm}\noindent%
  \fbox{%
    \begin{minipage}{\linewidth}
      \smallskip%
      \begin{center}
        \large\SWFU@Hinttitle
      \end{center}
      \SWFU@Hinttext%
      \smallskip
    \end{minipage}}
  \par\medskip
  \noindent\SWFU@Commentslabel\par
  {\ttfamily\SWFU@Comments}%
  \vfill\noindent%
  \SWFU@Marklabel\hfill%
  \SWFU@Commenterlabel\underline{\makebox[3cm]{\SWFU@Signature}}\hfill%
  日期：%
  \underline{\makebox[3em][c]{\hwfamily\SWFU@Year}}年
  \underline{\makebox[1.6em][c]{\hwfamily\SWFU@Month}}月
  \underline{\makebox[1.6em][c]{\hwfamily\SWFU@Date}}日}
