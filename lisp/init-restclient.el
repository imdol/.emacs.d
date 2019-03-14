(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))

(defun setup-restclient-mode ()
  (smartparens-mode +1)
  (company-mode +1)
  (add-to-list 'company-backends 'company-restclient)
  )

(add-hook 'restclient-mode-hook 'setup-restclient-mode)

(provide 'init-restclient)
