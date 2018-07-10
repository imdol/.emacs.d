;; projectile and helm settings here
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key (kbd "C-x b") 'helm-buffers-list)
