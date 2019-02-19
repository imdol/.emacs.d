(defun elisp-mode-setup ()
  (company-mode +1)
  (smartparens-mode +1)
  (yas-minor-mode)
  )

(add-hook 'emacs-lisp-mode-hook 'elisp-mode-setup)

(provide 'init-elisp)


