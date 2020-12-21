;; hook projectile mode to programming modes
(use-package projectile
  :defer t
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :config
  (setq projectile-completion-system 'helm)
  (helm-projectile-on)
  (setq additional-ignored-directories '("node_modules" "elpa" ".next" "python3.8"))
  (setq projectile-globally-ignored-directories (append projectile-globally-ignored-directories additional-ignored-directories))
  (setq additional-ignored-files '("*.png" "*.jpg" "*.md"
				 "polyfills.js" "package.json" "package-lock.json"
                                 "*.dll" "*.targets" "*.props" "*.pdb" "*.deps.json" "*.exe"
                                 "*.linux-x86_64" "*.gz"
				 ".gitignore"))
  (setq projectile-enable-caching t)
  (projectile-mode +1)
  )

(provide 'init-projectile)
