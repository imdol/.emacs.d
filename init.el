;; 100MB garbage collection threshold
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(setq byte-compile-warnings '(cl-functions))
;; collection thresholds
;; (let ((normal-gc-cons-threshold (* 20 1024 1024))
;;       (init-gc-cons-threshold (* 128 1024 1024)))
;;   (setq gc-cons-threshold init-gc-cons-threshold)
;;   (add-hook 'emacs-startup-hook
;; 	    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

;; benchmarking startup
(require 'benchmark-init)
(add-hook 'after-init-hook 'benchmark-init/deactivate)

(let ((file-name-handler-alist nil))
  (setq custom-file (concat user-emacs-directory "custom.el"))
  (when (file-exists-p custom-file)
    (load custom-file))

  ;; MELPA package
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)

  ;; extend load path for .el
  (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

  ;; install packages if they're missing
  (unless package-archive-contents
    (package-refresh-contents)
    (package-install-selected-packages))

  ;; sys settings
  (require 'init-sys-env)
  (require 'init-window-frames)
  (require 'init-vterm)

  ;; macros
  (require 'init-hydra)

  ;; prog settings
  (require 'init-prog-env)
  (require 'init-treesitter)

  ;; UI
  (require 'init-orderless) ;; regex completion for completing-read and child buffers
  (require 'init-vertico) ;; completing-read minibuffer list commands
  (require 'init-marginalia) ;; completing-read minibuffer annotations
  (require 'init-consult) ;; completing-read minibuffer enhancements
  (require 'init-embark) ;;
  (require 'init-corfu) ;; child buffer for CAPFs
  ;; (require 'init-company)

  ;; parens
  (require 'init-smartparens)

  ;; file tree
  (require 'init-treemacs)

  ;; projects
  (require 'init-project)

  ;; VC
  (require 'init-magit)

  ;; syntax + linting
  (require 'init-flymake)
  ;; (require 'init-flycheck)  

  ;; CAPF providers
  (require 'init-lsp)

  ;; lang modes
  (require 'init-c)
  (require 'init-cc)
  (require 'init-py)
  (require 'init-go)
  (require 'init-js)
  (require 'init-ts)
  (require 'init-protobuf)
  (require 'init-omnisharp)
  (require 'init-elisp)
  (require 'init-sh)
  (require 'init-web)
  (require 'init-nginx)
  (require 'init-json)
  (require 'init-docker)
  (require 'init-org-babel)
  (require 'init-dotenv)
  
  ;; integrations
  (require 'init-lc)
  (require 'init-restclient)
  (require 'init-spotify)
  ;; (require 'init-evil)

  )
