;; hook relevant modes
(add-to-list 'auto-mode-alist '("\\.js\\'" . js-ts-mode))

(defun js-lsp-setup ()
  (setq-local standard-indent 2)
  (setq-default
   js2-basic-offset 2
   js-indent-align-list-continuation nil)
  (setq
   tab-width 2
   indent-tabs-mode nil)
  
  (emmet-mode +1)
  (setq emmet-expand-jsx-className? t)
  (yas-global-mode +1)
  (hungry-delete-mode +1)
  (flymake-mode +1)

  ;; dap-mode
  (dap-mode 1)
  (require 'dap-node)

  (define-key js-mode-map (kbd "M-.") nil)
  )

;; set up tide mode after js2 mode 
;;(add-hook 'rjsx-mode-hook #'setup-tide-mode)
(add-hook 'js-ts-mode-hook 'js-lsp-setup)
(add-hook 'js-ts-mode-hook 'lsp-deferred)

(provide 'init-js)
