\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672ctexart}

\LoadClass[oneside,scheme=chinese,zihao=5]{ctexart}

\ctexset{  
  % punct=kaiming,
  section/format = \Large\bfseries,
}

\RequirePackage{wx672common,wx672nerd,libertine}

%https://tex.stackexchange.com/questions/572212/substituting-fonts-for-emojis-in-lualatex
%https://newbedev.com/is-there-a-way-to-get-u-2114-without-china2e-in-lualatex
\directlua{luaotfload.add_fallback
  ("genericfallback", {"NotoSans Nerd Font:mode=node;"})}

% Liberation fonts is a drop-in replacement for Microsoft Times, Arial and Courier fonts
% \setmainfont{Liberation Serif}%[RawFeature={fallback=genericfallback}]
% \setsansfont{DejaVu Sans Mono}%[RawFeature={fallback=genericfallback}]
% \setmonofont{JetBrainsMono Nerd Font}%
% \setmonofont{FiraCode Nerd Font Mono}[RawFeature={fallback=genericfallback}]%\ttfamily

\ctexset{today=old}

