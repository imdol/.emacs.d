;; LSP config here for future use
(require 'lsp-mode)
(require 'company-lsp)
(push 'company-lsp company-backends)

;; lsp settings
(setq
 lsp-enable-snippet t
 lsp-print-performance nil
 lsp-auto-guess-root nil
 lsp-eldoc-enable-hover t
 lsp-eldoc-render-all t
 lsp-auto-configure t
 lsp-prefer-flymake nil
 lsp-response-timeout 4
 )

;; company lsp settings
(setq
 company-lsp-enable-snippet t
 )

(provide 'init-lsp)
