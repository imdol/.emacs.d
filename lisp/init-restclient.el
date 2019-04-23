(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))

(defun setup-restclient-mode ()
  (setq tab-width 4)
  (setq standard-indent 4)
  (smartparens-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (add-to-list 'company-backends 'company-restclient)
  )

(add-hook 'restclient-mode-hook 'setup-restclient-mode)

(provide 'init-restclient)
