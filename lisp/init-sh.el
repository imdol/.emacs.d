(defun shell-mode-setup ()
  (yas-minor-mode)
  (setq indent-tabs-mode nil)
  )

(add-hook 'sh-mode-hook 'shell-mode-setup)

(provide 'init-sh)
