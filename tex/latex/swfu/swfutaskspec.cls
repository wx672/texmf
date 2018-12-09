% 西南林业大学毕业论文（设计）任务书
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfutaskspec}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{
  Prjtitle/.store in      = \SWFU@Prjtitle,      Prjtitle=,      % 论文标题        
  Signature/.store in     = \SWFU@Signature,     Signature=,     % 指导教师签名    
  StudSignature/.store in = \SWFU@StudSignature, StudSignature=, % 学生签名
  Studname/.store in      = \SWFU@Studname,      Studname=,      % 学生姓名        
  Studid/.store in        = \SWFU@Studid,        Studid=,        % 学生学号        
  Studclass/.store in     = \SWFU@Studclass,     Studclass=,     % 学生班级        
  Prjwhy/.store in        = \SWFU@Prjwhy,        Prjwhy=,        % 选题的目的及意义
  Prjwhat/.store in       = \SWFU@Prjwhat,       Prjwhat=,       % 学生任务及要求  
  Prjwhen/.store in       = \SWFU@Prjwhen,       Prjwhen=,       % 进度安排        
  Prjbib/.store in        = \SWFU@Prjbib,        Prjbib=,        % 参考文献        
  Gyear/.store in         = \SWFU@Gyear,         Gyear=,         % 毕业年份        
  Year/.store in          = \SWFU@Year,          Year=,          % 填表年、月、日  
  Month/.store in         = \SWFU@Month,         Month=,
  Date/.store in          = \SWFU@Date,          Date=,
}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabu,longtable}
\RequirePackage{graphicx}
\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=2cm,bottom=1cm,
left=2cm,right=2cm
]{geometry}

\RequirePackage{wx672bib}
\RequirePackage{wx672hyperref}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{\dejavu □}%ballot box
\newcommand\checked{\large\dejavu ☑} %🗹

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\heiti\large 西南林业大学\SWFU@Gyear{}届毕业论文（设计）任务书}\\[3ex]
    \tabulinesep=3pt
    \begin{tabu}{|X[c,m,-1]|X[c]|}
      \tabucline-
      \textbf{论文（设计）题目}&\SWFU@Prjtitle\\\tabucline-
    \end{tabu}\vspace{-1pt}
    \begin{tabu}{|c|X[c]|c|X[c]|c|X[c]|}
      \textbf{学生姓名}&\SWFU@Studname&
      \textbf{学号}&\SWFU@Studid&
      \textbf{专业班级}&\SWFU@Studclass\\\tabucline-
    \end{tabu}\vspace{-1pt}
    \begin{tabu}{|X[-1,m]|X|X[-1,m]|X[c]|}
      \textbf{题目来源}&\tabulinesep=0pt
      \begin{tabu}{@{}X@{}}
        \unchecked{}大学生创新创业项目\\
        \unchecked{}科研\quad\unchecked{}社会实践\quad{}{\large\checked}其它
      \end{tabu}&
      \textbf{题目类别}&\unchecked{}论文\qquad{\large\checked}设计\\
    \end{tabu}\vspace{-2.8ex}
    \begin{longtabu}{|p{1em}|X|}\tabucline-\endhead
      \vspace{10ex}
      \textbf{选题的目的及意义}\par\vspace{10ex}&\vspace{1ex}\SWFU@Prjwhy\\\tabucline-
      \vspace{10ex}
      \textbf{学生任务及要求}\par\vspace{10ex}&\vspace{1ex}\SWFU@Prjwhat\\\tabucline-
      \vspace{10ex}
      \textbf{进度安排}\par\vspace{10ex}&\SWFU@Prjwhen\\\tabucline-
      \vspace{10ex}
      \textbf{参考文献}\par\vspace{10ex}&\SWFU@Prjbib\\\tabucline-
    \end{longtabu}\vspace{-3ex}
    \tabulinesep=3pt
    \begin{tabu}{|X[c,-1]|X|X[c,-1]|X|}
      \textbf{任务下达}\par\textbf{日期}&&
      \textbf{学生应送交毕业}\par\textbf{论文（设计）日期}&\\\tabucline-
    \end{tabu}\vspace{-1pt}\tabulinesep=2pt
    \begin{tabu}{|X[-1,c]|X|X[-1,c]|X|}
      \textbf{指导教师}\par\textbf{签字}&
      \begin{minipage}{1.0\linewidth}
        % \vspace{4em}
        \makebox[7em][r]{\SWFU@Signature{}}\par
        \hfill\SWFU@Year{}\textbf{年}\SWFU@Month{}\textbf{月}\SWFU@Date{}\textbf{日}
      \end{minipage}
      &\textbf{接受任务}\par\textbf{学生签字}&
      \begin{minipage}{1.0\linewidth}
        \vspace{4em}
        % \SWFU@StudSignature{}
        \hfill\SWFU@Year{}\textbf{年}\SWFU@Month{}\textbf{月}\SWFU@Date{}\textbf{日}
      \end{minipage}\\\tabucline-
      \textbf{教研室}\par\textbf{审核}&
      \begin{minipage}{1.0\linewidth}
        \textbf{审核意见、签字：}\\[4em]\par
        \hfill\SWFU@Year{}\textbf{年}\SWFU@Month{}\textbf{月}\SWFU@Date{}\textbf{日}
      \end{minipage}
      &\textbf{学院（部）}\par\textbf{审核}&
      \begin{minipage}{1.0\linewidth}
        \textbf{审核意见、签章：}\\[4em]\par
        \hfill\SWFU@Year{}\textbf{年}\SWFU@Month{}\textbf{月}\SWFU@Date{}\textbf{日}
      \end{minipage}\\\tabucline-
    \end{tabu}}
  \noindent\tabulinesep=3pt
  \begin{tabu}{@{}X[-1]@{\quad}X[-1]@{\,}X@{}}
    注：
    &1.&此任务书由指导教师填写，各院（部）审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
    &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
  \end{tabu}}
