;; 100MB garbage collection threshold
(setq gc-cons-threshold 100000000)

;; garbage collection thresholds
;;(let ((normal-gc-cons-threshold (* 20 1024 1024))
;;      (init-gc-cons-threshold (* 128 1024 1024)))
;;  (setq gc-cons-threshold init-gc-cons-threshold)
;;  (add-hook 'emacs-startup-hook
;;            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; MELPA package
(require 'package)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; extend load path for .el
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; load custom config
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; benchmarking startup
(require 'benchmark-init)
(add-hook 'after-init-hook 'benchmark-init/deactivate)

;; load configs
(require 'init-basic-env)
(require 'init-company)
(require 'init-helm)
(require 'init-swiper)
(require 'init-smartparens)
(require 'init-anaconda)
(require 'init-elisp)
;;(require 'init-lsp)
(require 'init-flycheck)
(require 'init-restclient)
(require 'init-magit)
(require 'init-pug)
(require 'init-clang)
(require 'init-tide)
(require 'init-omnisharp)
(require 'init-web)
(require 'init-avy)
(require 'init-hydra)
(require 'init-ace-window)
(require 'init-projectile)
(require 'init-neotree)
(require 'init-json)
