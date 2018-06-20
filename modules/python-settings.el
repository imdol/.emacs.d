;; python settings, using anaconda mode
(add-hook 'python-mode-hook 'anaconda-mode)

;; enable eldoc
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; use company-anaconda
(eval-after-load "company"
 '(add-to-list 'company-backends 'company-anaconda))
