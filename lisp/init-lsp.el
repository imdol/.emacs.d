;; LSP config here for future use
(require 'lsp-mode)
(require 'company-lsp)
(push 'company-lsp company-backends)
(setq company-lsp-enable-snippet nil)

(provide 'init-lsp)
