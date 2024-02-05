;; spotify consult frontend
(use-package consult-spotify
  :ensure t
  :defer t
  )

;; bind unbound espotify commands
(global-set-key (kbd "C-c s f") 'espotify-next)
(global-set-key (kbd "C-c s b") 'espotify-previous)

(provide 'init-spotify)
