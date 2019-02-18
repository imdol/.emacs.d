;; hook projectile mode to programming modes
;;(add-hook 'prog-mode-hook 'projectile-mode)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; use helm for projectile completion
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; additional ignored directories to be added to projectile globally ignored directories
(setq additional-ignored-directories '("node_modules" "elpa"
				       ))
(setq projectile-globally-ignored-directories (append projectile-globally-ignored-directories additional-ignored-directories))

;; additional ignored files to be added to projectile globally ignored files
(setq additional-ignored-files '("*.png" "*.jpg" "*.md"
				 "polyfills.js" "package.json" "package-lock.json"
                                 "*.dll" "*.targets" "*.props" "*.pdb" "*.deps.json" "*.exe"
                                 "*.linux-x86_64" "*.gz"
				 ".gitignore"))
(setq projectile-globally-ignored-files (append projectile-globally-ignored-files additional-ignored-files))

;; caching projectile
(setq projectile-enable-caching t)

(provide 'init-projectile)
