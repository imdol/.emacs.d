;; disable splash screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; don't store any backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq create-lockfiles nil)

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

;; disable extraneous bloat
(menu-bar-mode -1)
(tool-bar-mode -1)

;; disable scroll and disable it on new frames too
(toggle-scroll-bar -1)
(defun my/disable-scroll-bars (frame)
  (modify-frame-parameters frame
                           '((vertical-scroll-bars . nil)
                             (horizontal-scroll-bars . nil))))
(add-hook 'after-make-frame-functions 'my/disable-scroll-bars)

;; display line numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; refresh buffers when any file changes
(global-auto-revert-mode t)

;; faster y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; doom mode-line
(doom-modeline-init)
;;(display-time-mode 1)

;; truncate path
(setq doom-modeline-buffer-file-name-style 'truncate-upto-project)

;; no font caches during GC
(setq inhibit-compacting-font-caches t)

;; coin ticker
;;(require 'coin-ticker)
;;(setq coin-ticker-syms '("BTC" "ETH"))
;;(coin-ticker-mode 1)

;;;; OSX SETTINGS ;;;;

;; for mac keyboards
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

;;;; OSX SETTINGS ;;;;

(provide 'init-sys-env)
