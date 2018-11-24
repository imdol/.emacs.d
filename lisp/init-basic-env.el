;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; don't store any backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; maximize screen on startup
;(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
(setq visible-bell 1)

;; delete section default
(delete-selection-mode 1)

;; usefull shortcuts
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)

;; line and column numbering
(column-number-mode 1)
(line-number-mode 1)

;; disable extraneous bloat
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; refresh buffers when any file changes
(global-auto-revert-mode t)

;; faster y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; iedit
(global-set-key (kbd "C-:") 'iedit-mode)

;; multi-term
(require 'multi-term)
(setq multi-term-program "/bin/bash")
(defalias 'msh 'multi-term)

;; rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'init-basic-env)
