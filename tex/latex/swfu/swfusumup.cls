% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusumup}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Term/.store in   = \SWFU@Term,  %授课学期
  Course/.store in = \SWFU@Course,%课程名称
  Totalhours/.store in = \SWFU@Totalhours,%总学时
  Labhours/.store in   = \SWFU@Labhours,  %实验学时
  Labweek/.store in    = \SWFU@Labweek,   %实习天数
  Class/.store in     = \SWFU@Class,    %授课班级
  Studtotal/.store in = \SWFU@Studtotal,%学生人数
  Examtype/.store in  = \SWFU@Examtype,%
  Textbook/.store in  = \SWFU@Textbook,%
  Sumup/.store in     = \SWFU@Sumup,%
  Suggestion/.store in   = \SWFU@Suggestion,%
  Date/.store in         = \SWFU@Date, Date={\today},%
  School/.store in       = \SWFU@School,       School       = 大数据与智能工程学院,%
  TeacherName/.store in  = \SWFU@TeacherName,  TeacherName  = 王晓林,%
  TeacherTitle/.store in = \SWFU@TeacherTitle, TeacherTitle = 讲师,%
  Multimedia/.store in   = \SWFU@Multimedia,   Multimedia   = \YES,%
  Bilingual/.store in    = \SWFU@Bilingual,    Bilingual    = \YES,%
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%
\ProcessOptions\relax

\LoadClass{article}%

\RequirePackage{wx672babel}

\RequirePackage[backend=biber,url=false,doi=false,isbn=false]{biblatex}

\RequirePackage[%showframe,%
a4paper,nomarginpar,%
vmargin=2cm,%
hmargin=2.5cm,%
]{geometry}

\RequirePackage{wx672tcb}
\usetikzlibrary{backgrounds,positioning,fit}

\RequirePackage{newunicodechar}
\newfontfamily\symbola{Symbola Nerd Font}
\newunicodechar{☐}{{\symbola ☐}}%ballot box 🗆
\newunicodechar{☑}{{\symbola ☑}}%checked box tick 🗹
\newcommand{\YES}{☑是\quad ☐否}

\RequirePackage{tabularray}

\newcommand{\makeform}{
  {\centering%
    {\LARGE\heifamily 西南林业大学课程教学小结表}\\\bigskip%
    \begin{tblr}{colspec={cX[c]cX[-1,c]cc}, hlines, vlines,%
        rowsep={5pt},%
        column{even}={font=\kaifamily},%
        cell{1}{4}={c=3}{},cell{5}{2}={c=5}{l,m},%row{3}={m}, 
      }
      授课学期&\SWFU@Term&课程名称&\SWFU@Course\\
      \makebox[4em][s]{总学时}&\SWFU@Totalhours&%
      实验学时&\SWFU@Labhours&实习天数&\SWFU@Labweek\\
      开课院系&\SWFU@School&授课班级&{\SWFU@Class}&%
      学生人数&\SWFU@Studtotal\\
      多媒体教学&\SWFU@Multimedia&双语教学&\SWFU@Bilingual&%
      考核方式&\SWFU@Examtype\\
      所用教材&%
      \begin{minipage}{.8\linewidth}
        \SWFU@Textbook
      \end{minipage}\\
    \end{tblr}%\\[-1pt]
    \vspace*{-1.2pt}
    \begin{titleleft}{课程教学总结}
      \begin{minipage}[c][15em]{.9\linewidth}
        \SWFU@Sumup
      \end{minipage}
    \end{titleleft}
    \begin{titleleft}{今后改革设想}
      \begin{minipage}[c][12em]{.9\linewidth}
        \SWFU@Suggestion
      \end{minipage}
    \end{titleleft}
    \vspace*{1.2pt}
    \begin{tblr}{colspec={cX[c]cX[c]}, vlines, rowsep={5pt},%
        column{even}={font=\ttfamily}}
      填报人&\SWFU@TeacherName&职称&\SWFU@TeacherTitle\\
    \end{tblr}\\[-1pt]
    \begin{tblr}{colspec={X},vlines, hline{1,2,4}, rowsep={5pt}}
      填报日期：\quad{\ttfamily\SWFU@Date}\hfill{}（以上为授课教师填写）\\
      教研室负责人审阅意见：\\[15ex]%
      \hfill\makebox[5cm][l]{签名：}%
      \makebox[5cm][r]{年\qquad{}月\qquad{}日}\\
    \end{tblr}\\[1pt]
    注：本表复制有效}}

\setlength{\parindent}{2em}

\pagestyle{empty}
