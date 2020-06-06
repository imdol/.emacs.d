;; LSP settings
(with-eval-after-load 'lsp-mode
  (setq
   lsp-enable-file-watchers nil
   lsp-enable-snippet nil
   lsp-enable-completion-at-point nil
   lsp-enable-symbol-highlighting nil
   
   lsp-print-performance nil
   lsp-auto-guess-root nil
   lsp-eldoc-enable-hover t
   lsp-eldoc-render-all t
   lsp-auto-configure t
   lsp-prefer-flymake nil
   lsp-response-timeout 4
   )
  ;; company LSP settings
  (setq
   company-lsp-enable-snippet t
   ))



(provide 'init-lsp)
