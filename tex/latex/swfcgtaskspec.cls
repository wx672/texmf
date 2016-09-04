\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgtaskspec}%[TeX Live 2016/Debian SWFU graduation task specification]

\LoadClass[a4paper,12pt]{article}

%\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{graphicx}
\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=2cm,bottom=1cm,
left=2cm,right=2cm
]{geometry}

\RequirePackage{marvosym,amssymb}
\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage{xeCJK}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont{Noto Sans CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}

\RequirePackage[backend=biber,url=false,hyperref=false,
    doi=false,isbn=false]{biblatex}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Univ}[1]{\gdef\SWFCField@Univ{#1}} % 西南林业大学
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
\newcommand{\Gyear}[1]{\gdef\SWFCField@Gyear{#1}}
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}

\newcommand{\makeform}{
  \pagestyle{empty}
  {\centering
    {\bfseries\large\SWFCField@Univ\SWFCField@Gyear{}届毕业论文（设计）任务书}\\[3ex]
    \tabulinesep=3pt
    \begin{tabu}{|X[c,m,-1]|X[c]|}
      \tabucline-
      \textbf{论文（设计）}\par{}\textbf{题目}&\SWFCField@Prjtitle{}\\\tabucline-
    \end{tabu}\vskip -1pt
    \begin{tabu}{|c|X[c]|c|X[c]|c|X[c]|}
      \textbf{学生姓名}&\SWFCField@Studname{}&
      \textbf{学号}&\SWFCField@Studid{}&
      \textbf{专业班级}&\SWFCField@Studclass{}\\\tabucline-
    \end{tabu}\vskip -1pt
    \begin{tabu}{|c|X[m]|c|X[m]|}
      \textbf{题目来源}&\tabulinesep=0pt
      \begin{tabu}{@{}X@{}}
        $\Box{}$科研\quad{}$\Box$社会实践\\
        $\Box{}$大学生创新创业项目\\
        {\large \Checkedbox{}}其它
      \end{tabu}&
      \textbf{题目类别}&$\Box{}$论文\qquad{\large \Checkedbox{}}设计\\\tabucline-
    \end{tabu}\vskip -1pt
    \begin{tabu}{|X[c,-1]|X|}
      \vskip 10ex
      \textbf{选}\par{}\textbf{题}\par{}\textbf{的}\par{}\textbf{目}\par{}\textbf{的}\par{}
      \textbf{及}\par{}\textbf{意}\par{}\textbf{义}\vskip 10ex\,
      &\vskip 1ex\SWFCField@Prjwhy{}\\\tabucline-
      \vskip 10ex
      \textbf{学}\par{}\textbf{生}\par{}\textbf{任}\par{}\textbf{务}\par{}\textbf{及}\par{}
      \textbf{要}\par{}\textbf{求}\vskip 10ex\,
      &\vskip 1ex\SWFCField@Prjwhat{}\\\tabucline-
    \end{tabu}
  }
    \clearpage
    {\centering
      \begin{tabu}{|X[c,-1]|X|}
        \tabucline-
        \vskip 10ex\textbf{进}\par{}\textbf{度}\par{}\textbf{安}\par{}\textbf{排}\vskip 10ex\,
        &\SWFCField@Prjwhen{}\\\tabucline-
        \vskip 10ex\textbf{参}\par{}\textbf{考}\par{}\textbf{文}\par{}\textbf{献}\vskip10ex\,
        &\SWFCField@Prjbib{}\\\tabucline-
    \end{tabu}\vskip -1pt
    \tabulinesep=3pt
    \begin{tabu}{|X[c,-1]|X|X[c,-1]|X|}
      \textbf{任务下达}\par{}\textbf{日期}&&
      \textbf{学生应送交毕业}\par{}\textbf{论文（设计）日期}&\\\tabucline-
    \end{tabu}\vskip -1pt\tabulinesep=2pt
    \begin{tabu}{|X[-1,c]|X|X[-1,c]|X|}
      &\SWFCField@Signature{}&&\SWFCField@StudSignature{}\\[-5ex]
      \textbf{指导教师}\par{}\textbf{签字}&&\textbf{接受任务}\par{}\textbf{学生签字}&\\
      &\begin{tabu}{X[r]@{}}
        \SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}  
      \end{tabu}&&
      \begin{tabu}{X[r]@{}}
        \SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{tabu}\\\tabucline-
      &\textbf{审核意见、签字：}&&\textbf{审核意见、签章：}\\
      \textbf{教研室}\par{}\textbf{审核}&&
      \textbf{学院（部）}\par{}\textbf{审核：}&\\[3ex]
      &\begin{tabu}{X[r]@{}}
        \SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{tabu}&&
      \begin{tabu}{X[r]@{}}
        \SWFCField@Year{}\textbf{年}\SWFCField@Month{}\textbf{月}\SWFCField@Date{}\textbf{日}
      \end{tabu}\\\tabucline-
    \end{tabu}
  }
  \noindent\tabulinesep=3pt
  \begin{tabu}{@{}X[-1]X[-1]X}
    注：
    &1.&此任务书由指导教师填写，各院（部）审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
    &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
  \end{tabu}
}

\newfontfamily\MyEmoji{Symbola}
\newcommand\Symbol[1]{\MyEmoji #1}
\newcommand\good{\MyEmoji ☺}
\newcommand\bad{\MyEmoji ☹}
\newcommand\danger{\MyEmoji ☠}
\newcommand\pointright{\MyEmoji ☞}
\newcommand\checked{\MyEmoji ☑}
\newcommand\unchecked{\MyEmoji ☐}

\Univ{西南林业大学}
\Signature{\hspace{4em}}
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