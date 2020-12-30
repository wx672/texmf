% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusumup}

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

\LoadClass[scheme=chinese]{ctexart}

\RequirePackage[backend=biber,url=false,doi=false,isbn=false,
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false]{biblatex}
\renewcommand*{\bibfont}{\scriptsize}

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

\RequirePackage{tabularx,makecell}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\makeform}{
  {\centering%
    {\LARGE\heiti 西南林业大学课程教学小结表}\\[2ex]%
    \begin{tabularx}{\textwidth}{|c|>{\kaishu}C|c|>{\kaishu}c|c|>{\kaishu}c|}%
      \hline%
      授课学期&\texttt{\SWFU@Term}&课程名称&\multicolumn{3}{c|}{\kaishu\SWFU@Coursetitle}\\\hline%
      总\hspace{.5em}学\hspace{.5em}时&\texttt{\SWFU@Totaltime}&实验学时&\texttt{\SWFU@Labtime}&%
      实习天数&\texttt{\SWFU@Practicetime}\\\hline%
      开课院系&\SWFU@School&授课班级&\texttt{\SWFU@Class}&%
      学生人数&\texttt{\SWFU@Studnum}\\\hline%
      多媒体教学&\SWFU@Multimedia&双语教学&\SWFU@Bilingual&%
      考核方式&\SWFU@Examtype\\\hline%
      所用教材&\multicolumn{5}{l|}{\,\SWFU@Textbook}\\\hline%&出版时间&\SWFU@Publishtime
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|M{1em}|>{\kaishu}X|}%
      \makecell{课\\程\\教\\学\\总\\结}
      & \begin{minipage}[c][15em]{1.0\linewidth}
        \SWFU@Sumup
      \end{minipage}\\\hline%%
      \makecell{今\\后\\改\\革\\设\\想}
      & \begin{minipage}[c][12em]{1.0\linewidth}
        \SWFU@Suggestion
      \end{minipage}\\\hline%
    \end{tabularx}\\[-1pt]%
    \begin{tabularx}{\textwidth}{|*{2}{c|>{\kaishu}C|}}%
      填报人&\SWFU@TeacherName&职称&\SWFU@TeacherTitle\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|X|}%
      填报日期：\quad\texttt{\SWFU@Date}\hfill{}（以上为授课教师填写）\\\hline%
      教研室负责人审阅意见：\\[15ex]%
      \hfill\makebox[10em][l]{签名：}%
      \makebox[5em][r]{年}\makebox[3em][r]{月}\makebox[3em][r]{日}\\\hline%
    \end{tabularx}\\[1pt]
    注：本表复制有效}}

\setlength{\parindent}{2em}

\pagestyle{empty}