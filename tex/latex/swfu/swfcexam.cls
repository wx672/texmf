% 西南林业大学试卷
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcexam}%[TeX Live 2016/Debian SWFC exam paper]

\RequirePackage{ifxetex} %  XeTeX only

\DeclareOption{a3}{%
  \PassOptionsToPackage{a3paper,landscape,twocolumn,%
    columnsep=3cm,top=2cm,bottom=20mm,left=4cm,right=2cm}{geometry}}

\DeclareOption{a4}{%
  \PassOptionsToPackage{onecolumn,paperwidth=195mm,paperheight=270mm,%
    top=2cm,bottom=15mm,left=25mm,right=15mm}{geometry}}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
%\ExecuteOptions{a3} % default to a3
\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage{calc,ifthen}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{./figs/}{./}} %note that the trailing “/” is required

\RequirePackage{lastpage,changepage} % for 'page n of m'; \ifoddpage
\RequirePackage{dashrule} % \dashfill
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{fancybox} % for \fancyput
\RequirePackage{tabu}
\RequirePackage{multicol,varwidth,marvosym,soul,tasks}
\RequirePackage{setspace} % \singlespacing, \onehalfspacing, \doublespacing

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{} \fancyfoot{}
\cfoot{第\,\thepage\,页，共\,\pageref{LastPage}\,页}
\renewcommand{\headrulewidth}{0pt}

\newcommand{\code}[1]{\texttt{#1}}

\RequirePackage{wx672ctex}

\newlength{\bindingfieldlength}
\setlength{\bindingfieldlength}{1in}

% Declare some variables to hold the text fields
\newcommand{\Term}[3]{\gdef\SWFCField@Term{#1\,$\sim{}$#2\,学年第\,#3\,学期}}
\newcommand{\Course}[2]{\gdef\SWFCField@Course{《#1》试题（#2卷）}}
\newcommand{\Lecturer}[1]{\gdef\SWFCField@Lecturer{#1}}
\newcommand{\Group}[1]{\gdef\SWFCField@Group{#1}} % 考试班级
\newcommand{\EXtype}[1]{\gdef\SWFCField@EXtype{考试形式：\,#1}} % 开卷、闭卷
\newcommand{\EXtime}[1]{\gdef\SWFCField@EXtime{考试时间：\,#1}} % 120分钟
\newcommand{\Answer}[2]{\gdef\SWFCField@Answer{《#1》（#2）}}

\newsavebox{\swfcbindingbox}

\newcommand{\SWFCbinding}{%
  \sbox{\swfcbindingbox}{%
    \parbox{\textheight}{%
      {\centering
        \makebox[\textheight][s]{
          \mbox{姓名\underline{\hspace{\bindingfieldlength}}}
          \mbox{学号\underline{\hspace{\bindingfieldlength}}}
          \mbox{班级\underline{\hspace{\bindingfieldlength}}}
          \mbox{任课教师\underline{\hspace{1em}\SWFCField@Lecturer\hspace{1em}}}
        }\\[3mm]
        \mbox{请在所附答题纸上空出密封位置。并填写姓名、学号、班级、任课教师}\\[3mm]
        \hdashrule[.5ex][x]{.41\textheight}{.1pt}{2mm}密封线以下, 不得加注任何标记%
        \hdashrule[.5ex]{.41\textheight}{.1pt}{2mm}
      }}}
  \ifthenelse{\boolean{@twocolumn}}
  {\fancyput(-.5in,-10in){\rotatebox{90}{\usebox{\swfcbindingbox}}}} % then
  {} % else
}

% p876, the latex companion. Not working!
% \newcounter{p1}
% \newcommand\Clearpage{\stepcounter{p1}\label{p1-thep1}%
%   \ifthenelse{\isodd{\pageref{p1-thep1}}}
% %  \ifthenelse{\isodd{\thepage}}
%   { % then
%     \reversemarginpar{}
%     \marginpar{\rotatebox{90}{\usebox{\swfcbindingbox}}}
%   }
%   {}% else
%   \Huge{\pageref{p1-thep1}}
%   \clearpage
% }

\newcommand\Clearpage{% a4 only. need a better solution.
  \checkoddpage
  \ifoddpage
  \reversemarginpar{}
  \marginpar{\rotatebox{90}{\usebox{\swfcbindingbox}}}
  \else\fi
  \clearpage
}

\newcommand{\SWFCheader}{
  \vspace*{1ex}
  \begin{center}
    {\LARGE\mbox{\textbf{西南林业大学\,\SWFCField@Term}}}\\[3mm]
    {\LARGE\mbox{\textbf{\SWFCField@Course}}}\\[3mm]
    {\large\mbox{\textbf{\SWFCField@Group\qquad\SWFCField@EXtype\qquad\SWFCField@EXtime}}}\\[1mm]
    \begin{tabu}to .9\columnwidth {|c|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c,2]|}
      \tabucline-
      题号&一&二&三&四&五&六&七&八&九&十&总分\\\tabucline-
      分数& & & & & & & & & & & \\\tabucline-
      计& & & & & & & & & & & \\
      分& & & & & & & & & & & \\
      人& & & & & & & & & & & \\\tabucline-
    \end{tabu}
    \vskip 2em
    \underline{{\Large 直接卷上作答，不要另用答题纸}}
  \end{center}
  \vspace{3mm}
}

\newcommand{\SWFCanswer}{
  \vspace{-2em}
  {\centering
    \LARGE{\mbox{\textbf{西南林业大学\ \SWFCField@Term}}}\\
    \LARGE{\mbox{\textbf{\SWFCField@Answer}}}\\[.2\baselineskip]\par\normalsize
    \Large{\mbox{\textbf{参考答案及评分标准}}}\\[.2\baselineskip]\par\normalsize
  }
}

\RequirePackage{wx672minted}
\usemintedstyle{bw}

\onehalfspacing

% Initial defaults
\Term{2017}{2018}{1}
\Course{操作系统原理}{A}
%\Lecturer{\hspace{20mm}}
\Lecturer{{\sig 王晓林}}

\Answer{操作系统原理}{[A]卷}
\Group{电子信息工程2015级}
\EXtype{闭卷}
\EXtime{120分钟}