% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcsumup}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{calc,ifthen}
\RequirePackage{tabu,array}
\RequirePackage{graphicx}

\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}
                
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 授课学期
\newcommand{\Coursetitle}[1]{\gdef\SWFCField@Coursetitle{\kaishu #1}} % 课程名称
\newcommand{\Totaltime}[1]{\gdef\SWFCField@Totaltime{#1}} % 总学时
\newcommand{\Labtime}[1]{\gdef\SWFCField@Labtime{#1}} % 实验学时
\newcommand{\Practicetime}[1]{\gdef\SWFCField@Practicetime{#1}} % 实习天数
\newcommand{\School}[1]{\gdef\SWFCField@School{\kaishu #1}} % 开课院系
\newcommand{\Class}[1]{\gdef\SWFCField@Class{\kaishu #1}} % 授课班级
\newcommand{\Studnum}[1]{\gdef\SWFCField@Studnum{#1}} % 学生人数
\newcommand{\Multimedia}[1]{\gdef\SWFCField@Multimedia{\kaishu #1}} % 多媒体教学
\newcommand{\Bilingual}[1]{\gdef\SWFCField@Bilingual{\kaishu #1}} % 双语教学
\newcommand{\Examtype}[1]{\gdef\SWFCField@Examtype{\kaishu #1}} % 考核方式
\newcommand{\Textbook}[1]{\gdef\SWFCField@Textbook{#1}} % 所用教材
\newcommand{\Publishtime}[1]{\gdef\SWFCField@Publishtime{#1}} % 出版时间
\newcommand{\Sumup}[1]{\gdef\SWFCField@Sumup{\kaishu #1}} % 课程教学总结
\newcommand{\Suggestion}[1]{\gdef\SWFCField@Suggestion{\kaishu #1}} % 今后改革设想
\newcommand{\TeacherName}[1]{\gdef\SWFCField@TeacherName{\kaishu #1}} % 教师姓名
\newcommand{\TeacherTitle}[1]{\gdef\SWFCField@TeacherTitle{\kaishu #1}} % 职称
\newcommand{\Date}[1]{\gdef\SWFCField@Date{\kaishu #1}}

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
      授课学期&\SWFCField@Term{}&课程名称&\multicolumn{3}{c|}{\SWFCField@Coursetitle{}}\\\tabucline-
      总\hspace{.5em}学\hspace{.5em}时&\SWFCField@Totaltime{}&实验学时&\SWFCField@Labtime{}&
      实习天数&\SWFCField@Practicetime{}{\kaishu 周}\\\tabucline-
      开课院系&\SWFCField@School{}&授课班级&\SWFCField@Class{}&
      学生人数&\SWFCField@Studnum{}{\kaishu 人}\\\tabucline-
      多媒体教学&\SWFCField@Multimedia{}&双语教学&\SWFCField@Bilingual{}&
      考核方式&\SWFCField@Examtype{}\\\tabucline-
      所用教材&\multicolumn{3}{c|}{\SWFCField@Textbook{}}&
      出版时间&\SWFCField@Publishtime{}\\\tabucline-
    \end{tabu}
    \vspace{-1pt} \tabulinesep=0pt
    \begin{tabu}{|X[.1,c]|X|}
      课程\par\vspace{4ex}教学\par\vspace{4ex}总结\par\vspace{1cm}&
      \begin{minipage}{\columnwidth}
        \vspace*{3ex}
        \SWFCField@Sumup{}
      \end{minipage}\\\tabucline-%
      \vspace{1cm}今后\par\vspace{4ex}改革\par\vspace{4ex}设想\par\vspace{3cm}&
      \begin{minipage}{.7\columnwidth}
        \vspace{3ex}
        \SWFCField@Suggestion{}
      \end{minipage}\\\tabucline-
      填报人&\tabulinesep=2mm
      \begin{tabu}{X[c]|c|X[c]}%\SWFCField@TeacherName{}
        &职称&\SWFCField@TeacherTitle{}\\
      \end{tabu}\\\tabucline-
    \end{tabu}
    \vspace{-1pt} \tabulinesep=2mm
    \begin{tabu}{|X|}
      填报日期：\quad\SWFCField@Date\hfill{}（以上为授课教师填写）\\\tabucline-
      教研室负责人审阅意见：\\[5ex]
      \hfill{}\makebox[10em][l]{签名：}
      \makebox[5em][r]{年}\makebox[3em][r]{月}\makebox[3em][r]{日}\\\tabucline-
    \end{tabu}
    注：本表复制有效}}

\Sumup{% 课程教学小结
  \begin{itemize}
  \item
  \item
  \item
  \end{itemize}
}  
\Suggestion{% 今后改革设想
  \begin{itemize}
  \item
  \item
  \item
  \end{itemize}
}

\setlength{\parindent}{2em}

\Term{}\Coursetitle{}
\Totaltime{}\Labtime{}\Practicetime{}
\Class{}\Studnum{}
\Textbook{}\Publishtime{}
\TeacherName{}\TeacherTitle{讲师}
\School{大数据与智能工程学院}
\Multimedia{\YES}\Bilingual{\YES}\Examtype{开卷机试}

\pagestyle{empty}