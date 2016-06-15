\ProvidesClass{swfcbilingual}[2015/11/06 SWFU bilingual lecturing application form]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper]{article}

% The swfcbilingual class is for preparing bilingual lecturing application form used at SWFU
%\RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage{xeCJK}

\RequirePackage[ % showframe,
 paperwidth=210mm,paperheight=297mm,
 top=2cm,bottom=2cm,
 left=1.5cm,right=1.5cm
 ]{geometry}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont{DejaVu Serif}
\setsansfont{DejaVu Sans}
%\setmonofont{DejaVu Sans Mono}
\setCJKmainfont[BoldFont={WenQuanYi Zen Hei}, ItalicFont={WenQuanYi Zen Hei}]{SimSun}
\setCJKfamilyfont{hei}{WenQuanYi Zen Hei}
\setCJKfamilyfont{song}{SimSun}

%%% array related. make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Name}[1]{\gdef\SWFCField@Name{#1}} % 姓名
\newcommand{\Gender}[1]{\gdef\SWFCField@Gender{#1}} % 性别
\newcommand{\Dayofbirth}[1]{\gdef\SWFCField@Dayofbirth{#1}} % 出生年月
\newcommand{\Diploma}[1]{\gdef\SWFCField@Diploma{#1}} % 学历
\newcommand{\Degree}[1]{\gdef\SWFCField@Degree{#1}} % 学位
\newcommand{\Title}[1]{\gdef\SWFCField@Title{#1}} % 专业技术职务
\newcommand{\Phone}[1]{\gdef\SWFCField@Phone{#1}} % 电话
\newcommand{\Admin}[1]{\gdef\SWFCField@Admin{#1}} % 行政职务
\newcommand{\Subject}[1]{\gdef\SWFCField@Subject{#1}} % 学科专业
\newcommand{\School}[1]{\gdef\SWFCField@School{#1}} % 所在学院
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 学期
\newcommand{\Schooltwo}[1]{\gdef\SWFCField@Schooltwo{#1}} % 开课学院
\newcommand{\Course}[1]{\gdef\SWFCField@Course{#1}} % 课程名称
\newcommand{\Language}[1]{\gdef\SWFCField@Language{#1}} % 外语语种
\newcommand{\Class}[1]{\gdef\SWFCField@Class{#1}} % 课程班级
\newcommand{\Textbook}[1]{\gdef\SWFCField@Textbook{#1}} % 使用教材
\newcommand{\Owntext}[1]{\gdef\SWFCField@Owntext{#1}} % 自编讲义资料
\newcommand{\Research}[1]{\gdef\SWFCField@Research{#1}} % 学术研究
\newcommand{\Bilingual}[1]{\gdef\SWFCField@Bilingual{#1}} % 外语水平及双语教学经历
\newcommand{\Award}[1]{\gdef\SWFCField@Award{#1}} % 获奖情况

\newcommand{\makeform}{
  \pagestyle{empty}
  {\centering
    {\textbf {\LARGE 西南林业大学双语教学课程申请表}}\\[4ex]
    \begin{tabu}{|X[-1,c,m]|@{}X[c,m]@{}|}\tabucline-
      \hspace{.5em}申请人基本\makebox[.5em]{}\par 信息 &
      \tabulinesep=1mm
      \begin{tabu}{X[-1,r]|X[.8,c]|X[-1,r]|X[.5,c]|X[-1,r]|X[2.5,c]@{}}
        姓名&\SWFCField@Name{}&性别&\SWFCField@Gender{}&出生年月&\SWFCField@Dayofbirth{}\\\tabucline-
        学历&\SWFCField@Diploma{}&专业技术职务&\SWFCField@Title{}&电话&\SWFCField@Phone{}\\\tabucline-
        学位&\SWFCField@Degree{}&行政职务&\SWFCField@Admin{}&学科专业&\SWFCField@Subject{}\\\tabucline-
        所在学院&\multicolumn{5}{c}{\SWFCField@School{}}\\
      \end{tabu} \\\tabucline-
      课程信息 &
      \tabulinesep=1mm
      \begin{tabu}{X[-1,r]|X[c]|X[-1,r]|X[1.5,c]|X[-1,r]|X[2.5,c]@{}}
        学期&\SWFCField@Term{}&开课学院&\SWFCField@Schooltwo{}&课程名称&\SWFCField@Course{}\\\tabucline-
        外语语种&\SWFCField@Language{}&课程班级&\multicolumn{3}{c}{\SWFCField@Class{}}\\\tabucline-
        使用教材&\multicolumn{5}{c}{\SWFCField@Textbook{}}\\\tabucline-
        自编讲义&\multicolumn{5}{c}{\SWFCField@Owntext{}}\\
      \end{tabu} \\\tabucline-
    \end{tabu}\vskip -1pt
    \tabulinesep=7ex
    \begin{tabu}{|X[-1,c,m]|X[c,m]|}
      学术研究&\SWFCField@Research{}\\\tabucline-
      外语水平及\par 双语教学经历 & \SWFCField@Bilingual{}\\\tabucline-
      获奖情况 & \SWFCField@Award{}\\\tabucline-
      教研室审核\par 意见 & \\\tabucline-
      教学院（部）\par 审核意见 & \\\tabucline-
      教务处审核\par 意见 & \\\tabucline-
    \end{tabu}
  }
}

\Name{王晓林}
\Gender{男}
\Dayofbirth{1969-03}
\Diploma{研究生}
\Degree{硕士}
\Title{讲师}
\Phone{13577067397}
\Admin{无}
\School{计算机与信息学院}
\Language{英语}
\Schooltwo{计信学院}
\Bilingual{十年双语教学经验}
\Award{无}

\Subject{计算机科学与技术}
\Term{151601}
\Course{Linux应用基础}
\Class{计科14（网络方向）}
\Textbook{Advanced Bash-scripting Guide}
\Owntext{否}
\Research{无}
