% 西南林业大学本科毕业（设计）论文答辩申请表、评阅意见表、指导教师意见表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgcomments}

\LoadClass[10pt]{article}

\RequirePackage{ifxetex} % XeTeX only

% \RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}

\RequirePackage{wx672cjk}

\RequirePackage{graphicx}

\RequirePackage[%showframe,nomarginpar,
paperwidth=195mm,paperheight=270mm,
top=3cm,bottom=2cm,
left=2.5cm,right=2.5cm,
]{geometry}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Formsubtitle}[1]{\gdef\SWFCField@Formsubtitle{#1}} % 指导教师意见 | 评阅意见
                                % | 答辩申请表
\newcommand{\Prjtitle}[1]{\gdef\SWFCField@Prjtitle{#1}} % 论文标题
\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}} % 学号
\newcommand{\Studname}[1]{\gdef\SWFCField@Studname{#1}} % 学生姓名
\newcommand{\Studsbj}[1]{\gdef\SWFCField@Studsbj{#1}} % 学生专业
\newcommand{\Studclass}[1]{\gdef\SWFCField@Studclass{#1}} % 学生班级
\newcommand{\Studmark}[1]{\gdef\SWFCField@Studmark{#1}} % 评分
\newcommand{\Advisorname}[1]{\gdef\SWFCField@Advisorname{#1}} % 指导教师姓名
\newcommand{\Advisortitle}[1]{\gdef\SWFCField@Advisortitle{#1}} % 指导教师职称
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 教师签名
\newcommand{\Commenterlabel}[1]{\gdef\SWFCField@Commenterlabel{#1}} % 指导教师 | 评阅人 | 申请人
\newcommand{\Commentslabel}[1]{\gdef\SWFCField@Commentslabel{#1}} % 评语： | 指导教师评审意见：
\newcommand{\Marklabel}[1]{\gdef\SWFCField@Marklabel{#1}} % 评分 | NULL
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}
\newcommand{\Comments}[1]{\gdef\SWFCField@Comments{#1}} % 意见正文
\newcommand{\Hinttitle}[1]{\gdef\SWFCField@Hinttitle{#1}} % 提示部分的标题
\newcommand{\Hinttext}[1]{\gdef\SWFCField@Hinttext{#1}} % 提示部分的内容

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\LARGE\hei 西南林业大学本科毕业（设计）论文\SWFCField@Formsubtitle}\\[3ex]
    \tabulinesep=2mm
    \begin{tabu}{|c|X[l,1.2]|X[c,.6]|X[l,1.2]|}
      \tabucline-
      论文（设计）题目& \multicolumn{3}{c|}{\kai\SWFCField@Prjtitle{}} \\\tabucline-
      学生学号&\SWFCField@Studid&学生姓名&{\kai\SWFCField@Studname}\\\tabucline-
      学生专业&{\kai\SWFCField@Studsbj}&班\hspace{2em}级&{\kai\SWFCField@Studclass}\\\tabucline-
      指导教师姓名&{\kai\SWFCField@Advisorname}&职\hspace{2em}称&{\kai\SWFCField@Advisortitle}\\\tabucline-
    \end{tabu}
    \vspace{-1pt}
    \begin{tabu}{|X[c]|}
      {\large \SWFCField@Hinttitle{}}\\
      \begin{minipage}{.65\linewidth}\SWFCField@Hinttext{}\end{minipage}\\\tabucline-
    \end{tabu}
    \begin{tabu}{@{}X}
      \SWFCField@Commentslabel{}\\
      \SWFCField@Comments{}\\
      \tabuphantomline
    \end{tabu}}
  \vfill
  \SWFCField@Marklabel{}
  \SWFCField@Commenterlabel{}\underline{\makebox[5em]{\SWFCField@Signature{}}}\hfill
  日期：\underline{\makebox[3.5em]{\SWFCField@Year{}}}年
  \underline{\makebox[1.5em]{\SWFCField@Month{}}}月
  \underline{\makebox[2em]{\SWFCField@Date{}}}日}

\DeclareOption{A}{ % A - Advisor
  \Formsubtitle{指导教师意见}
  \Hinttitle{评阅时，请参照以下几个方面提出意见}
  \Hinttext{%
    \begin{enumerate}
    \item 工作量和工作态度；
    \item 独立查阅资料和综合利用信息的能力；
    \item 技能与分析、解决问题的能力；
    \item 对论文质量的评价（设计、结果、方法、创新性等）；
    \item 建议。
    \end{enumerate}}%
  \Commenterlabel{指导教师（签名）：}%
  \Commentslabel{评\hspace{1ex}语：}%
  \Marklabel{评分：\underline{\makebox[2.5em]{\SWFCField@Studmark{}}}\hfill}}

\DeclareOption{C}{ % C - Commenter
  \Formsubtitle{评阅意见}%
  \Hinttitle{评阅时，请参照以下几个方面提出意见}%
  \Hinttext{%
    \begin{enumerate}
    \item 论文选题是否恰当，有何意义；
    \item 论文结构是否完整，写作是否认真，文字是否通顺；
    \item 对论文质量的评价（设计、结果、方法、创新性等）；
    \item 存在的主要问题；
    \item 建议。
    \end{enumerate}}%
  \Commenterlabel{评阅人（签名）：}%
  \Commentslabel{评\hspace{1ex}语：}%
  \Marklabel{评分：\underline{\makebox[2.5em]{\SWFCField@Studmark{}}}\hfill}}

\DeclareOption{S}{ % S - Student
  \Formsubtitle{答辩申请表}%
  \Hinttitle{指导教师评审意见主要包含以下几个方面}%
  \Hinttext{%
    \begin{enumerate}
    \item 论文格式是否完整；
    \item 是否同意答辩；
    \item 存在的主要问题；
    \item 其他；
    \item 建议。
    \end{enumerate}}%
  \Commenterlabel{申请人（签名）：}%
  \Commentslabel{指导教师评审意见：}%
  \Marklabel{}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\ExecuteOptions{C} % default to C

% defaults
%\Univ{西南林业大学}
%\Formtitle{本科毕业（设计）论文}
\Signature{\hspace{4em}}
\Prjtitle{}
\Studclass{}
\Studid{}
\Studname{}
\Advisorname{王晓林}
\Advisortitle{讲师}

\Comments{
  \begin{enumerate}
  \item ?
  \item ?
  \item ?
  \item ?
  \item ?
  \end{enumerate}
}

