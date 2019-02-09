;;(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable flycheck for emacs lisp
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

;; the default value was '(save idle-change new-line mode-enabled)
;; having this enabled only checks syntax on SAVE
(setq flycheck-check-syntax-automatically '(save mode-enable))

(provide 'init-flycheck)
