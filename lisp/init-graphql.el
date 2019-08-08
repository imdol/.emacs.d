(defun setup-graphql-mode ()
  (setq tab-width 4)
  (setq standard-indent 4)
  (smartparens-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (add-to-list 'company-backends 'company-graphql)
  )

(add-hook 'graphql-mode-hook 'setup-graphql-mode)

(provide 'init-graphql)
