% 西南林业大学毕业论文（设计）任务书
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgtaskspec}

\LoadClass[a4paper,12pt]{article}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{tabu,longtable}
\RequirePackage{graphicx}
\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=2cm,bottom=1cm,
left=2cm,right=2cm
]{geometry}

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}
\RequirePackage{wx672bib}

\RequirePackage{xcolor}
\RequirePackage{wx672hyperref}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Prjtitle}[1]{\gdef\SWFCField@Prjtitle{#1}} % 论文标题
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 指导教师签名
\newcommand{\StudSignature}[1]{\gdef\SWFCField@StudSignature{#1}} % 指导教师签名
\newcommand{\Studname}[1]{\gdef\SWFCField@Studname{#1}} % 学生姓名
\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}} % 学生姓名
\newcommand{\Studclass}[1]{\gdef\SWFCField@Studclass{#1}} % 学生班级
\newcommand{\Prjwhy}[1]{\gdef\SWFCField@Prjwhy{#1}} % 选题的目的及意义
\newcommand{\Prjwhat}[1]{\gdef\SWFCField@Prjwhat{#1}} % 学生任务及要求
\newcommand{\Prjwhen}[1]{\gdef\SWFCField@Prjwhen{#1}} % 进度安排
\newcommand{\Prjbib}[1]{\gdef\SWFCField@Prjbib{#1}} % 参考文献
\newcommand{\Gyear}[1]{\gdef\SWFCField@Gyear{#1}} % 毕业年份
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}} % 填表年、月、日
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\hei\large 西南林业大学\SWFCField@Gyear{}届毕业论文（设计）任务书}\\[3ex]
    \tabulinesep=3pt
    \begin{tabu}{|X[c,m,-1]|X[c]|}
      \tabucline-
      \textbf{论文（设计）}\par{}\textbf{题目}&\SWFCField@Prjtitle\\\tabucline-
    \end{tabu}\vspace{-1pt}
    \begin{tabu}{|c|X[c]|c|X[c]|c|X[c]|}
      \textbf{学生姓名}&\SWFCField@Studname&
      \textbf{学号}&\SWFCField@Studid&
      \textbf{专业班级}&\SWFCField@Studclass\\\tabucline-
    \end{tabu}\vspace{-1pt}
    \begin{tabu}{|c|X[m]|c|X[c,m]|}
      \textbf{题目来源}&\tabulinesep=0pt
      \begin{tabu}{@{}X@{}}
        $\Box{}$科研\quad{}$\Box$社会实践\\
        $\Box{}$大学生创新创业项目\\
        {\large \Checkedbox{}}其它
      \end{tabu}&
      \textbf{题目类别}&$\Box{}$论文\qquad{\large \Checkedbox{}}设计\\
    \end{tabu}\vspace{-2.4ex}
    \begin{longtabu}{|p{1em}|X|}\tabucline-\endhead
      \vspace{10ex}
      \textbf{选题的目的及意义}\par\vspace{10ex}&\vspace{1ex}\SWFCField@Prjwhy\\\tabucline-
      \vspace{10ex}
      \textbf{学生任务及要求}\par\vspace{10ex}&\vspace{1ex}\SWFCField@Prjwhat\\\tabucline-
      \vspace{10ex}
      \textbf{进度安排}\par\vspace{10ex}&\SWFCField@Prjwhen\\\tabucline-
      \vspace{10ex}
      \textbf{参考文献}\par\vspace{10ex}&\SWFCField@Prjbib\\\tabucline-
    \end{longtabu}\vspace{-2.4ex}
    \tabulinesep=3pt
    \begin{tabu}{|X[c,-1]|X|X[c,-1]|X|}
      \textbf{任务下达}\par\textbf{日期}&&
      \textbf{学生应送交毕业}\par\textbf{论文（设计）日期}&\\\tabucline-
    \end{tabu}\vspace{-1pt}\tabulinesep=2pt
    \begin{tabu}{|X[-1,c]|X|X[-1,c]|X|}
      \textbf{指导教师}\par\textbf{签字}&
      \begin{minipage}{1.0\linewidth}
        % \vspace{4em}
        \makebox[7em][r]{\SWFCField@Signature{}}\par
        \hfill\SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{minipage}
      &\textbf{接受任务}\par\textbf{学生签字}&
      \begin{minipage}{1.0\linewidth}
        \vspace{4em}
        % \SWFCField@StudSignature{}
        \hfill\SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{minipage}\\\tabucline-
      \textbf{教研室}\par\textbf{审核}&
      \begin{minipage}{1.0\linewidth}
        \textbf{审核意见、签字：}
        \vspace{4em}
        \hfill\SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{minipage}
      &\textbf{学院（部）}\par\textbf{审核}&
      \begin{minipage}{1.0\linewidth}
        \textbf{审核意见、签章：}
        \vspace{4em}
        \hfill\SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{minipage}\\\tabucline-
    \end{tabu}}
  \noindent\tabulinesep=3pt
  \begin{tabu}{@{}X[-1]X[-1]X}
    注：
    &1.&此任务书由指导教师填写，各院（部）审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
    &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
  \end{tabu}}

\Signature{\sig{王晓林}}
\StudSignature{\hspace{4em}}
\Prjtitle{}
\Studclass{}
\Studname{}
\Gyear{\underline{\hspace{4em}}}
\Year{\underline{\hspace{4em}}}
\Month{\\hspace{2em}}
\Date{\\hspace{2em}}

\Prjwhy{ % 目的、意义
  \begin{itemize}
  \item
  \item 
  \end{itemize}
}  
\Prjwhat{ % 任务、要求
  \begin{itemize}
  \item
  \item 
  \end{itemize}
}

\Prjwhen{ % 进度、安排
  \begin{itemize}
  \item 
  \end{itemize}
}

\Prjbib{ % 参考文献
  \begin{itemize}
  \item 
  \end{itemize}
}