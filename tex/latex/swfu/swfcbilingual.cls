% 西南林业大学双语教学课程申请表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcbilingual}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{tabu,array}
\RequirePackage{wx672hyperref}
\RequirePackage{wx672bib}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=1.5cm,right=1.5cm
]{geometry}

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Name}[1]{\gdef\SWFCField@Name{\kaishu #1}} % 姓名
\newcommand{\Gender}[1]{\gdef\SWFCField@Gender{\kaishu #1}} % 性别
\newcommand{\Dayofbirth}[1]{\gdef\SWFCField@Dayofbirth{\kaishu #1}} % 出生年月
\newcommand{\Diploma}[1]{\gdef\SWFCField@Diploma{\kaishu #1}} % 学历
\newcommand{\Degree}[1]{\gdef\SWFCField@Degree{\kaishu #1}} % 学位
\newcommand{\Title}[1]{\gdef\SWFCField@Title{\kaishu #1}} % 专业技术职务
\newcommand{\Phone}[1]{\gdef\SWFCField@Phone{\kaishu #1}} % 电话
\newcommand{\Admin}[1]{\gdef\SWFCField@Admin{\kaishu #1}} % 行政职务
\newcommand{\Subject}[1]{\gdef\SWFCField@Subject{\kaishu #1}} % 学科专业
\newcommand{\School}[1]{\gdef\SWFCField@School{\kaishu #1}} % 所在学院
\newcommand{\Term}[1]{\gdef\SWFCField@Term{\kaishu #1}} % 学期
\newcommand{\Schooltwo}[1]{\gdef\SWFCField@Schooltwo{\kaishu #1}} % 开课学院
\newcommand{\Course}[1]{\gdef\SWFCField@Course{\kaishu #1}} % 课程名称
\newcommand{\Language}[1]{\gdef\SWFCField@Language{\kaishu #1}} % 外语语种
\newcommand{\Class}[1]{\gdef\SWFCField@Class{\kaishu #1}} % 课程班级
\newcommand{\Textbook}[1]{\gdef\SWFCField@Textbook{#1}} % 使用教材
\newcommand{\Owntext}[1]{\gdef\SWFCField@Owntext{\kaishu #1}} % 自编讲义资料
\newcommand{\Research}[1]{\gdef\SWFCField@Research{\kaishu #1}} % 学术研究
\newcommand{\Experience}[1]{\gdef\SWFCField@Experience{\kaishu #1}} % 外语水平及双语教学经历
\newcommand{\Award}[1]{\gdef\SWFCField@Award{\kaishu #1}} % 获奖情况

\newcommand{\makeform}{\pagestyle{empty}  
  {\centering
    {\textbf {\LARGE\heiti 西南林业大学双语教学课程申请表}}\\[4ex]
    \begin{tabu}{|X[.137,c]|@{}X[c]@{}|}\tabucline-
      \vspace*{2ex}申请人基本\par 信息 &
      \tabulinesep=1mm
      \begin{tabu}{r|X[-1,c]|r|X[-1,c]|r|X[c]@{}}
        姓名&{\SWFCField@Name}&性别&{\SWFCField@Gender}&
        出生年月&\SWFCField@Dayofbirth\\\tabucline-
        学历&{\SWFCField@Diploma}&专业技术职务&{\SWFCField@Title}&
        电话&\SWFCField@Phone\\\tabucline-
        学位&{\SWFCField@Degree}&行政职务&{\SWFCField@Admin}&
        学科专业&{\SWFCField@Subject}\\\tabucline-
        所在学院&\multicolumn{5}{c}{\SWFCField@School}\\
      \end{tabu} \\\tabucline-
      \vspace*{4ex}课程信息 &
      \tabulinesep=1mm
      \begin{tabu}{r|X[-1,c]|r|X[-1,c]|r|X[,c]@{}}
        学期&\SWFCField@Term&开课学院&{\SWFCField@Schooltwo}&
        课程名称&{\SWFCField@Course}\\\tabucline-
        外语语种&{\SWFCField@Language}&
        课程班级&\multicolumn{3}{c}{\SWFCField@Class}\\\tabucline-
        使用教材&\multicolumn{5}{c}{\SWFCField@Textbook}\\\tabucline-
        自编讲义&\multicolumn{5}{c}{\SWFCField@Owntext}\\
      \end{tabu} \\\tabucline-
    \end{tabu}\vskip -1pt
    \tabulinesep=7ex
    \begin{tabu}{|X[-1,c,m]|X[c,m]|}
      学术研究&{\SWFCField@Research}\\\tabucline-
      外语水平及\par 双语教学经历 & {\SWFCField@Experience}\\\tabucline-
      获奖情况 & {\SWFCField@Award}\\\tabucline-
      教研室审核\par 意见 & \\\tabucline-
      教学院（部）\par 审核意见 & \\\tabucline-
      教务处审核\par 意见 & \\\tabucline-
    \end{tabu}}}

\Name{王晓林}
\Gender{男}
\Dayofbirth{1969 -- 03}
\Diploma{研究生}
\Degree{硕士}
\Title{讲师}
\Phone{13577067397}
\Admin{无}
\School{大数据与智能工程学院}
\Language{英语}
\Schooltwo{大数据与智能工程学院}
\Experience{十年双语教学经验}
\Award{无}
\Owntext{否}
\Research{无}

\Subject{计算机科学与技术}
\Term{151601}
\Course{Linux应用基础}
\Class{计科14（网络方向）}
\Textbook{Advanced Bash-scripting Guide}
