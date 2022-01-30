(defun docker-setup ()
  (yas-minor-mode +1)
  (smartparens-mode +1)
  )
(add-hook 'docker-mode-hook 'docker-setup)
(global-set-key (kbd "C-c d") 'docker)

(provide 'init-docker)
