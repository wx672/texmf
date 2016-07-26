% The swfcthesis class is for producing senior year theses proposal
% that meet the SWFU requirements.
\ProvidesClass{swfcproposal}[2016/07/25 SWFU Theses Proposal]
\NeedsTeXFormat{LaTeX2e}

% \DeclareOption{noacknowlegments}{% Allow opt-out on acknowledgments
%   \renewcommand{\acknowledgmentspage}{}
% }

% pass unknown options to book
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aritcle}}
\ProcessOptions\relax

\LoadClass[a4paper,12pt,oneside]{article}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

%\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage[top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
%showframe,showcrop,
]{geometry}

\RequirePackage[xetex]{graphicx} % before xltxtra
\graphicspath{{./figs/}{../figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array}

\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage[backend=biber,url=false,hyperref=true,
    doi=false,isbn=false]{biblatex}

% before xunicode!
\RequirePackage{amsmath,amsfonts,amssymb,latexsym,marvosym,pifont}
\RequirePackage[tt=false]{libertine} % keyboard symbol

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage[CJKmath=true,AutoFakeSlant=true]{xeCJK} % slant header

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}
\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKmonofont{Noto Sans Mono CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}
\newCJKfontfamily\quotefont{Adobt Kaiti Std}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt

\pagestyle{empty}

% not used. use \makebox instead.
\newcommand{\ziju}[1]{\renewcommand{\CJKglue}{\hskip #1}}

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
    \makebox[14.7em][s]{{\Large\textbf{\SWFCField@Univ}}}\\[5mm]
    \makebox[20em][s]{\Large\textbf{\SWFCField@Docname}}\\[5mm]
    \vskip 2cm
    \begin{large}
    \begin{minipage}{1.0\linewidth}
        \extrarowsep=^8mm
        \extrarowsep=_-7pt
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
          专\hspace{1em}业\hspace{1em}名\hspace{1em}称：&\SWFCField@Subject\\\tabucline{2-2}
          年\hspace{5em}级：&\SWFCField@Grade\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}学\hspace{1em}号：&\SWFCField@Studid\\\tabucline{2-2}
          学\hspace{1em}生\hspace{1em}姓\hspace{1em}名：&\SWFCField@Author\\\tabucline{2-2}
          指导教师(职称)：&\SWFCField@Advisor{}（\SWFCField@AdvisorTitle）
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
  \begin{tabu}{|X[.1,c,m]|@{}X[1.5,m]@{}|}
    \tabucline-
    指导\par 教师\par 基本\par 情况&
    \begin{tabu}{c|X[.1,c,m]|X[.1,c,m]|X[.25,c,m]|X[.35,c,m]|c}
      指导教师姓名&性\par 别&年\par 龄&学历或\par 学位&专业技术\par 职务或职称&工作单位\\\tabucline-
      \SWFCField@Advisor&\SWFCField@AdvisorGender&\SWFCField@AdvisorAge&
      \SWFCField@AdvisorDegree&\SWFCField@AdvisorTitle&\SWFCField@AdvisorWhere\\\tabucline-
      &&&&&\\
    \end{tabu}\\\tabucline-
    课题\par 来源&\ 1. 导师课题的一部分；2. 其他（须具体说明）
    \underline{\,\SWFCField@Projfrom\,}。\\\tabucline-
  \end{tabu}
  \vskip -12pt
  \begin{longtabu}{|X|}
    1. 该研究的目的、意义\par \SWFCField@Partone\\\tabucline-
    2. 国内外研究现状及发展趋势\par \SWFCField@Parttwo\\\tabucline-
    3. 主要参考文献\par \SWFCField@Partthree\\\tabucline-
    4. 该研究的主要内容，重点解决的问题，预期结果或成果\par
    \SWFCField@Partfour\\\tabucline-
    5. 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法\par
    \SWFCField@Partfive\\\tabucline-
    6. 完成该研究已具备的条件\par \SWFCField@Partsix\\\tabucline-
    指导教师意见\\[2ex]
    \hspace{3em}{\Large \SWFCField@AdvisorComment}\\[-1ex]
    \hfill 签名：\makebox[7em][s]{\SWFCField@AdvisorSig}\\
    \hfill\SWFCField@Year 年 \SWFCField@Month 月 \SWFCField@Date 日\\\tabucline-
  \end{longtabu}
  \vskip -13pt
  \extrarowsep=_17pt
  \noindent
  \begin{tabu}{|X[c]|X[15]|X[c]|X[15]|}
    教\par 研\par 室\par 意\par 见&
    \begin{tabu}{l}
      \\[2ex]
      教研室负责人：\\[-2ex]
      时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\[-3ex]
    \end{tabu}
    &教\par 学\par 院\par 系\par 部\par 意\par 见&
    \begin{tabu}{l}
      \\[2ex]
      教学院系部负责人：\\[-2ex]
      时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\[-3ex]
    \end{tabu}\\\tabucline-    
  \end{tabu}
}

\newcommand{\maketitlepage}{% preliminary pages
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
\AdvisorSig{}
\AdvisorTitle{讲师}
\AdvisorAge{46}
\AdvisorGender{男}
\AdvisorDegree{硕士}
\AdvisorWhere{计算机与信息学院}
\AdvisorComment{同意开题。}

\Date{8}
\Month{11}
\Year{2014}
\Univ{西南林业大学}
\Subject{计算机科学与技术（网络信息工程）}

\Partone{
  \begin{itemize}
  \item 
  \item 
  \item
  \item 
  \item 
  \item 
  \item
  \item 
  \end{itemize}
}
\Parttwo{  \begin{itemize}
  \item 
  \item 
  \item 
  \item 
  \item 
  \item 
  \item 
  \item 
  \end{itemize}
}
\Partthree{  \begin{itemize}
  \item 
  \item 
  \item 
  \item 
  \end{itemize}
}
\Partfour{  \begin{itemize}
  \item 
  \item 
  \item 
  \item 
  \end{itemize}
}
\Partfive{  \begin{itemize}
  \item 
  \item 
  \item 
  \item 
  \end{itemize}
}
\Partsix{  \begin{itemize}
  \item 
  \item 
  \item 
  \item 
  \end{itemize}
}