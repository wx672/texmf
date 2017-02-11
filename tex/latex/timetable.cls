\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{timetable}

\LoadClass[tikz,svgnames]{standalone}

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\defaultfontfeatures{Mapping=tex-text}
\setsansfont{DejaVu Sans}
\setmainfont{DejaVu Serif}

\RequirePackage{xeCJK}
\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKmonofont{Noto Sans Mono CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{kai}{Adobt Kaiti Std} % e.g. \CJKfamily{kai}
\setCJKfamilyfont{xingkai}{FZXingKai-S04S} % e.g. \CJKfamily{kai}
\newCJKfontfamily\quotefont{Adobt Kaiti Std}

\usetikzlibrary{calc,positioning,
  arrows,shapes,patterns,
  decorations.pathmorphing,
  backgrounds, fit,
  trees,
}

\newcommand{\Term}[1]{\gdef\TT@Term{#1}}
\newcommand{\Teacher}[1]{\gdef\TT@Teacher{#1}}
\newcommand{\class}[5]{\node[#1] at (#2) {#3\\{\scriptsize #4}\\{\small #5}};}

\newcommand{\daywidth}{5cm}%
\newcommand{\hourlength}{1cm}%

\tikzset{%
  help lines/.style={very thin,dotted},%
  day/.style={draw, rectangle, anchor=south west, fill=gray!20,%
    minimum width=\daywidth, minimum height=1cm, node font=\bfseries\Large},
  class/.style={rectangle, anchor=north west, rounded corners=10pt,%
    minimum width=\daywidth, minimum height=5/3*\hourlength,%
    text centered, text width=\daywidth},
  lecture/.style={class, fill=red!30},%
  lab/.style={class, fill=Green!20}%
}%

\newenvironment{timetable}
{%
  \begin{tikzpicture}[remember picture,%overlay,%
    x=\daywidth, y=-\hourlength,%
    node distance=0cm, outer sep=0pt, inner sep=1pt,%
    ]%

    % draw grids
    \draw[help lines] (1,8) grid[xstep=\daywidth,ystep=2*\hourlength] (6,23);

    % Draw time ticks
    \foreach \h in {8,9,...,23} \draw [ultra thin] (1,\h) -- ++(-5pt,0); % Hours
    \foreach \hh in {8.5,9.5,...,22.5} \draw [ultra thin] (1,\hh) --
    ++(-3pt,0); % Half hours
    %\foreach \hl in {8,9,...,23} \draw [ultra thin,dotted] (1,\hl) -- ++(5,0); % Hour line

    \foreach \h/\htext in {%
      8/{08:00},9/{09:00},10/{10:00},11/{11:00},12/{12:00},13/{13:00},14/{14:00},15/{15:00},%
      16/{16:00},17/{17:00},18/{18:00},19/{19:00},20/{20:00},21/{21:00},22/{22:00},23/{23:00}%
    } \draw [ultra thin] (1,\h) -- ++(-3pt,0) node[left=3pt,font=\scriptsize] {\htext};%

    % Header line (week days)
    \node[day] (monday) at (1,8) {Monday};%
    \node[day] (tuesday) [right = of monday] {Tuesday};%
    \node[day] (wednesday) [right = of tuesday] {Wednesday};%
    \node[day] (thursday) [right = of wednesday] {Thursday};%
    \node[day] (friday) [right = of thursday] {Friday};%

    \node [above=of monday.north west,anchor=south west,align=left] {Semester: \TT@Term};%
    \node [above=of friday.north east,anchor=south east,align=right] {\TT@Teacher};%
  }{%
  \end{tikzpicture}%
}%
