(TeX-add-style-hook
 "bigexit"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "varwidth" "crop")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "wx672fonts")
   (LaTeX-add-environments
    '("codeblock" LaTeX-env-args ["argument"] 0)))
 :latex)

