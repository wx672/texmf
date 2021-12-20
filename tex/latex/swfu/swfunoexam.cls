% 西南林业大学非考试命题表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfunoexam}

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

\LoadClass[zihao=-4,scheme=plain]{ctexart}

\RequirePackage[ % showframe,
a4paper,%
margin=3cm]{geometry}

\RequirePackage{tabularray}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    {\Large\heiti 西南林业大学非考试命题表}\par
    \bigskip\noindent%
    \begin{tblr}{width=\linewidth, hlines, vlines, colspec={cX[c]cX[c]},%
        row{1-3}={rowsep=7pt}, row{4}={18cm},%
        cell{1,2,4}{2}={c=3}{c,font=\kaishu},%
        cell{3}{2,4}={c,font=\kaishu} }%
      学年学期 & \SWFU@Term\\
      考试科目 & {\SWFU@Course}\\
      考核方式 & \SWFU@Noexam&任课教师&\SWFU@Teacher\\
      {考核内容\\及要求} &%
      \begin{tblr}{width=.7\columnwidth,colspec={X}}
        \SWFU@Details\\
      \end{tblr}\\
    \end{tblr}
  \end{center}
}
