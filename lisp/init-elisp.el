(defun elisp-mode-setup ()
  (yas-minor-mode)
  )

(add-hook 'emacs-lisp-mode-hook 'elisp-mode-setup)

(provide 'init-elisp)
