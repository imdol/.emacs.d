;; LSP settings
(use-package lsp-mode
  :defer t
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")

  :config
  (lsp-enable-which-key-integration t)
  (setq
   ;; basics
   lsp-auto-configure t
   lsp-enable-file-watchers nil
   lsp-enable-symbol-highlighting t
   lsp-enable-folding t
   lsp-enable-symbol-highlighting t
   lsp-auto-guess-root nil

   ;; UI
   lsp-headerline-breadcrumb-enable nil
   
   ;; jumping 
   lsp-enable-xref t

   ;; linting
   lsp-prefer-flymake t
   lsp-response-timeout 5
   lsp-lens-enable nil

   ;;completion
   lsp-enable-snippet t
   lsp-idle-delay 0.3
   lsp-completion-enable t
   lsp-completion-show-detail t
   
   )

  )
(provide 'init-lsp)
