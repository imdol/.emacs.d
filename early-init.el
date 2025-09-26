(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 16 1024 1024) ; 16mb
                  gc-cons-percentage 0.1)))

(setq-default inhibit-splash-screen t)
(setq-default initial-scratch-message
	      (concat ";; if you stay long enough, you can do anything " user-login-name ""))

(menu-bar-mode -1)
(tool-bar-mode -1)
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode 1)

(setenv "LSP_USE_PLISTS" "true")

(global-display-line-numbers-mode t)
(column-number-mode t)
(global-auto-revert-mode t)

(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)
(global-set-key (kbd "M-e") 'forward-paragraph)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; OSX settings
;; for mac keyboards
;; (setq-default mac-option-key-is-meta nil
;;  mac-command-key-is-meta t
;;  mac-command-modifier 'meta
;;  mac-option-modifier nil)

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))
