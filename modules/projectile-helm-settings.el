;; projectile and helm settings here

;; hook projectile mode to programming modes
(add-hook 'prog-mode-hook 'projectile-mode)

;; use helm for projectile completion
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; use helm buffer list because it's better
(global-set-key (kbd "C-x b") 'helm-buffers-list)
