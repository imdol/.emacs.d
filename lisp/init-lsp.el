;; LSP settings
(require 'lsp-mode)
(with-eval-after-load 'lsp-mode
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  (setq
   ;; basics
   lsp-auto-configure t
   lsp-enable-file-watchers nil
   lsp-enable-symbol-highlighting nil
   lsp-auto-configure t
   lsp-print-performance nil
   lsp-auto-guess-root nil
   lsp-response-timeout 4
   lsp-prefer-flymake nil
   ;; help
   lsp-eldoc-render-all t
   lsp-eldoc-enable-hover t

   ;; completion
   lsp-enable-snippet t
   lsp-enable-completion-at-point t

   ;; jumping
   lsp-enable-xref t)
  ;; company LSP settings
  (setq
   company-lsp-enable-snippet t)
  )
(provide 'init-lsp)
