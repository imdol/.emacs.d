(defun shell-mode-setup ()
  (smartparens-mode +1)
  (yas-minor-mode)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (setq indent-tabs-mode nil)
  )

(add-hook 'sh-mode-hook 'shell-mode-setup)

(provide 'init-sh)
