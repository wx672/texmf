% The swfcproposal class is for producing senior year theses proposal (开题报告) that meet
% the SWFU requirements.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcproposal}%[TeX Live 2016/Debian SWFU Theses Proposal]

% pass unknown options to book
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aritcle}}
\ProcessOptions\relax

\LoadClass[a4paper,12pt,oneside]{article}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

\RequirePackage[top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
%showframe,showcrop,
]{geometry}

\RequirePackage{graphicx} % before xltxtra
\graphicspath{{./figs/}{../figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array}

\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}
\RequirePackage{wx672bib}

\RequirePackage{xcolor}
\RequirePackage{wx672hyperref}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

% \RequirePackage[many]{tcolorbox}
% \newtcolorbox{mainbodybox}[1]{breakable,sharp corners,
%   colback=white,colbacktitle=white,coltitle=black,
%   boxrule=.5pt,titlerule=0pt,bottom=2ex,
%   fonttitle=\bfseries,title=#1}

\RequirePackage{framed}

\setlength{\parindent}{2em}

\pagestyle{empty}

% Variables to hold the text fields for the preliminary pages
\newcommand{\Title}[1]{\gdef\SWFCField@Title{#1}}
\newcommand{\Titlext}[1]{\gdef\SWFCField@Titlext{#1}}
\newcommand{\Projfrom}[1]{\gdef\SWFCField@Projfrom{#1}}
\newcommand{\Author}[1]{\gdef\SWFCField@Author{#1}}
\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}}
\newcommand{\Docname}[1]{\gdef\SWFCField@Docname{#1}}
\newcommand{\Advisor}[1]{\gdef\SWFCField@Advisor{#1}}
\newcommand{\AdvisorSig}[1]{\gdef\SWFCField@AdvisorSig{#1}}
\newcommand{\AdvisorTitle}[1]{\gdef\SWFCField@AdvisorTitle{#1}}
\newcommand{\AdvisorGender}[1]{\gdef\SWFCField@AdvisorGender{#1}}
\newcommand{\AdvisorAge}[1]{\gdef\SWFCField@AdvisorAge{#1}}
\newcommand{\AdvisorDegree}[1]{\gdef\SWFCField@AdvisorDegree{#1}}
\newcommand{\AdvisorWhere}[1]{\gdef\SWFCField@AdvisorWhere{#1}}
\newcommand{\AdvisorComment}[1]{\gdef\SWFCField@AdvisorComment{#1}}
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}
\newcommand{\Univ}[1]{\gdef\SWFCField@Univ{#1}}
\newcommand{\Subject}[1]{\gdef\SWFCField@Subject{#1}}
\newcommand{\Grade}[1]{\gdef\SWFCField@Grade{#1}}
\newcommand{\Partone}[1]{\gdef\SWFCField@Partone{#1}}
\newcommand{\Parttwo}[1]{\gdef\SWFCField@Parttwo{#1}}
\newcommand{\Partthree}[1]{\gdef\SWFCField@Partthree{#1}}
\newcommand{\Partfour}[1]{\gdef\SWFCField@Partfour{#1}}
\newcommand{\Partfive}[1]{\gdef\SWFCField@Partfive{#1}}
\newcommand{\Partsix}[1]{\gdef\SWFCField@Partsix{#1}}

\newcommand{\SWFCtitlepage}{% Title page layout
  \thispagestyle{empty}
  \begin{center}
    % \makebox[14.7em][s]{{\Large\textbf{\SWFCField@Univ}}}\\[5mm]
    % \makebox[20em][s]{\Large\textbf{\SWFCField@Docname}}\\[5mm]
    \makebox[14.7em][s]{\Large\hei 西南林业大学}\\[5mm]
    \makebox[20em][s]{\Large\hei 本科毕业论文（设计）开题报告}\\[5mm]
    \vskip 2cm
    \begin{large}
    \begin{minipage}{1.0\linewidth}
        \extrarowsep=^8mm_-7pt
        \begin{tabu}spread\textwidth{@{}rX[c]@{}}
          论\,文\,题\,目：&\SWFCField@Title\\\tabucline{2-2}
          &\SWFCField@Titlext\\\tabucline{2-2}
        \end{tabu}
    \end{minipage}
    \vskip 1cm
    \begin{minipage}{.8\linewidth}
        \begin{center}
        \extrarowsep=^8mm_-7pt
        \begin{tabu}spread\textwidth{@{}rX[c]@{}}
%       \begin{tabu}spread\textwidth{@{}X[j]X[c]@{}}
          专\hspace{1em}业\hspace{1em}名\hspace{1em}称：&\SWFCField@Subject\\\tabucline{2-2}
          年\hspace{5em}级：&\SWFCField@Grade\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}学\hspace{1em}号：&\SWFCField@Studid\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}姓\hspace{1em}名：&\SWFCField@Author\\\tabucline{2-2}
          指导教师（职称）：&\SWFCField@Advisor{}（\SWFCField@AdvisorTitle）
          \\\tabucline{2-2}
          &\\\tabucline{2-2}
          填\hspace{1em}表\hspace{1em}时\hspace{1em}间：&\SWFCField@Year\ 年\ \SWFCField@Month\ 月\ \SWFCField@Date\ 日\\\tabucline{2-2}
        \end{tabu}
        \end{center}
    \end{minipage}
  \end{large}
    \vfill
    {\Large\textbf{教\,务\,处\,制}}\\[1cm]
  \end{center}
  \clearpage
}

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
  \clearpage
}

\newcommand{\tablebody}{% main part
  \singlespacing\noindent
  \extrarowsep=_8pt^8pt
  \begin{tabu}{|X[.1,c,m]|@{}X[1.5,m]@{}|}\tabucline-
    指导教师基本情况&
    \begin{tabu}{c|X[.1,c,m]|X[.1,c,m]|X[.25,c,m]|X[.35,c,m]|c}
      指导教师姓名&性别&年龄&学历或\par 学位&专业技术\par 职务或职称&工作单位\\[2pt]\tabucline-
      \SWFCField@Advisor&\SWFCField@AdvisorGender&\SWFCField@AdvisorAge&
      \SWFCField@AdvisorDegree&\SWFCField@AdvisorTitle&\SWFCField@AdvisorWhere\\\tabucline-
      &&&&&\\
    \end{tabu}\\\tabucline-
    课题来源&\quad 1. 导师课题的一部分；2. 其他（须具体说明）
    \underline{\quad\SWFCField@Projfrom\quad}。\\%\tabucline-
  \end{tabu}
  % \vspace{-.9em}
  % \begin{framed}
  %   \noindent{}1.\, 该研究的目的、意义\par\vspace{2ex} 
  %   \SWFCField@Partone
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}2.\, 国内外研究现状及发展趋势\par\vspace{2ex}
  %   \SWFCField@Parttwo
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}3.\, 主要参考文献
  %   \SWFCField@Partthree
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}4.\, 该研究的主要内容，重点解决的问题，预期结果或成果\par\vspace{2ex}
  %   \SWFCField@Partfour
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}5.\, 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法\par\vspace{2ex}
  %   \SWFCField@Partfive
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}6.\, 完成该研究已具备的条件\par\vspace{2ex}
  %   \SWFCField@Partsix
  % \end{framed}
  % \vspace{-2.4em}
  % \begin{framed}
  %   \noindent{}指导教师意见\par\vspace{2ex}
  %   \hspace{3em}{\Large\SWFCField@AdvisorComment}\par
  %   \hfill{}签名：\makebox[7em]{\SWFCField@AdvisorSig}\par\vspace{2ex}
  %   \hfill%
  %   \makebox[4em]{\SWFCField@Year{}}年
  %   \makebox[2em]{\SWFCField@Month{}}月
  %   \makebox[2em]{\SWFCField@Date{}}日
  % \end{framed}
  \vspace{-2.4ex}
  \tabulinesep=_1ex
  \begin{longtabu}{|r@{\ }X|}\tabucline-\endhead
    1.& 该研究的目的、意义\par\vskip 1ex\SWFCField@Partone\\\tabucline-
    2.& 国内外研究现状及发展趋势\par\vskip 1ex\SWFCField@Parttwo\\\tabucline-
    3.& 主要参考文献\par\vskip 1ex\SWFCField@Partthree\\\tabucline-
    4.& 该研究的主要内容，重点解决的问题，预期结果或成果\par\vskip 1ex\SWFCField@Partfour\\\tabucline-
    5.& 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法\par\vskip 1ex
    \SWFCField@Partfive\\\tabucline-
    6.& 完成该研究已具备的条件\par\vskip 1ex\SWFCField@Partsix\\\tabucline-
    &指导教师意见\\[2ex]
    &\hspace{3em}{\Large\SWFCField@AdvisorComment}\\[-1ex]
    &\hfill 签名：\makebox[7em]{\SWFCField@AdvisorSig}\\
    &\hfill\SWFCField@Year 年 \SWFCField@Month 月 \SWFCField@Date 日\\\tabucline-
  \end{longtabu}
  \vspace{-2.4ex}
  \extrarowsep=_17pt
  \noindent
  \begin{tabu}{|p{1em}|X[15]|p{1em}|X[15]|}
    教研室意见&
    \begin{tabu}{l}\\[2ex]      
      教研室负责人：\\[-2ex]
      时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\[-3ex]
    \end{tabu}
    &教学院系部意见&
    \begin{tabu}{l}\\[2ex]
      教学院系部负责人：\\[-2ex]
      时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\[-3ex]
    \end{tabu}\\\tabucline-    
  \end{tabu}}

\newcommand{\makeproposal}{% preliminary pages
  \SWFCtitlepage
  \doublespacing % global line spacing
  \instructionpage
  \tablebody
}

% Initialize the variables to their default values
\Title{开题报告\LaTeX{}模板的制作}
\Titlext{}
\Projfrom{自选}
\Author{王晓林}
\Grade{2011级}
\Studid{20111156888}
\Docname{本科毕业论文（设计）开题报告}
\Advisor{我自己}
\AdvisorSig{\LARGE\sig{王晓林}}
\AdvisorTitle{讲师}
\AdvisorAge{48}
\AdvisorGender{男}
\AdvisorDegree{硕士}
\AdvisorWhere{计算机与信息学院}
\AdvisorComment{同意开题。}

\Date{8}
\Month{11}
\Year{2014}
\Univ{西南林业大学}
\Subject{计算机科学与技术（网络信息工程）}

\Partone{% 1. 该研究的目的、意义
  深入理解操作系统原理，对课本上的一些难以琢磨的概念进行实践，为以后做有关操作系统的
  研究打下扎实的基础。
}
\Parttwo{% 2. 国内外研究现状及发展趋势
  操作系统是管理计算机硬件与软件资源的计算机程序，同时也是计算机系统的核心与基石。
  操作系统主要处理内存管理与配置，决定系统资源供需的优先次序，控制输入输出设备，操作网络与
  管理文件系统等基本事务。此外，操作系统还能协调好各任务使之能正确，有序地执行。操作系统实
  现了系统，应用软件和用户之间交流的一个接口。
  
  操作系统是计算机系统中最核心最底层的软件，对操作系统的学习关系到对整个系统的运作机制的全面
  理解，一方面能够学系操作系统的经典内容，另一方面又能够了解和跟踪最前沿的新技术和研究成果。
}

%
\Partthree{% 3. 主要参考文献
  For example:
  
  \texttt{\textbackslash{}addbibresource\{os.bib\}}
  
  \texttt{\textbackslash{}nocite\{wangshuang03,yuyuan2009orange,}

  \hspace{4em}\texttt{intel86,zouhengming09,mos,tanenbaum2008modern\}}
  
  \texttt{\textbackslash{}printbibliography[heading=none]\{\}}
}
\Partfour{% 4. 该研究的主要内容，重点解决的问题，预期结果或成果
  本实验通过对操作系统的简单研究和探索，了解操作系统的原理和实现过程。通过了解操作系统的基本
  概念，包括系统的启动、进程及进程间通信、消息传递、调度算法、输入/输出、设备驱动程序、死锁、
  存储器管理、页面调度算法、文件系统设计、安全机制等。另外，对相应的硬件设备也进行了一些简单
  的了解。在此基础上，立足实践，开发出一个简单的操作系统，用以理解由启动到运行，并执行用户输
  入命令的过程。通过探究操作系统开发的细节问题，更深刻的理解操作系统的核心原理。
}
\Partfive{% 5. 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法
  主要参考《OrangeS：一个操作系统的实现》和《30天自制操作系统》一步步学习，立足实践，
  开发出一个简单的操作系统。
}
\Partsix{% 6. 完成该研究已具备的条件
  \begin{itemize}
  \item 对操作系统概念的了解
  \item C与汇编的编程基础
  \item 硬件条件已具备
  \end{itemize}
}
