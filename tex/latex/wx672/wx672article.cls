% Obsolete! Use wx672ctexart.cls instead.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672article}

\LoadClass{article}

\DeclareOption{cjk}{%
  \PassOptionsToPackage{\CurrentOption}{wx672fonts}}
\ProcessOptions\relax

\RequirePackage{wx672a}

