% 西南林业大学课程教学小结表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusumup}

\RequirePackage{pgfkeys}

\pgfkeys{
  Term/.store in         = \SWFU@Term,%
  Coursetitle/.store in  = \SWFU@Coursetitle,%
  Totaltime/.store in    = \SWFU@Totaltime,%
  Labtime/.store in      = \SWFU@Labtime,%
  Labweek/.store in = \SWFU@Labweek,%
  Class/.store in        = \SWFU@Class,%
  Studnum/.store in      = \SWFU@Studnum,%
  Examtype/.store in     = \SWFU@Examtype,%
  Textbook/.store in     = \SWFU@Textbook,%
  Sumup/.store in        = \SWFU@Sumup,%
  Suggestion/.store in   = \SWFU@Suggestion,%
  Date/.store in         = \SWFU@Date, Date={\today},%
  School/.store in       = \SWFU@School,       School       = 大数据与智能工程学院,%
  TeacherName/.store in  = \SWFU@TeacherName,  TeacherName  = 王晓林,%
  TeacherTitle/.store in = \SWFU@TeacherTitle, TeacherTitle = 讲师,%
  Multimedia/.store in   = \SWFU@Multimedia,   Multimedia   = \YES,%
  Bilingual/.store in    = \SWFU@Bilingual,    Bilingual    = \YES,%
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%ctexart
\ProcessOptions\relax

\LoadClass{article}%[scheme=chinese]{ctexart}

% \ctexset{%
%   today=small
% }
\RequirePackage{wx672babel}

\RequirePackage[backend=biber,url=false,doi=false,isbn=false]{biblatex}
%style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false
%\renewcommand*{\bibfont}{\scriptsize}

\RequirePackage{graphicx}
\graphicspath{{../figs/}{./figs/}{./}{../}} %note that the trailing “/” is required

\RequirePackage[%showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{wx672tcb}
\usetikzlibrary{backgrounds,positioning,fit}

\newcommand{\Signit}[3]{%\Signit{-3cm}{-6.2cm}{../signature}
\begin{tikzpicture}[overlay,remember picture]%
  \node [xshift=#1,yshift=#2] at (current page.center) {%
    \includegraphics[scale=.1]{#3}%
  };%
\end{tikzpicture}}

\newfontfamily\nerd{DejaVuSansM Nerd Font Mono}%Symbols Nerd Font Mono
%\newfontfamily\nerd{Noto Sans Symbols2}
\RequirePackage{newunicodechar}
\newunicodechar{□}{{\large\nerd □}}%ballot box
\newunicodechar{☑}{{\large\nerd ☑}}%checked box
\newcommand{\YES}{☑是\quad □否}

\RequirePackage{tabularray}

\newcommand{\makeform}{
  {\centering%
    {\LARGE\heifamily 西南林业大学课程教学小结表}\\\bigskip%
    \begin{tblr}{width=\textwidth,hlines,vlines,%
        colspec={cX[c]cX[-1,c]cc}, column{even}={font=\kaifamily},%
        row{3}={m}, cell{1}{4}={c=3}{},cell{5}{2}={c=5}{l,m},%
      }
      授课学期&\SWFU@Term&课程名称&\SWFU@Coursetitle\\
      \makebox[4em][s]{总学时}&\SWFU@Totaltime&实验学时&\SWFU@Labtime&实习天数&\SWFU@Labweek\\
      开课院系&\SWFU@School&授课班级&{\SWFU@Class}&学生人数&\SWFU@Studnum\\
      多媒体教学&\SWFU@Multimedia&双语教学&\SWFU@Bilingual&考核方式&\SWFU@Examtype\\
      所用教材&
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
    \begin{tblr}{width=\textwidth, vlines,%
        colspec={cX[c]cX[c]}, column{even}={font=\ttfamily}}
      填报人&\SWFU@TeacherName&职称&\SWFU@TeacherTitle\\
    \end{tblr}\\[-1pt]
    \begin{tblr}{width=\textwidth, vlines, hline{1,2,4}, colspec={X} }
      填报日期：\quad\texttt{\SWFU@Date}\hfill{}（以上为授课教师填写）\\
      教研室负责人审阅意见：\\[15ex]%
      \hfill\makebox[10em][l]{签名：}%
      \makebox[5em][r]{年}\makebox[3em][r]{月}\makebox[3em][r]{日}\\
    \end{tblr}\\[1pt]
    注：本表复制有效}}

\setlength{\parindent}{2em}

\pagestyle{empty}
