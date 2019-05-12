;; nginx mode setup
(defun setup-nginx-mode ()
  (setq nginx-indent-level 2)
  (smartparens-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (eval-after-load 'nginx-mode
    '(add-hook 'nginx-mode-hook #'company-nginx-keywords))
  )

(add-hook 'nginx-mode-hook 'setup-nginx-mode)

(provide 'init-nginx)
