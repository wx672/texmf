\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672article}

\LoadClass[12pt,a4paper]{article}

\DeclareOption{cjk}{%
  \PassOptionsToPackage{\CurrentOption}{wx672fonts}}
\ProcessOptions\relax

\RequirePackage{wx672a}

