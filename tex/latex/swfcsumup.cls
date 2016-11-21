\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcsumup}%[TeX Live 2016/Debian SWFU teaching review form]

% The swfcsumup class is for producing termly teaching review form used at SWFU

\LoadClass[a4paper,10pt]{article}

\RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{amsmath,amsfonts,marvosym}%,amssymb} % \Box{}
\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage{xeCJK}
\RequirePackage{graphicx}
\RequirePackage[% showframe,
                paperwidth=195mm, paperheight=270mm,
		top=2cm, bottom=2cm,
                left=3cm, right=3cm,
                ]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}
                
%\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont} % The LaTeX Companion, A.4.9
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}

\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont{Noto Sans CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}

%%% make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%\newcommand{\Formtitle}[1]{\gdef\SWFCField@Formtitle{#1}} % 西南林业大学课程教学小结表
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 授课学期
\newcommand{\Coursetitle}[1]{\gdef\SWFCField@Coursetitle{#1}} % 课程名称
\newcommand{\Totaltime}[1]{\gdef\SWFCField@Totaltime{#1}} % 总学时
\newcommand{\Labtime}[1]{\gdef\SWFCField@Labtime{#1}} % 实验学时
\newcommand{\Practicetime}[1]{\gdef\SWFCField@Practicetime{#1}} % 实习天数
\newcommand{\School}[1]{\gdef\SWFCField@School{#1}} % 开课院系
\newcommand{\Class}[1]{\gdef\SWFCField@Class{#1}} % 授课班级
\newcommand{\Studnum}[1]{\gdef\SWFCField@Studnum{#1}} % 学生人数
\newcommand{\Multimedia}[1]{\gdef\SWFCField@Multimedia{#1}} % 多媒体教学
\newcommand{\Bilingual}[1]{\gdef\SWFCField@Bilingual{#1}} % 双语教学
\newcommand{\Examtype}[1]{\gdef\SWFCField@Examtype{#1}} % 考核方式
\newcommand{\Textbook}[1]{\gdef\SWFCField@Textbook{#1}} % 所用教材
\newcommand{\Publishtime}[1]{\gdef\SWFCField@Publishtime{#1}} % 出版时间
\newcommand{\Sumup}[1]{\gdef\SWFCField@Sumup{#1}} % 课程教学总结
\newcommand{\Suggestion}[1]{\gdef\SWFCField@Suggestion{#1}} % 今后改革设想
\newcommand{\TeacherName}[1]{\gdef\SWFCField@TeacherName{#1}} % 教师姓名
\newcommand{\TeacherTitle}[1]{\gdef\SWFCField@TeacherTitle{#1}} % 职称
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}

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
\TeacherName{王晓林}\TeacherTitle{讲师}

\newcommand{\YES}{{\Large \Checkedbox{}}是\quad$\Box$否}
\newcommand{\NO}{$\Box$是\quad{\Large \Checkedbox{}}否}

\newcommand{\makeform}{
  {\centering
    {\LARGE 西南林业大学课程教学小结表}\\[2ex]
    \tabulinesep=2mm
    \begin{tabu}{|c|c|c|c|c|X[c]|}
      \tabucline-
      授课学期&\SWFCField@Term{}&课程名称&\multicolumn{3}{c|}{\SWFCField@Coursetitle{}}\\\tabucline-
      总\hspace{.5em}学\hspace{.5em}时&\SWFCField@Totaltime{}&实验学时&\SWFCField@Labtime{}&
      实习天数&\SWFCField@Practicetime\\\tabucline-
      开课院系&\SWFCField@School{}&授课班级&\SWFCField@Class{}&
      学生人数&\SWFCField@Studnum{}\\\tabucline-
      多媒体教学&\SWFCField@Multimedia{}&双语教学&\SWFCField@Bilingual{}&
      考核方式&\SWFCField@Examtype{}\\\tabucline-
      所用教材&\multicolumn{3}{c|}{\SWFCField@Textbook{}}&
      出版时间&\SWFCField@Publishtime{}\\\tabucline-
    \end{tabu}
    \vskip -1pt
    \tabulinesep=5ex
    \begin{tabu}{|X[.1,c,m]|X|}
      课程\par\vskip 4ex 教学\par\vskip 4ex 总结&
      \begin{tabu}[c]{X}
        \SWFCField@Sumup{}\\
      \end{tabu}\\\tabucline-      
      今后\par\vskip 4ex 改革\par\vskip 4ex 设想&
      \begin{tabu}[c]{X}
        \SWFCField@Suggestion{}\\
      \end{tabu}\\\tabucline-
    \end{tabu}
    % \vskip -7pt
    % \tabulinesep=0pt
    % \begin{tabu}{X[.232]X[c]cX}
    %   &\SWFCField@TeacherName{}&&\\% \TeacherName{\includegraphics[height=3em]{../signature}}
    % \end{tabu}
    \vskip -1pt
    \tabulinesep=2mm
    \begin{tabu}{|X[.232,c,m]|X[c]|c|X[c]|}
      填报人&\SWFCField@TeacherName{}&职称&\SWFCField@TeacherTitle{}\\\tabucline-
    \end{tabu}\vskip -1pt
    \tabulinesep=2mm
    \begin{tabu}{|X[l]X[r]|}
      填报日期：\SWFCField@Date{}&（以上为授课教师填写）\\\tabucline-
    \end{tabu}\vskip -1pt
    \begin{tabu}{|XX|}
      教研室负责人审阅意见：&\\[5ex]
      &签名：\hspace{8em}年\hspace{2em}月\hspace{2em}日\\\tabucline-
    \end{tabu}
    注：本表复制有效
  }
}

\newcommand{\Sign}[3]{
  \begin{tikzpicture}[overlay]
    \node [xshift=#1,yshift=#2] at (current page.center) {
        \includegraphics[scale=.1]{#3}
    };
  \end{tikzpicture}
}


\pagestyle{empty}

% \Signature{\hspace{4em}}
\Term{}\Coursetitle{}
\Totaltime{}\Labtime{}\Practicetime{}
\School{}\Class{}\Studnum{}
\Multimedia{}\Bilingual{}\Examtype{}
\Textbook{}\Publishtime{}

