;;; ALL THINGS RELATED TO ENV AND KEY-BINDINGS GO HERE!
;;; THIS INCLUDES PACKAGES LIKE expand-region.el BUT NOT THINGS LIKE NEOTREE

;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; store all backup and autosaves in a tmp dir
;(setq backup-directory-alist
;	  `((".*" . "~/.saves")))
;(setq auto-save-file-name-transforms
;	  `((".*" "~/.saves" t)))

;; don't store any backup files
(setq make-backup-files nil)

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
(setq visible-bell 1)

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

;; ace-window to move around windows
(global-set-key (kbd "C-x o") 'ace-window)

;; set keys for ace-window 
(defvar aw-dispatch-alist
  '((?x aw-delete-window "Delete Window")
	(?m aw-swap-window "Swap Windows")
	(?M aw-move-window "Move Window")
	(?j aw-switch-buffer-in-window "Select Buffer")
	(?n aw-flip-window)
	(?u aw-switch-buffer-other-window "Switch Buffer Other Window")
	(?c aw-split-window-fair "Split Fair Window")
	(?v aw-split-window-vert "Split Vert Window")
	(?b aw-split-window-horz "Split Horz Window")
	(?o delete-other-windows "Delete Other Windows")
	(?? aw-show-dispatch-help))
  "List of actions for `aw-dispatch-default'.")
