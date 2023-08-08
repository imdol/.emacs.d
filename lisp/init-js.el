;; hook relevant modes
(add-to-list 'auto-mode-alist '("\\.js\\'" . js-ts-mode))

(defun js-lsp-setup ()
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
  (flycheck-mode +1)
  (smartparens-mode +1)

  ;; dap-mode
  (dap-mode 1)
  (require 'dap-node)

  (define-key js-mode-map (kbd "M-.") nil)
  )

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; set up tide mode after js2 mode 
;;(add-hook 'rjsx-mode-hook #'setup-tide-mode)
(add-hook 'js-ts-mode-hook 'js-lsp-setup)
(add-hook 'js-ts-mode-hook 'lsp-deferred)

(provide 'init-js)
