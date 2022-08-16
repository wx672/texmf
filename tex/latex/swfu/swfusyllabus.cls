\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfusyllabus}

\LoadClass[oneside,scheme=chinese,zihao=5]{ctexart}

\ctexset{%
  today=old,%
  % punct=kaiming,
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
a4paper,%
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
