;;; ALL THINGS RELATED TO ENV AND KEY-BINDINGS GO HERE!
;;; THIS INCLUDES PACKAGES LIKE expand-region.el BUT NOT THINGS LIKE NEOTREE

;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; don't store any backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(setq backup-directory-alist
	  `(("." . ,(concat user-emacs-directory "backups"))))

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
(setq visible-bell 1)

;; delete section default
(delete-selection-mode 1)

;; usefull shortcuts
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)

;; enable visual-line-mode
;(global-visual-line-mode t)

;; line and column numbering
(column-number-mode 1)
(line-number-mode 1)

;; faster to quit
(fset 'yes-or-no-p 'y-or-n-p)

;; disable extraneous bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; prettify all symbols
(global-prettify-symbols-mode 1)

;; indentation
(setq-default tab-width 4)
(setq standard-indent 4)

;; display matching parenthesis
(show-paren-mode 1)

;; refresh buffers when any file change
(global-auto-revert-mode t)

;; color identifiers mode
;(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; log files to use json mode
(add-to-list 'auto-mode-alist '("\\.log\\'" . json-mode))
