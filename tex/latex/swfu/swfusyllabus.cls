% 西南林业大学教学大纲 [2022]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusyllabus}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  % Author/.store in    = \@author,        Author =,%
  %%% 课程基本信息
  % Title/.store in     = \@title,         Title = 课程名称,% 
  Signature/.store in = \SWFU@Signature, Signature =, %
  ID/.store in        = \SWFU@ID,        ID = 课程编号,% 
  Term/.store in     = \SWFU@Term,     Term = 开课学期,%  
  enTitle/.store in   = \SWFU@enTitle,   enTitle = 英文名称, %
  Points/.store in = \SWFU@Points, Points = {学分/总学时},%
  Lecture/.store in = \SWFU@Lecture, Lecture = 理论学时,%
  Lab/.store in = \SWFU@Lab, Lab = 16,%实验学时
  Cls/.store in = \SWFU@Cls, Cls = 必修课,%课程性质
  Type/.store in = \SWFU@Type, Type = 专业基础,%课程类别
  Pre/.store in = \SWFU@Pre, Pre = 先修课程,%
  Book/.store in = \SWFU@Book, Book =,% 建议教材
  Books/.store in = \SWFU@Books, Books =,% 参考教材和资料
  Sbj/.store in = \SWFU@Sbj, %
  Sbj = {电子信息工程，计算机科学与技术，数据科学与大数据技术},%适用专业
  School/.store in = \SWFU@School, %
  School = {大数据与智能工程学院},%开课单位
  Apply/.store in = \SWFU@Apply, %
  Apply = {2022本科人才培养方案},%适用范围
  Exam/.store in = \SWFU@Exam, Exam = 考试,%考核方式
  % Month/.store in     = \SWFU@Month,     Month = \the\month,%
  % Date/.store in      = \SWFU@Date,      Date = \the\day,%
  % Year/.store in      = \SWFU@Year,      Year = \the\year,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=5]{ctexart}

\ctexset{%
  section = {%
    name = {,、},%
    format = \heiti\zihao{5},%
    number = \chinese{section},%
  },%
  subsection = {%
    format = \bfseries\zihao{5},%
    name = {（,）},%
    number = \chinese{subsection},%
  },%
}

%%% geometry %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[%showframe,%showcrop,
a4paper,twoside=false,%
margin=2.5cm,% 
nomarginpar]{geometry}

%%% graphicx %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./img/}{./}{../}} %note that the trailing “/” is required

%%% hyperref %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor,hyperref}

\hypersetup{unicode,naturalnames,%
  breaklinks=true,
  bookmarksnumbered,plainpages=false,
  pdfborderstyle={/S/U/W .5},% border style will be underline of width .5pt 
  colorlinks=true,%urlcolor=blue,
  linkbordercolor=red,       % color of internal links
  citebordercolor=blue,     % color of links to bibliography
  filebordercolor=magenta,   % color of file links
  urlbordercolor=blue,
  % linkcolor=black,citecolor=black,
}

\RequirePackage{xurl}

\pdfstringdefDisableCommands{%
  \def\\{}%
  \def\texttt#1{<#1>}%
}

%%% biblatex %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[backend=biber, style=gb7714-2015, gbpub=false, gbtype=false,
gbpunctin=false, url=false, doi=false, isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 11pt

% texdoc xurl
\setcounter{biburllcpenalty}{100}
\setcounter{biburlucpenalty}{200}
\setcounter{biburlnumpenalty}{100}

%%% misc %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\RequirePackage{amsmath,amsfonts,amssymb,mathtools,units}
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}

\RequirePackage{tabularray}%longtable
\DefTblrTemplate{contfoot}{default}{}
\DefTblrTemplate{conthead}{default}{}
\DefTblrTemplate{caption}{default}{}
\DefTblrTemplate{capcont}{default}{}

\pagestyle{plain}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
  \begin{center}
    \heiti\Large 《\@title{}》教学大纲
  \end{center}
}

%%% 基本信息表
\newcommand\basicinfo{
  \begin{longtblr}[caption={},label=none,entry=none]{%
    colspec={rX[c]cX[c]cX[c]},hlines,vlines,%
    cell{1,2,6-Z}{2}={c=5}{l,m}, cell{3,5}{4}={c=3}{c},%
  }
  课程名称   &\@title&&&&\\
  英文名称   &\SWFU@enTitle&&&&\\
  课程编号   &\SWFU@ID & 开课学期& 第\SWFU@Term{}学期&&\\
  学分/总学时&\SWFU@Points{}& 理论学时&\SWFU@Lecture& 实验学时&\SWFU@Lab\\
  课程性质   & \SWFU@Cls& 课程类别& \SWFU@Type&&\\
  先修课程   &\SWFU@Pre&&&&\\
  建议教材   & \parbox{12cm}{%
    \nocite{\SWFU@Book}\printbibliography[heading=none]{}%
  }&&&&\\
  适用专业   & \SWFU@Sbj&&&&\\
  开课单位   & \SWFU@School&&&&\\
  适用范围   & \SWFU@Apply&&&&\\
  考核方式   & \SWFU@Exam&&&&\\
\end{longtblr}}

%%% 课程思政表
\NewTblrEnviron{political}
\SetTblrInner[political]{%
  hlines,vlines,row{1}={c,m}}
\SetTblrOuter[political]{long}

%%% 课程目标对毕业要求的支撑关系表
\NewTblrEnviron{support}
\SetTblrInner[support]{%
  hlines,vlines,row{1}={c,m}}
\SetTblrOuter[support]{long}

%%% 理论教学表
\NewTblrEnviron{lecture}
\SetTblrInner[lecture]{%
  hlines,vlines,row{1}={c,m}}
\SetTblrOuter[lecture]{long}

%%% 实验教学表
\NewTblrEnviron{lab}
\SetTblrInner[lab]{%
  hlines,vlines,row{1}={c,m}}
\SetTblrOuter[lab]{long}

%%% 参考教材和资料
\newcommand\booklist{
  \begin{refsection}
    \nocite{\SWFU@Books}
    \printbibliography[heading=none]{}
  \end{refsection}}