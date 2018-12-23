% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusumup}


\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{
  Term/.store in         = \SWFU@Term,%
  Coursetitle/.store in  = \SWFU@Coursetitle,%
  Totaltime/.store in    = \SWFU@Totaltime,%
  Labtime/.store in      = \SWFU@Labtime,%
  Practicetime/.store in = \SWFU@Practicetime,%
  Class/.store in        = \SWFU@Class,%
  Studnum/.store in      = \SWFU@Studnum,%
  Examtype/.store in     = \SWFU@Examtype,%
  Textbook/.store in     = \SWFU@Textbook,%
  % Publishtime/.store in  = \SWFU@Publishtime,%
  Sumup/.store in        = \SWFU@Sumup,%
  Suggestion/.store in   = \SWFU@Suggestion,%
  Date/.store in         = \SWFU@Date,%
  School/.store in       = \SWFU@School,       School       = 大数据与智能工程学院,%
  TeacherName/.store in  = \SWFU@TeacherName,  TeacherName  = 王晓林,%
  TeacherTitle/.store in = \SWFU@TeacherTitle, TeacherTitle = 讲师,%
  Multimedia/.store in   = \SWFU@Multimedia,   Multimedia   = \YES,%
  Bilingual/.store in    = \SWFU@Bilingual,    Bilingual    = \YES,%
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage[backend=biber,style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,url=false,doi=false,isbn=false]{biblatex}
\renewcommand*{\bibfont}{\scriptsize}

\RequirePackage{tabu,array}
\RequirePackage{graphicx}

\RequirePackage[%showframe,
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
  {\centering%
    {\LARGE\heiti 西南林业大学课程教学小结表}\\[2ex]%
    \tabulinesep=2mm%
    \begin{tabu}{|c|X[c]|c|c|c|c|}%
      \tabucline-%
      授课学期&\SWFU@Term{}&课程名称&\multicolumn{3}{c|}{{\kaishu \SWFU@Coursetitle}}\\\tabucline-%
      总\hspace{.5em}学\hspace{.5em}时&\SWFU@Totaltime&实验学时&\SWFU@Labtime&%
      实习天数&\SWFU@Practicetime\\\tabucline-%
      开课院系&{\kaishu \SWFU@School}&授课班级&{\kaishu \SWFU@Class}&%
      学生人数&\SWFU@Studnum\\\tabucline-%
      多媒体教学&{\kaishu \SWFU@Multimedia}&双语教学&{\kaishu \SWFU@Bilingual}&%
      考核方式&{\kaishu \SWFU@Examtype}\\\tabucline-%
      所用教材&\multicolumn{5}{l|}{\,\SWFU@Textbook}\\\tabucline-%
    \end{tabu}%
    \vspace{-1pt}%
    \begin{tabu}{|p{1em}|X[m]|}%X[.1,c]
      % 课程\par\vspace{4ex}教学\par\vspace{4ex}总结\par&%
      \begin{minipage}{1em}
        \vspace{2em}课\par\vspace{1ex}程\par\vspace{1ex}教\par\vspace{1ex}
        学\par\vspace{1ex}总\par\vspace{1ex}结\vspace{2em}
      \end{minipage}&%
      \begin{minipage}{\columnwidth}%
        {\kaishu \SWFU@Sumup}%
      \end{minipage}\\\tabucline-%
      % \vspace{1cm}今后\par\vspace{4ex}改革\par\vspace{4ex}设想\par\vspace{3cm}&%
      \begin{minipage}{1em}
        \vspace{2em}今\par\vspace{1ex}后\par\vspace{1ex}改\par\vspace{1ex}
        革\par\vspace{1ex}设\par\vspace{1ex}想\vspace{2em}
      \end{minipage}&%
      \begin{minipage}{.8\columnwidth}%
        {\kaishu \SWFU@Suggestion}%
      \end{minipage}\\\tabucline-%
    \end{tabu}%
    \vspace{-1pt}%
    \tabulinesep=2mm%
    \begin{tabu}{|c|X[c]|c|X[c]|}%
      填报人&{\kaishu \SWFU@TeacherName}&职称&{\kaishu \SWFU@TeacherTitle}\\\tabucline-%
    \end{tabu}
    \vspace{-1pt}%
    \begin{tabu}{|X|}%
      填报日期：\quad\SWFU@Date\hfill{}（以上为授课教师填写）\\\tabucline-%
      教研室负责人审阅意见：\\[5ex]%
      \hfill{}\makebox[10em][l]{签名：}%
      \makebox[5em][r]{年}\makebox[3em][r]{月}\makebox[3em][r]{日}\\\tabucline-%
    \end{tabu}%
    注：本表复制有效}}

\setlength{\parindent}{2em}

\pagestyle{empty}