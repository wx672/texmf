% 大数据与智能工程学院考核材料归档自查表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuchk}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Course/.store in  = \SWFU@Course,%
  Teacher/.store in = \SWFU@Teacher, Teacher={王晓林},%
  Class/.store in   = \SWFU@Class,% 专业班级
  Date/.store in    = \SWFU@Date,% 考试日期
  Loc/.store in     = \SWFU@Loc, % 考试地点
  Sig/.store in     = \SWFU@Sig, Sig={},%\Signit
  Yesno/.store in   = \SWFU@Yesno, Yesno={\yesno},%\YES
  AB/.store in      = \SWFU@AB, AB={\ab},%
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage{wx672babel,tabularray,graphicx}

\RequirePackage[%showframe,%
a4paper,nomarginpar,%
vmargin=2.5cm,hmargin=2cm]{geometry}

\RequirePackage{newunicodechar}
\newfontfamily\symbola{Symbola Nerd Font}
\newunicodechar{☐}{{\symbola ☐}}%ballot box 🗆
\newunicodechar{☑}{{\symbola ☑}}%checked box tick 🗹

\newcommand\YES{\makebox[3em][r]{是\;☑}\qquad\makebox[3em][r]{否\;☐}}%
\newcommand\NO {\makebox[3em][r]{是\;☐}\qquad\makebox[3em][r]{否\;☑}}%
\newcommand\paperA{\makebox[3em][r]{A卷\;☑}\qquad\makebox[3em][r]{B卷\;☐}}%
\newcommand\paperB{\makebox[3em][r]{A卷\;☐}\qquad\makebox[3em][r]{B卷\;☑}}%
\newcommand\yesno[1][\YES]{#1}% #1 should be \YES or \NO
\newcommand\ab[1][\paperA]{#1} % #1 should be \paperA or \paperB

\newcommand{\makeform}{
  \begin{center}
    \bfseries\Large\sffamily %
    大数据与智能工程学院考核材料归档自查表
  \end{center}
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{tblr}{colspec={rrrQ[13em,l]},%Q[12em,l]
      vlines, hlines={1-3}{solid}, hline{1,Z},%
      rowsep=8pt,%row{18}={m},%
      cell{1-3,16-18}{2}={c=2}{c},%
      cell{4}{1}={c=3}{c},%
      cell{5-15}{1}={c=2}{r},%
      cell{2}{4}={r=15}{l},%
      cell{1-3,16,17}{2}={font=\ttfamily},%
      cell{18}{4}={r},%
    }
    课程名称 &\SWFU@Course&& 系主任审核意见 \\
    教师姓名 &\SWFU@Teacher&& \\
    专业班级 &\SWFU@Class&& \\
    考核材料 &&& \\
    试卷类别 && \SWFU@AB & \\
    试题重复率(是否重复率30\%以下)&& \SWFU@Yesno & \\
    试卷份数 (是否和考生人数一致)&& \SWFU@Yesno & \\
    试卷分数 (是否统计正确) && \SWFU@Yesno & \\
    试卷签字 (是否签名)&& \SWFU@Yesno & \\
    试卷判分 (格式是否规范) &&\SWFU@Yesno & \\
    考核大纲 (是否装袋) &&\SWFU@Yesno  & \\
    参考答案评分及评分标准 (是否装袋)&&\SWFU@Yesno & \\
    有无成绩单 (是否装袋) && \SWFU@Yesno & \\
    课程小结表 (是否装袋) && \SWFU@Yesno & \\
    分析报告 (是否装袋) && \SWFU@Yesno & \\
    考试日期 & \SWFU@Date&& \\
    考试地点 &\SWFU@Loc&& 签字:\\
    任课教师签字&%
    \begin{minipage}[c][0em][c]{1cm}
      \SWFU@Sig
    \end{minipage}%
    && 年\qquad{}月\qquad{}日\\
  \end{tblr}
  \par\noindent%
  注：考核材料选项请打勾“√”。
}

\pagestyle{empty}
