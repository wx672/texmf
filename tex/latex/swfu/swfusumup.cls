% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcsumup}


\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys,etoolbox,calc}

\pgfkeys{
  Term/.store in         = \SWFU@Term,         Term         =, 
  Coursetitle/.store in  = \SWFU@Coursetitle,  Coursetitle  =, 
  Totaltime/.store in    = \SWFU@Totaltime,    Totaltime    =, 
  Labtime/.store in      = \SWFU@Labtime,      Labtime      =, 
  Practicetime/.store in = \SWFU@Practicetime, Practicetime =, 
  Class/.store in        = \SWFU@Class,        Class        =, 
  Studnum/.store in      = \SWFU@Studnum,      Studnum      =, 
  Examtype/.store in     = \SWFU@Examtype,     Examtype     =, 
  Textbook/.store in     = \SWFU@Textbook,     Textbook     =, 
  Publishtime/.store in  = \SWFU@Publishtime,  Publishtime  =, 
  Sumup/.store in        = \SWFU@Sumup,        Sumup        =, 
  Suggestion/.store in   = \SWFU@Suggestion,   Suggestion   =, 
  Date/.store in         = \SWFU@Date,         Date         =, 
  School/.store in       = \SWFU@School,       School/.default       = 大数据与智能工程学院, 
  TeacherName/.store in  = \SWFU@TeacherName,  TeacherName/.default  = 王晓林, 
  TeacherTitle/.store in = \SWFU@TeacherTitle, TeacherTitle/.default = 讲师, 
  Multimedia/.store in   = \SWFU@Multimedia,   Multimedia/.default   = \YES, 
  Bilingual/.store in    = \SWFU@Bilingual,    Bilingual/.default    = \YES, 
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabu,array}
\RequirePackage{graphicx}

\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}

\newcommand{\Signit}[3]{%\Signit{-3cm}{-6.2cm}{../signature}
\begin{tikzpicture}[overlay,remember picture]%
  \node [xshift=#1,yshift=#2] at (current page.center) {%
    \includegraphics[scale=.1]{#3}%
  };%
\end{tikzpicture}}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{\dejavu □}%ballot box
\newcommand\checked{\large\dejavu ☑} %🗹

\newcommand{\YES}{{\Large\checked}是\quad\unchecked{}否}
\newcommand{\NO}{\unchecked{}是\quad{\Large\checked}否}

\newcommand{\makeform}{
  {\centering
    {\LARGE\heiti 西南林业大学课程教学小结表}\\[2ex]
    \tabulinesep=2mm
    \begin{tabu}{|c|c|c|c|c|X[c]|}
      \tabucline-
      授课学期&\SWFU@Term{}&课程名称&\multicolumn{3}{c|}{\SWFU@Coursetitle{}}\\\tabucline-
      总\hspace{.5em}学\hspace{.5em}时&\SWFU@Totaltime{}&实验学时&\SWFU@Labtime{}&
      实习天数&\SWFU@Practicetime{}{\kaishu 周}\\\tabucline-
      开课院系&\SWFU@School{}&授课班级&\SWFU@Class{}&
      学生人数&\SWFU@Studnum{}{\kaishu 人}\\\tabucline-
      多媒体教学&\SWFU@Multimedia{}&双语教学&\SWFU@Bilingual{}&
      考核方式&\SWFU@Examtype{}\\\tabucline-
      所用教材&\multicolumn{3}{c|}{\SWFU@Textbook{}}&
      出版时间&\SWFU@Publishtime{}\\\tabucline-
    \end{tabu}
    \vspace{-1pt} \tabulinesep=0pt
    \begin{tabu}{|X[.1,c]|X|}
      课程\par\vspace{4ex}教学\par\vspace{4ex}总结\par\vspace{1cm}&
      \begin{minipage}{\columnwidth}
        \vspace*{3ex}
        \SWFU@Sumup{}
      \end{minipage}\\\tabucline-%
      \vspace{1cm}今后\par\vspace{4ex}改革\par\vspace{4ex}设想\par\vspace{3cm}&
      \begin{minipage}{.7\columnwidth}
        \vspace{3ex}
        \SWFU@Suggestion{}
      \end{minipage}\\\tabucline-
      填报人&\tabulinesep=2mm
      \begin{tabu}{X[c]|c|X[c]}%
        \SWFU@TeacherName{}&职称&\SWFU@TeacherTitle{}\\
      \end{tabu}\\\tabucline-
    \end{tabu}
    \vspace{-1pt} \tabulinesep=2mm
    \begin{tabu}{|X|}
      填报日期：\quad\SWFU@Date\hfill{}（以上为授课教师填写）\\\tabucline-
      教研室负责人审阅意见：\\[5ex]
      \hfill{}\makebox[10em][l]{签名：}
      \makebox[5em][r]{年}\makebox[3em][r]{月}\makebox[3em][r]{日}\\\tabucline-
    \end{tabu}
    注：本表复制有效}}

\setlength{\parindent}{2em}

\pagestyle{empty}