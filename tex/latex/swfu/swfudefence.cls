% Obsolete! Use swfucomments.cls instead.
% 西南林业大学本科毕业（设计）论文答辩申请表、评阅意见表、指导教师意见表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfudefence}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys,etoolbox,calc}

\pgfkeys{%
  Prjtitle/.store in  = \SWFU@Prjtitle,       % 论文标题
  Studid/.store in    = \SWFU@Studid,         % 学号
  Studname/.store in  = \SWFU@Studname,       % 学生姓名
  Studsbj/.store in   = \SWFU@Studsbj,        % 学生专业
  Studclass/.store in = \SWFU@Studclass,      % 学生班级
  Advisor/.store in   = \SWFU@Advisor, Advisor = 王晓林（讲师）,% 指导教师
  Signature/.store in = \SWFU@Signature,      % 教师签名
  Comments/.store in  = \SWFU@Comments,       % 意见正文
  Comments = {%
    \begin{enumerate}%
    \item 论文格式完整；%
    \item 同意答辩。%
    \end{enumerate}}
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabularx}
\newcolumntype{C}{>{\centering\arraybackslash}X}

\RequirePackage{graphicx}

%\newfontfamily\purisa{Purisa}

\RequirePackage[%showframe,nomarginpar,
paperwidth=195mm,paperheight=270mm,
top=3cm,bottom=2cm,
left=2.5cm,right=2.5cm,
]{geometry}

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    {\Large\heiti 西南林业大学本（专）科毕业论文（设计）答辩申请表}
  \end{center}
  \vspace*{3em}
  \begin{tabularx}{\textwidth}{rC}
    论文（设计）题目：& \makebox[0pt][t]{% wrapable long title
      \begin{minipage}[t]{30em}
        \centering\parbox[t]{29em}{\centering\kaishu\SWFU@Prjtitle}
      \end{minipage}}%
    \rule[-1ex]{30em}{.1pt}\par%
    \rule[-1.5ex]{30em}{.1pt}\\
  \end{tabularx}

  \vspace{5ex}
    
  \begin{tabularx}{.8\textwidth}{r>{\kaishu}Cr>{\kaishu}C}
    学号：&\SWFU@Studid&姓名：&\SWFU@Studname\\\cline{2-2}\cline{4-4}
    &&&\\
    专业：&\SWFU@Studsbj&班级：&\SWFU@Studclass\\\cline{2-2}\cline{4-4}
    &&&\\
    指导教师（职称）：&\kaishu\SWFU@Advisor&&\\\cline{2-2}
  \end{tabularx}
  
  \vspace{5em}
  
  \noindent{}指导教师评审意见：\par
  {\kaishu\SWFU@Comments}\par
  \hspace{10em}\makebox[5em]{\SWFU@Signature}\par
  \vfill
  申请人（签名）：\underline{\hspace{5em}}\qquad{}%
  日期： \hspace{4em}年\hspace{2em}月\hspace{2em}日
}
