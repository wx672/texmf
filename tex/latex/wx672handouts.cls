\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672handouts}

\LoadClass[a4paper,10pt]{article}

\DeclareOption{cjk}{%
  \PassOptionsToPackage{\CurrentOption}{wx672fonts}}
\ProcessOptions\relax

\RequirePackage{wx672h}
