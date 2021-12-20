% 大数据与智能工程学院考核材料归档自查表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuchk}

\RequirePackage{pgfkeys}

\pgfkeys{
  Course/.store in  = \SWFU@Course,%
  Teacher/.store in  = \SWFU@Teacher,  Teacher  = 王晓林,%
  Class/.store in        = \SWFU@Class,% 专业班级
  AB/.store in    = \SWFU@AB, AB={\ab},% \paperA
  Date/.store in         = \SWFU@Date,% 考试日期
  Loc/.store in          = \SWFU@Loc, % 考试地点
  Sig/.store in          = \SWFU@Sig, Sig={\Signit},%
  Yesno/.store in        = \SWFU@Yesno, Yesno={\yesno},%\YES
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[12pt]{ctexart}

\usepackage{wx672nerd}%wx672cn,
\usepackage{tabularray}
\usepackage[vmargin=2.5cm,hmargin=2cm]{geometry}

\RequirePackage{graphicx}
\RequirePackage{tikz,hyperref}
\usetikzlibrary{backgrounds,positioning,fit}

\newcommand\yesno{%
  \CheckBox[checkboxsymbol=✔]{是}\qquad{}%
  \CheckBox[checkboxsymbol=✔]{否}
}
\newcommand\ab{%
  \CheckBox[checkboxsymbol=✔]{A卷}\qquad{}%
  \CheckBox[checkboxsymbol=✔]{B卷}
}

% \newcommand{\YES}{☑ 是\qquad{} □ 否}
% \newcommand{\NO}{□ 是\qquad{} ☑ 否}
% \newcommand{\paperA}{☑ A卷\qquad{} □ B卷}
% \newcommand{\paperB}{□ A卷\qquad{} ☑ B卷}

\newcommand{\Signit}[1][signature]{%\Signit{-3cm}{-6.2cm}{../signature}
  \begin{tikzpicture}[baseline,overlay]%
    \node at (0,0) {\includegraphics[width=25mm]{#1}};%
  \end{tikzpicture}}

\newcommand{\makeform}{
  \begin{center}\bfseries\large
    大数据与智能工程学院考核材料归档自查表
  \end{center}
  \begin{Form}
    \begin{tblr}{width=\linewidth, vlines, hlines={1-3}{solid}, hline{1,Z}={solid},%
        rowsep=5pt,row{18}={m},%
        colspec={Q[r,m]rQ[10em,c]Q[12em,l]},%
        cell{1,2,3,16,17,18}{2}={c=2}{c},%
        cell{4}{1}={c=3}{c},%
        cell{5-15}{1}={c=2}{r},%
        cell{2}{4}={r=15}{},%
        % cell{16}{2}={r},%
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
      任课教师签字&\SWFU@Sig&& 年\qquad{}月\qquad{}日\\
    \end{tblr}
  \end{Form}
  \par\noindent%
  注：考核材料选项请打勾“√”。
}

\pagestyle{empty}