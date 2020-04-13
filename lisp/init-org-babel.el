(defun org-babel-mode-setup ()
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((C . t)
     (python . t)
     (emacs-lisp . t)
     (perl . t)
     (js . t)
     ))
  (require 'org-tempo)
  (smartparens-mode +1)
  (yas-minor-mode)
  (org-bullets-mode +1)
  
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (add-hook 'completion-at-point-functions 'pcomplete-completions-at-point nil t)
  )

(add-hook 'org-mode-hook 'org-babel-mode-setup)

(provide 'init-org-babel)
