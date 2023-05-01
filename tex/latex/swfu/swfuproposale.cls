% 西南林业大学本科毕业论文（设计）开题报告（留学生版）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuproposale}

% pass unknown options to article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage{fontspec}
\newfontfamily\dejavu{DejaVu Sans Mono}%
\newfontfamily\purisa{Purisa}
\newcommand\unchecked{{\dejavu □}} %ballot box
\newcommand\checked{{\large\dejavu ☑}} %🗹

\RequirePackage{pgfkeys}

\pgfkeys{%
  PrjFrmA/.store in       = \SWFU@PrjFrmA, PrjFrmA={\unchecked{}}, %科研项目
  PrjFrmB/.store in       = \SWFU@PrjFrmB, PrjFrmB={\unchecked{}}, %社会实践
  PrjFrmC/.store in       = \SWFU@PrjFrmC, PrjFrmC={\unchecked{}}, %大学生创新创业项目
  PrjFrmD/.store in       = \SWFU@PrjFrmD, PrjFrmD={\unchecked{}}, %其它来源
  Studid/.store in         = \SWFU@Studid, % 学号
  Advisor/.store in        = \SWFU@Advisor, Advisor=,             % 指导教师
  AdvisorSig/.store in     = \SWFU@AdvisorSig, AdvisorSig=,       % 指导教师签名
  AdvisorTitle/.store in   = \SWFU@AdvisorTitle, AdvisorTitle=,   %指导教师职称
  AdvisorGender/.store in  = \SWFU@AdvisorGender, AdvisorGender=, %指导教师性别
  AdvisorAge/.store in     = \SWFU@AdvisorAge, AdvisorAge=,       %指导教师年龄
  AdvisorDegree/.store in  = \SWFU@AdvisorDegree, AdvisorDegree=, %指导教师学位
  AdvisorFrom/.store in   = \SWFU@AdvisorFrom, AdvisorFrom={College of Big Data and
    Intelligent Engineering},%
  AdvisorComment/.store in = \SWFU@AdvisorComment, % 指导教师意见
  Date/.store in           = \SWFU@Date,      % 填表时间(年/月/日）
  Subject/.store in        = \SWFU@Subject, Subject={Computer science and technology}, % 专业
  Grade/.store in          = \SWFU@Grade,     % 年级
  Partone/.store in        = \SWFU@Partone,   % 1. 该研究的目的、意义
  Parttwo/.store in        = \SWFU@Parttwo,   % 2. 国内外研究现状及发展趋势
  Partthree/.store in      = \SWFU@Partthree, % 3. 主要参考文献
  Partfour/.store in       = \SWFU@Partfour,  % 4. 该研究的主要内容，重点解决的问题，预期结果或成果
  Partfive/.store in       = \SWFU@Partfive,  % 5. 拟采取的研究方法或实验方法，
                                              %    步骤，可能出现的技术问题及解决办法
  Partsix/.store in        = \SWFU@Partsix,   % 6. 完成该研究已具备的条件  
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage[%showframe,%showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{graphicx} % before xltxtra
\graphicspath{{./figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{caption,subcaption}% \captionof{table|figure}{t|f}

\RequirePackage{tabularray,tabularx,longtable,booktabs,makecell,multicol,multirow,array}
\renewcommand{\arraystretch}{1.5}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\newcolumntype{R}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{L}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\RequirePackage{indentfirst,enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered, breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}

% https://tex.stackexchange.com/questions/247185/tcolorbox-theorem-which-isnt-framed-on-the-sides
\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,sharp corners,nobeforeafter,%
  colback=white,coltitle=black,colbacktitle=white,%
  boxrule=.5pt,titlerule=0pt,%
  bottomrule at break=.5pt,after skip=-1.5pt,% bottomrule=0pt, bottom=1em,
  before upper={\parindent 2em},% indentfirst  
  fonttitle=\large\bfseries,title=#1}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand\doublespacing{\setstretch{1.6}}

\setlength{\parindent}{2em}

\pagestyle{empty}

\newcommand{\SWFUtitlepage}{% Title page layout
  \thispagestyle{empty}
  \begin{center}
    {%
      \LARGE\bfseries%
      \mbox{Southwest Forestry University}\\
      \mbox{Undergraduate Thesis (Design) Proposal}\\
    }%
    \vskip 3cm
    \begin{Large}\singlespacing
      \begin{tblr}{width=\linewidth,colspec={rX[c]},rows={m},hline{2}={2}{}}
        Thesis title:&\@title\\
      \end{tblr}
      \vskip 2cm
      \begin{tblr}{width=.8\linewidth,colspec={rX[c]},%
          rows={m,belowsep=0pt,abovesep=15pt},%rowsep=15pt,%rows={m},
          hline{2-7}={2}{.4pt,solid}}
        Name:&\@author\\
        ID:&\SWFU@Studid\\
        Subject:&\SWFU@Subject\\
        Instructor (title):&\SWFU@Advisor{} (\SWFU@AdvisorTitle{})\\
        &\\
        Date:&\SWFU@Date\\
      \end{tblr}
    \end{Large}
    \vfill
    {\Large\bfseries  Academic Affairs Office, SWFU}\\[1cm]
  \end{center}
  \clearpage}

\newcommand{\instructionpage}{% Instruction page
  \begin{center}
    \LARGE\bfseries Instruction
  \end{center}
  \vskip 5ex
  \begin{itemize}
  \item The content of the opening report must be truthful from facts, fill
     it's carefully one by one, and express clearly and extremely
     through careful way. Mainly key words should be expressed in
     both Chinese and English, and the full name of the abbreviation
     that appears for the first time must be noted.

  \item The opening report needs to be printed by you, all in A4 format,
     bound into a book on the left. If there are not enough spaces in
     each column, please add pages by yourself.

  \item The opening report must be completed before the start of the
     eighth semester.

  \item The opening report should be put into the graduation thesis
     (design) portfolio of Southwest Forestry University.
  \end{itemize}
  \clearpage}

\newcommand\mkhead{
  \begin{singlespace}
    \noindent
    \begin{tblr}{width=\linewidth, colspec={cccccX[c]}, hlines, vlines,%
        rows={m}, cell{1}{1}={r=3}{m}, cell{4}{2}={c=6}{m,l},%
      }
      {Instructors\\info}&Name&Gender&Age&Degree&Position (Title)&Employer\\
      &\SWFU@Advisor&\SWFU@AdvisorGender&\SWFU@AdvisorAge&%
      \SWFU@AdvisorDegree&\SWFU@AdvisorTitle&\SWFU@AdvisorFrom\\
      &&&&&&\\
      {Project\\source}&%
      {\qquad\SWFU@PrjFrmA{}\;Funded research project\\
      \qquad\SWFU@PrjFrmB{}\;Social practice\\
      \qquad\SWFU@PrjFrmC{}\;Undergraduate Innovation and Entrepreneurship Project\\
      \qquad\SWFU@PrjFrmD{}\;Other source}\\
    \end{tblr}
  \end{singlespace}
}

\newcommand\mktail{%
  \section{The instructor's opinion}

  \SWFU@AdvisorComment\par
  \begin{flushright}
    \begin{tblr}{width=.3\linewidth,colspec={rX}}%
      Signature:&\SWFU@AdvisorSig\\
      Date:&{\purisa\SWFU@Date}\\
    \end{tblr}
  \end{flushright}\par
  \bigskip  
  \noindent%
  \begin{tblr}{width=\linewidth,colspec={XX},hline{1,7}={solid},vlines,%
      row{1}={h,l,font=\small}, row{5-6}={f,r},
    }
    {Department approval:}&{School approval:}\\
    &\\
    &\\
    &\\
    \makebox[15em][l]{Signature:}&\makebox[15em][l]{Signature:}\\
    \makebox[13em][l]{Date:}&\makebox[13em][l]{Date:}\\
  \end{tblr}
}

\newcommand{\front}{%
  \SWFUtitlepage{}
  \instructionpage{}
  \mkhead{}
}
