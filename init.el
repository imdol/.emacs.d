;; https://debbugs.gnu.org/34341 bug report...
;;(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; 100MB garbage collection threshold
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
;; collection thresholds
;; (let ((normal-gc-cons-threshold (* 20 1024 1024))
;;       (init-gc-cons-threshold (* 128 1024 1024)))
;;   (setq gc-cons-threshold init-gc-cons-threshold)
;;   (add-hook 'emacs-startup-hook
;; 	    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(let ((file-name-handler-alist nil)) 
  ;; MELPA package
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)
  
  ;; extend load path for .el
  (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
  
  ;; load custom config
  (setq custom-file "~/.emacs.d/custom.el")
  (load custom-file)
  
  ;; custom themes that are not available on MELPA
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
  (load-theme `tron-legacy t)

  ;; install packages if they're missing
  (unless package-archive-contents
    (package-refresh-contents)
    (package-install-selected-packages))

  ;; benchmarking startup
  (require 'benchmark-init)
  (add-hook 'after-init-hook 'benchmark-init/deactivate)
  
  ;; load configs
  (require 'init-sys-env)
  ;;(require 'init-evil)
  (require 'init-prog-env)
  (require 'init-company)
  (require 'init-helm)
  (require 'init-swiper)
  (require 'init-smartparens)
  (require 'init-py)
  (require 'init-elisp)
  (require 'init-flycheck)
  (require 'init-restclient)
  (require 'init-magit)
  (require 'init-pug)
  (require 'init-c)
  (require 'init-cc)
  (require 'init-go)
  (require 'init-js)
  (require 'init-omnisharp)
  (require 'init-web)
  (require 'init-sh)
  (require 'init-avy)
  (require 'init-hydra)
  (require 'init-window-frames)
  (require 'init-projectile)
  (require 'init-treemacs)
  (require 'init-nginx)
  (require 'init-json)
  (require 'init-org-babel)
  (require 'init-md4rd)
  (require 'init-lc)
;;  (require 'init-msh)
  (require 'init-vterm)
;;  (require 'init-centaur)
  (require 'init-graphql)
  (require 'init-spotify)
  (require 'init-lsp)
  )
