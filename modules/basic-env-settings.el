;;; ALL THINGS RELATED TO ENV AND KEY-BINDINGS GO HERE!
;;; THIS INCLUDES PACKAGES LIKE expand-region.el BUT NOT THINGS LIKE NEOTREE

;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

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

;; color identifiers mode
;(add-hook 'after-init-hook 'global-color-identifiers-mode)

;; rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "deep orange"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))


;; expand region keybinding
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; window-move
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
