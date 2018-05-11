;; require and turn on flycheck globally
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable flycheck for emacs lisp
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

(custom-set-variables
 '(flycheck-typescript-tslint-config "~/tslint.json"))

