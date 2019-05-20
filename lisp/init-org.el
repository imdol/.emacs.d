(defun org-mode-setup ()
  (smartparens-mode +1)
  (yas-minor-mode)

  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (add-hook 'completion-at-point-functions 'pcomplete-completions-at-point nil t)
  )

(add-hook 'org-mode-hook 'org-mode-setup)

(provide 'init-org)
