\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcexam}[2014/05/31 SWFC exam paper]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt]{article}

\RequirePackage{lastpage} % for 'page n of m'
\RequirePackage{dashrule}
\RequirePackage[
a3paper,landscape,twocolumn,
%showframe,
columnsep=3cm,
top=2cm,bottom=15mm,left=1.6in,right=2cm % margins
]{geometry}

%\RequirePackage{xcolor}
\RequirePackage{amsmath,amsfonts}%,amssymb}

\RequirePackage{fancyhdr} % for \cfoot
\RequirePackage{fancybox} % for \fancyput
\RequirePackage{calc}
\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage{xeCJK}

%%% fonts
%\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont} % The LaTeX Companion, A.4.9
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{DejaVu Serif}
\setsansfont{DejaVu Sans}
\setmonofont{DejaVu Sans Mono}
\setCJKmainfont[BoldFont={WenQuanYi Zen Hei}, ItalicFont={WenQuanYi Zen Hei}]{SimSun}

\newlength{\bindingfieldlength}
\setlength{\bindingfieldlength}{1in}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Term}[3]{\gdef\SWFCField@Term{$#1\sim{}#2$\ 学年第$#3$\ 学期}}
\newcommand{\Course}[2]{\gdef\SWFCField@Course{《#1》试题（#2）}}
\newcommand{\Lecturer}[1]{\gdef\SWFCField@Lecturer{#1}}
\newcommand{\Answer}[2]{\gdef\SWFCField@Answer{《#1》（#2）}}

\newsavebox{\swfcbindingbox}

\newcommand{\SWFCbinding}{
  \sbox{\swfcbindingbox}{
    \parbox{\textheight}{
      {\centering
        \makebox[\textheight][s]{
          \mbox{姓名\underline{\hspace{\bindingfieldlength}}}
          \mbox{学号\underline{\hspace{\bindingfieldlength}}}
          \mbox{班级\underline{\hspace{\bindingfieldlength}}}
          \mbox{任课教师\underline{\hspace{1em}\SWFCField@Lecturer\hspace{1em}}}
        }
        \par\medskip{}\mbox{请在所附答题纸上空出密封位置。并填写姓名、学号、班级、任课教师}
        \par\medskip{}
        \hdashrule[.5ex]{.41\textheight}{.1pt}{2mm}密封线以下, 不得加注任何标记\;%
        \hdashrule[.5ex]{.41\textheight}{.1pt}{2mm}
      }
    }
  }
  \fancyput(-.5in,-10in){\rotatebox{90}{\usebox{\swfcbindingbox}}}
}

\newcommand{\SWFCheader}{
  \begin{center}
    \renewcommand{\baselinestretch}{1.1}
    \mbox{}\\
    \LARGE{\mbox{\textbf{西南林业大学\ \SWFCField@Term}}}\\\vspace{3mm}
    \LARGE{\mbox{\textbf{\SWFCField@Course}}}\\[.2\baselineskip]\par\normalsize
    \vspace{3mm}
    \begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|}
      \hline
      \makebox[3em]{题号} & \makebox[2em]{一} & \makebox[2em]{二} & \makebox[2em]{三} &
      \makebox[2em]{四} & \makebox[2em]{五} & \makebox[2em]{六} & \makebox[2em]{七} &
      \makebox[2em]{八} & \makebox[2em]{九} & \makebox[2em]{十} & \makebox[3em]{总分} \\
      \hline
      分数 & & & & & & & & & & & \\
      \hline
      计 & & & & & & & & & & & \\
      分 & & & & & & & & & & & \\
      人 & & & & & & & & & & & \\
      \hline
    \end{tabular}
  \end{center}
  \SWFCbinding{}
}

\newcommand{\SWFCanswer}{
  \vspace{-2em}
  {\centering
    \LARGE{\mbox{\textbf{西南林业大学\ \SWFCField@Term}}}\\
    \renewcommand{\baselinestretch}{1.1}
    \LARGE{\mbox{\textbf{\SWFCField@Answer}}}\\[.2\baselineskip]\par\normalsize
    \Large{\mbox{\textbf{参考答案及评分标准}}}\\[.2\baselineskip]\par\normalsize
  }
}

\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhead{} \fancyfoot{}
\cfoot{\thepage\ of \pageref{LastPage}}


\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}

\newcommand{\code}[1]{{\fontspec{DejaVu Sans Mono}{#1}}}

% Initialize the variables to their default values
\Term{2013}{2014}{1}
\Course{操作系统原理}{闭卷[A]}
\Lecturer{\hspace{20mm}}
\Answer{操作系统原理}{[A]卷}

