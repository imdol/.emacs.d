;; LSP settings
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
;;  :bind (("M-." . lsp-find-definition))
  :config
  (lsp-enable-which-key-integration t)
  :custom
  (lsp-headerline-breadcrumb-enable nil)
  (lsp-enable-file-watchers nil)
  (lsp-auto-guess-root nil)
  (lsp-response-timeout 4)
  (lsp-prefer-flymake nil)
  (lsp-enable-xref t)
  )

;; (with-eval-after-load 'lsp-mode
;;   (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
;;   (setq
;;    ;; basics
;;    lsp-auto-configure t
;;    lsp-enable-file-watchers nil
;;    lsp-enable-symbol-highlighting nil
;;    lsp-auto-configure t
;;    lsp-print-performance nil
;;    lsp-auto-guess-root nil
;;    lsp-response-timeout 4
;;    lsp-prefer-flymake nil
   
;;    ;; help
;;    lsp-eldoc-render-all nil
;;    lsp-eldoc-enable-hover t
   
;;    ;; completion
;;    lsp-prefer-capf t
;;    lsp-idle-delay 0.2
;;    lsp-enable-snippet t
;;    lsp-enable-completion-at-point t
   
;;    ;; jumping
;;    lsp-enable-xref t

;;    ;; performance
;;    lsp-print-performance t)
;;   )

;; (setq eldoc-idle-delay 0)
(provide 'init-lsp)
