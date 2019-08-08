;;(add-to-list 'load-path "~/.emacs.d/tba_elpa/company-graphql")

(defun setup-graphql-mode ()
  (smartparens-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
;;  (add-to-list 'company-backends 'company-graphql)
  )

(add-hook 'graphql-mode-hook 'setup-graphql-mode)

(provide 'init-graphql)
