(defun org-babel-mode-setup ()
 (setq org-ditaa-jar-path "/usr/share/java/ditaa/ditaa-0.11.jar")
  (setq org-latex-toc-command "\\tableofcontents \\clearpage")
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((C . t)
     (python . t)
     (emacs-lisp . t)
     (perl . t)
     (js . t)
     (ditaa . t)
     (restclient . t)
     (typescript . t)
     ))
  (org-bullets-mode +1)
  (display-line-numbers-mode)

  (add-hook 'completion-at-point-functions 'pcomplete-completions-at-point nil t)
  )
(add-hook 'org-mode-hook 'org-babel-mode-setup)

(provide 'init-org-babel)
