;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; usefull shortcuts
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)
(global-set-key [f5] 'eshell)

;; line and column numbering
(column-number-mode 1)
(line-number-mode 1)

;; faster to quit
(fset 'yes-or-no-p 'y-or-n-p)

;; disable extraneous bars
;(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; indentation
(setq-default tab-width 4)
(setq standard-indent 4)

;; display matching parenthesis
(show-paren-mode 1)

;; refresh buffers when any file change
(global-auto-revert-mode t)

;; window-move
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
