;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; don't store any backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

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

;; show matching parens
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; disable extraneous bloat
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; display line numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; refresh buffers when any file changes
(global-auto-revert-mode t)

;; faster y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; iedit
(global-set-key (kbd "C-:") 'iedit-mode)

;; macros
(global-set-key (kbd "M-[") 'kmacro-start-macro)
(global-set-key (kbd "M-]") 'kmacro-end-macro)

;; set backspace char deletes to hungry
(setq backward-delete-char-untabify-method 'hungry)

;; eshell alias
(defalias 'esh 'eshell)

;; multi-term
(setq multi-term-program "/bin/bash")
(defalias 'msh 'multi-term)

;; rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; doom mode-line
(doom-modeline-init)
;;(display-time-mode 1)

;; truncate path
(setq doom-modeline-buffer-file-name-style 'truncate-upto-project)

;; no font caches during GC
(setq inhibit-compacting-font-caches t)

;; coin ticker
(require 'coin-ticker)
(setq coin-ticker-syms '("BTC" "ETH"))
(coin-ticker-mode 1)

;;;; OSX SETTINGS ;;;;

;; for mac keyboards
;; (setq mac-option-key-is-meta nil)
;; (setq mac-command-key-is-meta t)
;; (setq mac-command-modifier 'meta)
;; (setq mac-option-modifier nil)

;; set to zsh if you want
;; (setq multi-term-program "/bin/zsh")

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

;;;; OSX SETTINGS ;;;;

(provide 'init-basic-env)
