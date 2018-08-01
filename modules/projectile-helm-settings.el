;; projectile and helm settings here

;; hook projectile mode to programming modes
(add-hook 'prog-mode-hook 'projectile-mode)

;; use helm for projectile completion
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; use helm buffer list because it's better
(global-set-key (kbd "C-x b") 'helm-buffers-list)

;; additional ignored directories to be added to projectile globally ignored directories
(setq additional-ignored-directories '("node_modules"
									   "dirty_dawgs"))
(setq projectile-globally-ignored-directories (append projectile-globally-ignored-directories additional-ignored-directories))

;; additional ignored files to be added to projectile globally ignored files
(setq additional-ignored-files '("*.png"
								 "*.jpg"
								 "*.md"
								 "polyfills.js"
								 "package.json"
								 "package-lock.json"
								 ".gitignore"))
(setq projectile-globally-ignored-files (append projectile-globally-ignored-files additional-ignored-files))
