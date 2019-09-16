;; disable splash screen
(setq-default
 inhibit-splash-screen t
 inhibit-startup-message t
 initial-scratch-message nil)

;; don't store any backup files
(setq-default
 make-backup-files nil
 backup-inhibited t
 auto-save-default nil
 create-lockfiles nil)

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
(setq-default visible-bell 1)

;; cursor and  beacon-mode 
(setq-default
 blink-cursor-interval 0.5
 beacon-color "#980093"
 beacon-blink-duration 0.4
 beacon-size 15)

(add-hook 'prog-mode-hook 'beacon-mode)

;; delete section default
(delete-selection-mode 1)

;; set kill ring buffer max
(setq-default kill-ring-max 20)

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
(setq-default doom-modeline-buffer-file-name-style 'truncate-upto-project)

;; no font caches during GC
(setq-default inhibit-compacting-font-caches t)

;; coin ticker
;;(require 'coin-ticker)
;;(setq coin-ticker-syms '("BTC" "ETH"))
;;(coin-ticker-mode 1)

;;;; OSX SETTINGS ;;;;

;; for mac keyboards
(setq-default mac-option-key-is-meta nil
 mac-command-key-is-meta t
 mac-command-modifier 'meta
 mac-option-modifier nil)

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

;;;; OSX SETTINGS ;;;;

(provide 'init-sys-env)
