;; disable flycheck for emacs lisp
(setq-default
 flycheck-disabled-checkers '(emacs-lisp-checkdoc)
;; the default value was '(save idle-change new-line mode-enabled)
 ;; having this enabled only checks syntax on SAVE
 flycheck-check-syntax-automatically '(save mode-enable))
(global-set-key (kbd "C-c f l") #'flycheck-list-errors)
(global-set-key (kbd "C-c f n") #'flycheck-next-error)
(global-set-key (kbd "C-c f p") #'flycheck-previous-error)

(provide 'init-flycheck)
