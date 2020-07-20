% 西南林业大学非考试命题表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfunoexam}

%\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Teacher/.store in = \SWFU@Teacher,%任课教师
  Term/.store in    = \SWFU@Term, %学年学期
  Course/.store in  = \SWFU@Course, %考试科目
  Noexam/.store in  = \SWFU@Noexam,%考核方式
  Details/.store in = \SWFU@Details,%考核内容及要求
  Default/.style    = {%
    Teacher = {王晓林},%
    Course  = {计算机网络实习},%
    Noexam  = {实习报告},%
    Details = {实习围绕常用Linux网络工具和网络服务，涵盖ip, ping, ssh, tcpdump,
      netstat, nmap等网络命令的使用，以及web, ftp, email等常用网络服务器的搭建。提高学生解
      决实际问题的能力。

      要求按时、按规范提交实习报告。
    } }}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
margin=4cm]{geometry}

\RequirePackage{tabularx}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{2}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering
    {\LARGE\heiti 西南林业大学非考试命题表}\\[4ex]
    \begin{tabularx}{\textwidth}{|M{4em}|C|}\hline%
      学年学期 & \SWFU@Term\\\hline
      考试科目 & {\kaishu \SWFU@Course}\\\hline
      考核方式& {\begin{tabularx}{1.0\linewidth}{C|C|C}
                  {\kaishu\SWFU@Noexam}&任课教师&{\kaishu\SWFU@Teacher}\\
                 \end{tabularx}} \\\hline
      \mkvspace{20em}{考核内容\par{}及要求} & \begin{tabular}{p{.9\linewidth}}
                                               {\kaishu\SWFU@Details}\\
                                             \end{tabular}\\\hline
    \end{tabularx}}}
