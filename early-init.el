;; disable splash screen
(setq-default
 inhibit-splash-screen t
 inhibit-startup-message t
 initial-scratch-message nil
 )
(setq-default initial-scratch-message
	      (concat ";; happy hacking " user-login-name ""))

;; don't store any backup files
(setq-default
 make-backup-files nil
 backup-inhibited t
 auto-save-default nil
 create-lockfiles nil)

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
;; (setq-default visible-bell 1)

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

(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; display line numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)
;; (setq display-line-numbers-type 'relative)

;; refresh buffers when any file changes
(global-auto-revert-mode t)

;; faster y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; no font caches during GC
;;(setq-default inhibit-compacting-font-caches t)

;; OSX settings
;; for mac keyboards
 ;; (setq-default mac-option-key-is-meta nil
 ;;  mac-command-key-is-meta t
 ;;  mac-command-modifier 'meta
 ;;  mac-option-modifier nil)

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))
