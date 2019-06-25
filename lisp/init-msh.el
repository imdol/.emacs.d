;; multi-term
(setq multi-term-program "/bin/bash")
(defalias 'msh 'multi-term)

;; set to zsh if you want
;; (setq multi-term-program "/bin/zsh")

(defun setup-msh-mode ()
  (add-to-list 'term-bind-key-alist '("C-c C-j" . term-line-mode))
  (add-to-list 'term-bind-key-alist '("C-c C-k" . term-char-mode))
  (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
  (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))
  )

(add-hook 'term-mode-hook 'setup-msh-mode)

(provide 'init-msh)
