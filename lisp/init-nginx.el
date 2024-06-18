;; nginx mode setup
(defun setup-nginx-mode ()
  (setq nginx-indent-level 2)
  )

(add-hook 'nginx-mode-hook 'setup-nginx-mode)

(provide 'init-nginx)
