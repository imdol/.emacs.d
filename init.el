;; Measure the current start up time.
(add-hook
 'emacs-startup-hook
 (lambda ()
   (message "Emacs ready in %s with %d garbage collections."
            (format "%.2f seconds"
                    (float-time
                     (time-subtract after-init-time before-init-time)))
            gcs-done)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; (use-package benchmark-init
;;   :ensure t
;;   :config
;;   ;; To disable collection of benchmark data after init is done.
;;   (add-hook 'after-init-hook 'benchmark-init/deactivate))

;; (setq debug-on-message "Package cl is deprecated") 

(use-package emacs
  :hook
  (prog-mode-hook . hs-minor-mode)
  :bind
  ("C-c C-k" . hs-toggle-hiding)
  ("C-c C-j" . hs-hide-all)
  ("C-c C-l" . hs-show-all)
  ("C-S-k" . kill-whole-line)
  ([C-tab] . other-window)
  :config
  (setq sentence-end-double-space nil)
  (setq dired-kill-when-opening-new-dired-buffer t)
  )

;; decos
(use-package zone
  :ensure nil  
  :defer t
  :config
  (zone-when-idle 60)
  )

(use-package beacon
  :ensure t
  :defer t
  :custom
  (beacon-color "#66B2B2")
  :hook
  (after-init . beacon-mode)
  )

(use-package rainbow-delimiters
  :ensure t
  :defer t
  :hook
  (prog-mode-hook . rainbow-delimiters-mode))

(use-package iedit
  :ensure t
  :defer t
  :bind
  ("C-:" . iedit-mode))

(use-package which-key
  :ensure t
  :defer t
  :custom
  (which-key-idle-delay 0.4)
  :hook
  (after-init . which-key-mode)
  )

(use-package doom-modeline
  :ensure t
  :defer t
  :custom
  (doom-modeline-buffer-file-name-style 'truncate-upto-project)
  :hook
  (after-init . doom-modeline-mode)
  )

(use-package drag-stuff
  :ensure t
  :defer t
  :bind
  ("M-p" . drag-stuff-up)
  ("M-n" . drag-stuff-down))

(use-package smartparens
  :ensure t
  :defer t
  :init
  (smartparens-global-mode)
  ;; (smartparens-global-strict-mode)
  :config
  (sp-pair "`" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))
  )

(use-package expand-region
  :ensure t
  :defer t
  :bind
  ("C-=" . er/expand-region))

(use-package vertico
  :ensure t
  :defer t
  :custom
  (vertico-count 20)
  :hook
  (after-init . vertico-mode)
  )

(use-package orderless
  :ensure t
  :init
  (setq completion-styles '(orderless basic))
  (setq completion-category-overrides '((file (styles basic partial-completion))))
  )

(use-package marginalia
  :ensure t
  :defer t
  ;; Bind `marginalia-cycle' locally in the minibuffer. To make the binding
  ;; available in the *Completions* buffer, add it to the
  ;; `completion-list-mode-map'.
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  ;; The :init section is always executed.
  :init
  (marginalia-mode)
  )

(use-package project
  :bind-keymap
  ("C-c p" . project-prefix-map)
  )

;; (use-package projectile
;;   :ensure t
;;   :defer t
;;   :bind-keymap
;;   ("C-c p" . projectile-command-map)
;;   :config
;; ;;  (setq projectile-completion-system 'helm)
;; ;;  (helm-projectile-on)
;;   (setq additional-ignored-directories '("node_modules" "elpa" ".next" "python3.8" "dist" "misc" ))
;;   (setq projectile-globally-ignored-directories (append projectile-globally-ignored-directories additional-ignored-directories))
;;   (setq additional-ignored-files '("*.png" "*.jpg" "*.md"
;; 				 "polyfills.js" "package.json" "package-lock.json"
;;                                  "*.dll" "*.targets" "*.props" "*.pdb" "*.deps.json" "*.exe"
;;                                  "*.linux-x86_64" "*.gz"
;; 				 ))
;;   (setq projectile-enable-caching t)
;;   (setq projectile-indexing-method 'alien)
;;   (projectile-mode +1)
;;   )

(use-package yasnippet
  :ensure t
  :hook
  (prog-mode-hook . yas-minor-mode)
  )
(use-package yasnippet-snippets         ; Collection of snippets
  :ensure t
  :defer t
  )

;; Example configuration for Consult
(use-package consult
  :ensure t
  :defer t
  ;; Replace bindings. Lazily loaded by `use-package'.
  :bind (;; C-c bindings in `mode-specific-map'
         ("C-c M-x" . consult-mode-command)
         ("C-c h" . consult-history)
         ("C-c k" . consult-kmacro)
         ("C-c m" . consult-man)
         ("C-c i" . consult-info)
         ([remap Info-search] . consult-info)
         ;; C-x bindings in `ctl-x-map'
         ("C-x M-:" . consult-complex-command)     ;; orig. repeat-complex-command
         ("C-x b" . consult-buffer)                ;; orig. switch-to-buffer
         ("C-x 4 b" . consult-buffer-other-window) ;; orig. switch-to-buffer-other-window
         ("C-x 5 b" . consult-buffer-other-frame)  ;; orig. switch-to-buffer-other-frame
         ("C-x t b" . consult-buffer-other-tab)    ;; orig. switch-to-buffer-other-tab
         ("C-x r b" . consult-bookmark)            ;; orig. bookmark-jump
         ("C-x p b" . consult-project-buffer)      ;; orig. project-switch-to-buffer
         ;; Custom M-# bindings for fast register access
         ("M-#" . consult-register-load)
         ("M-'" . consult-register-store)          ;; orig. abbrev-prefix-mark (unrelated)
         ("C-M-#" . consult-register)
         ;; Other custom bindings
         ("M-y" . consult-yank-pop)                ;; orig. yank-pop
         ;; M-g bindings in `goto-map'
         ("M-g e" . consult-compile-error)
         ("M-g f" . consult-flymake)               ;; Alternative: consult-flycheck
         ("M-g g" . consult-goto-line)             ;; orig. goto-line
         ("M-g M-g" . consult-goto-line)           ;; orig. goto-line
         ("M-g o" . consult-outline)               ;; Alternative: consult-org-heading
         ("M-g m" . consult-mark)
         ("M-g k" . consult-global-mark)
         ("M-g i" . consult-imenu)
         ("M-g I" . consult-imenu-multi)
         ;; M-s bindings in `search-map'
         ("M-s d" . consult-find)                  ;; Alternative: consult-fd
         ("M-s c" . consult-locate)
         ("M-s g" . consult-grep)
         ("M-s G" . consult-git-grep)
         ("M-s r" . consult-ripgrep)
         ("C-s" . consult-line)
         ("M-s L" . consult-line-multi)
         ("M-s k" . consult-keep-lines)
         ("M-s u" . consult-focus-lines)
         ;; Minibuffer history
         :map minibuffer-local-map
         ("M-s" . consult-history)                 ;; orig. next-matching-history-element
         ("M-r" . consult-history))                ;; orig. previous-matching-history-element

  ;; Enable automatic preview at point in the *Completions* buffer. This is
  ;; relevant when you use the default completion UI.
  :hook (completion-list-mode . consult-preview-at-point-mode)

  ;; The :init configuration is always executed (Not lazy)
  :init
  (advice-add #'register-preview :override #'consult-register-window)
  (setq register-preview-delay 0.5)

  ;; Use Consult to select xref locations with preview
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref)

  :config
  ;; Optionally configure preview. The default value
  ;; is 'any, such that any key triggers the preview.
  ;; (setq consult-preview-key 'any)
  ;; (setq consult-preview-key "M-.")
  ;; (setq consult-preview-key '("S-<down>" "S-<up>"))
  ;; For some commands and buffer sources it is useful to configure the
  ;; :preview-key on a per-command basis using the `consult-customize' macro.
  (consult-customize
   consult-theme :preview-key '(:debounce 0.2 any)
   consult-ripgrep consult-git-grep consult-grep consult-man
   consult-bookmark consult-recent-file consult-xref
   consult--source-bookmark consult--source-file-register
   consult--source-recent-file consult--source-project-recent-file
   :preview-key '(:debounce 0.4 any))
  (setq consult-narrow-key "<") ;; "C-+"
  )

(use-package embark
  :ensure t
  :defer t
  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'
  :init
  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)

  ;; Show the Embark target at point via Eldoc. You may adjust the
  ;; Eldoc strategy, if you want to see the documentation from
  ;; multiple providers. Beware that using this can be a little
  ;; jarring since the message shown in the minibuffer can be more
  ;; than one line, causing the modeline to move up and down:
  ;; (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)
  
  :config
  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none))))
  )

(use-package embark-consult
  :ensure t
  :defer t
  :hook
  (embark-collect-mode . consult-preview-at-point-mode)
  )

(use-package ace-window
  :ensure t
  :defer t
  :bind
  ("C-x o" . ace-window)
  )

(use-package magit
  :ensure t
  :defer t
  :bind
  ("C-x g" . magit-status)
  )

(use-package flymake
  :ensure nil
  :defer t
  :bind
  ("C-c f l" . flymake-show-buffer-diagnostics)
  ("C-c f n" . flymake-goto-next-error)
  ("C-c f p" . flymake-goto-prev-error)
  :config
  (setq flymake-no-changes-timeout nil)
  )

(use-package sideline-flymake
  :ensure t
  :hook (flymake-mode . sideline-mode)
  :init
  (setq sideline-flymake-display-mode 'point)
  (setq sideline-backends-right '(sideline-flymake))
  )

;; (use-package flycheck
;;   :ensure t
;;   :defer t
;;   :bind
;;   ("C-c f l" . flycheck-list-errors)
;;   ("C-c f n" . flycheck-next-error)
;;   ("C-c f p" . flycheck-previous-error)
;;   )

(use-package treesit
  :config 
  (setq treesit-font-lock-level 4)
  :preface
  (defun os/setup-install-grammars ()
    "Install Tree-sitter grammars if they are absent."
    (interactive)
    (dolist (grammar
             '((css . ("https://github.com/tree-sitter/tree-sitter-css" "v0.23.2"))
               (bash "https://github.com/tree-sitter/tree-sitter-bash")
               (html . ("https://github.com/tree-sitter/tree-sitter-html" "v0.23.2"))
               (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" "v0.25.0" "src"))
               (json . ("https://github.com/tree-sitter/tree-sitter-json" "v0.24.8"))
               (python . ("https://github.com/tree-sitter/tree-sitter-python" "v0.23.6"))
               (go "https://github.com/tree-sitter/tree-sitter-go" "v0.25.0")
               (markdown "https://github.com/ikatyang/tree-sitter-markdown")
               (make "https://github.com/alemuller/tree-sitter-make")
               (elisp "https://github.com/Wilfred/tree-sitter-elisp")
               (cmake "https://github.com/uyha/tree-sitter-cmake")
               (c "https://github.com/tree-sitter/tree-sitter-c")
               (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
               (toml "https://github.com/tree-sitter/tree-sitter-toml")
               (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.23.2" "tsx/src"))
               (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.23.2" "typescript/src"))
               (yaml . ("https://github.com/ikatyang/tree-sitter-yaml" "v0.5.0"))
               (prisma "https://github.com/victorhqc/tree-sitter-prisma")))
      (add-to-list 'treesit-language-source-alist grammar)
      ;; Only install `grammar' if we don't already have it
      ;; installed. However, if you want to *update* a grammar then
      ;; this obviously prevents that from happening.
      (unless (treesit-language-available-p (car grammar))
        (treesit-install-language-grammar (car grammar)))))

  ;; Optional, but recommended. Tree-sitter enabled major modes are
  ;; distinct from their ordinary counterparts.
  ;;
  ;; You can remap major modes with `major-mode-remap-alist'. Note
  ;; that this does *not* extend to hooks! Make sure you migrate them
  ;; also
  (dolist (mapping
           '((python-mode . python-ts-mode)
             (css-mode . css-ts-mode)
             (typescript-mode . typescript-ts-mode)
             (js-mode . typescript-ts-mode)
             (js2-mode . typescript-ts-mode)
             (c-mode . c-ts-mode)
             (c++-mode . c++-ts-mode)
             (c-or-c++-mode . c-or-c++-ts-mode)
             (bash-mode . bash-ts-mode)
             (css-mode . css-ts-mode)
             (json-mode . json-ts-mode)
             (js-json-mode . json-ts-mode)
             (sh-mode . bash-ts-mode)
             (sh-base-mode . bash-ts-mode)))
    (add-to-list 'major-mode-remap-alist mapping))
  :config
  (os/setup-install-grammars)
  )


(use-package c++-ts-mode
  :defer t
  :mode ("\\.cpp\\'" "\\.cc\\'" "\\.hpp\\'" "\\.h\\'")
  :preface
  (defun cc-start()
    (setq c-ts-mode-indent-offset 2)
    )
  :hook
  (c++-ts-mode . cc-start)
  )

(use-package c-ts-mode
  :defer t
  :mode ("\\.c\\'")
  :preface
  (defun c-start()
    (setq c-ts-mode-indent-offset 8)
    (setq c-ts-mode-indent-style 'linux)
    )
  :hook
  (c-ts-mode . c-start)
  )

(use-package typescript-ts-mode
  :defer t
  :mode ("\\.ts\\'" "\\.js\\'" "\\.mjs\\'" "\\.cjs\\'" "\\.mts\\'")
  :preface
  (defun ts-start()
    (setq typescript-ts-mode-indent-offset 2)
    (setq indent-tabs-mode nil)
    )
  :hook
  (typescript-ts-mode . ts-start)
  (typescript-ts-mode . flymake-mode)
  )

(use-package tsx-ts-mode
  :defer t
  :mode ("\\.tsx\\'" "\\.jsx\\'")
  :preface
  (defun tsx-start()
    (setq typescript-ts-mode-indent-offset 2)
    (setq indent-tabs-mode nil)
    )
  :hook
  (tsx-ts-mode . tsx-start)
  (tsx-ts-mode . flymake-mode)
  )

(use-package html-ts-mode
  :defer t
  :mode ("\\.html\\'")
  )

(use-package json-ts-mode
  :defer t
  :mode ("\\.json\\'")
  :custom
  (json-ts-mode-indent-offset 2)
  )

(use-package emmet-mode
  :ensure t
  :defer t
  :hook
  (html-ts-mode . emmet-mode)
  (tsx-ts-mode . emmet-mode)
  )

(use-package python-ts-mode
  :defer t
  :mode "\\.py\\'"
  :custom
  (python-shell-interpreter "python3")
  :hook
  (python-ts-mode . flymake-mode)
  )

(use-package dockerfile-ts-mode
  :defer t
  :mode ("\\Dockerfile\\'" "\\.dockerignore\\'")
  )

(use-package restclient
  :ensure t
  :defer t
  :mode (("\\.rest\\'" . restclient-mode))
  :bind (:map restclient-mode-map
	      ("C-c C-f" . json-mode-beautify))
  )

(use-package pyvenv
  :ensure t
  :defer t
  :diminish
  :config
  (setq pyvenv-mode-line-indicator
        '(pyvenv-virtual-env-name ("[venv:" pyvenv-virtual-env-name "] ")))
  (pyvenv-mode +1)
  )

(use-package multiple-cursors
  :ensure t
  :defer t
  :preface
  (defun mc-mark-next-like-this-then-cycle-forward (arg)
    (interactive "p")
    (call-interactively 'mc/mark-next-like-this)
    (call-interactively 'mc/cycle-forward))
  (defun mc-skip-to-next-like-this-then-cycle-forward (arg)
    (interactive "p")
    (call-interactively 'mc/cycle-backward)
    (call-interactively 'mc/skip-to-next-like-this)
    (call-interactively 'mc/cycle-forward))
  (defun mc-mark-previous-like-this-then-cycle-backward (arg)
    (interactive "p")
    (call-interactively 'mc/mark-previous-like-this)
    (call-interactively 'mc/cycle-backward))
  (defun mc-skip-to-previous-like-this-then-cycle-backward (arg)
    (interactive "p")
    (call-interactively 'mc/cycle-forward)
    (call-interactively 'mc/skip-to-previous-like-this)
    (call-interactively 'mc/cycle-backward))  
  )

(use-package hydra
  :ensure t
  :defer t
  :config
  (setq hydra--work-around-dedicated nil)
  (defhydra hydra-multi-cursors (:hint nil)
	    "
     ^Up^            ^Down^        ^Miscellaneous^
----------------------------------------------
[_p_]   Next    [_n_]   Next    [_l_] Edit lines
[_P_]   Skip    [_N_]   Skip    [_a_] Mark all
[_M-p_] Unmark  [_M-n_] Unmark  [_q_] Quit"
	    ("l" mc/edit-lines :exit t)
	    ("a" mc/mark-all-like-this)
	    ("n" mc-mark-next-like-this-then-cycle-forward)
	    ("N" mc-skip-to-next-like-this-then-cycle-forward)
	    ("M-n" mc/unmark-next-like-this)
	    ("p" mc-mark-previous-like-this-then-cycle-backward)
	    ("P" mc-skip-to-previous-like-this-then-cycle-backward)
	    ("M-p" mc/unmark-previous-like-this)
	    ("q" nil))
  ;; window switching and editing
  (defhydra hydra-set-window ()
	    ("<tab>" other-window "switch")
	    ("p" other-frame "other frame")
	    ("0" delete-window "delete window")
	    ("1" delete-other-windows "single window")
	    ("2" split-window-below "split bottom")
	    ("3" split-window-right "split right")
	    ("5" make-frame-command "new frame")
	    ("q" nil "quit" :color red)
	    )
  :bind
  ("C->" . hydra-multi-cursors/body)
  ("C-x 3" . hydra-set-window/split-window-right)
  ("C-x 2" . hydra-set-window/split-window-below)
  )

(use-package corfu
  :after orderless
  :ensure t
  :defer t
  ;; :init
  ;; (global-corfu-mode t)
  :config
  (corfu-popupinfo-mode t)
  (setq corfu-auto t)
  (setq corfu-on-exact-match nil)
  (setq corfu-cycle nil)
  (setq corfu-auto-delay 0.2)
  (setq corfu-auto-prefix 3)
  (setq corfu-quit-at-boundary t)
  (setq corfu-quit-no-match t)
  (setq corfu-popupinfo-delay 0.1)
  (setq tab-always-indent 'complete)
  :hook
  (prog-mode-hook . corfu-mode)
  ;; (after-init . global-corfu-mode)
  )

(use-package markdown-mode
  :ensure t
  :config
  (setq corfu-mode nil)
  )

;; (use-package eglot
;;   :ensure t
;;   :hook
;;   ((c-ts-mode . eglot-ensure)
;;    (c++-ts-mode . eglot-ensure)
;;    (html-ts-mode . eglot-ensure)
;;    (python-ts-mode . eglot-ensure)
;;    (js-ts-mode . eglot-ensure)
;;    (typescript-ts-mode . eglot-ensure)
;;    (tsx-ts-mode . eglot-ensure))
;;   )

(use-package lsp-mode
  :ensure t
  :preface
  (defun lsp-booster--advice-json-parse (old-fn &rest args)
    "Try to parse bytecode instead of json."
    (or
     (when (equal (following-char) ?#)
       (let ((bytecode (read (current-buffer))))
         (when (byte-code-function-p bytecode)
           (funcall bytecode))))
     (apply old-fn args)))
  (defun lsp-booster--advice-final-command (old-fn cmd &optional test?)
    "Prepend emacs-lsp-booster command to lsp CMD."
    (let ((orig-result (funcall old-fn cmd test?)))
      (if (and (not test?)                             ;; for check lsp-server-present?
               (not (file-remote-p default-directory)) ;; see lsp-resolve-final-command, it would add extra shell wrapper
               lsp-use-plists
               (not (functionp 'json-rpc-connection))  ;; native json-rpc
               (executable-find "emacs-lsp-booster"))
          (progn
            (message "Using emacs-lsp-booster for %s!" orig-result)
            (cons "emacs-lsp-booster" orig-result))
        orig-result)))
  :hook
  (
   (c-ts-mode . lsp-deferred)
   (c++-ts-mode . lsp-deferred)
   (js-ts-mode . lsp-deferred)
   (typescript-ts-mode . lsp-deferred)
   (tsx-ts-mode . lsp-deferred)
   (html-ts-mode . lsp-deferred)
   (python-ts-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration)
   )
  :custom
  (lsp-auto-configure t)
  :config
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-completion-provider :none)
  (setq lsp-completion-enable t)
  (setq lsp-completion-default-behaviour :insert)
  
  (setq lsp-diagnostics-provider :flymake)
  (setq lsp-prefer-capf t)
  (setq lsp-log-io nil)
  (setq lsp-before-save-edits nil)
  (setq lsp-eldoc-enable-hover t)
  
  (setq lsp-enable-xref t)
  (setq lsp-enable-dap-auto-configure t)
  (setq lsp-enable-file-watchers nil)
  (setq lsp-enable-folding t)
  (setq lsp-enable-indentation nil)
  (setq lsp-enable-snippet t)
  (setq lsp-enable-symbol-highlighting t)
  (setq lsp-enable-suggest-server-download t)
  (setq lsp-enable-text-document-color nil)
  
  (setq lsp-auto-guess-root nil)
  (setq lsp-auto-execute-action nil)
  
  (setq lsp-headerline-breadcrumb-enable nil)
  :init
  (setq lsp-use-plists t)
  (advice-add (if (progn (require 'json)
                         (fboundp 'json-parse-buffer))
                  'json-parse-buffer
                'json-read)
              :around
              #'lsp-booster--advice-json-parse)
  (advice-add 'lsp-resolve-final-command :around #'lsp-booster--advice-final-command)
  :commands
  (lsp lsp-deferred)
  )

;; (use-package lsp-eslint
;;   :demand t
;;   :after lsp-mode)

;; (use-package lsp-tailwindcss
;;   :straight '(lsp-tailwindcss :type git :host github :repo "merrickluo/lsp-tailwindcss")
;;   :init (setq lsp-tailwindcss-add-on-mode t)
;;   :config
;;   (dolist (tw-major-mode
;;            '(css-mode
;;              css-ts-mode
;;              typescript-mode
;;              typescript-ts-mode
;;              tsx-ts-mode
;;              js2-mode
;;              js-ts-mode
;;              clojure-mode))
;;     (add-to-list 'lsp-tailwindcss-major-modes tw-major-mode)))

(use-package agent-shell
  :ensure t
  :config
  (setq agent-shell-anthropic-authentication
	(agent-shell-anthropic-make-authentication :login t))
  )

;; (use-package gptel
;;   :ensure t
;;   :config
;;   (setq gptel-model 'claude-sonnet-4-5-20250929
;;         gptel-backend (gptel-make-anthropic "Claude"
;;                         :stream t
;;                         :key (lambda () (auth-source-pick-first-password
;; 					 :host "api.anthropic.com"))
;;                         :models '("claude-sonnet-4-5-20250929"
;; 				  "claude-sonnet-4-20250514"))
;; 	)
;;   :bind (("C-c g RET" . gptel-send)
;; 	 ("C-c g m" . gptel-menu)
;;          ("C-c g g" . gptel)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi-tritanopia))
 '(custom-safe-themes
   '("1e6997bc08f0b11a2b5b6253525aed4e1eb314715076a0c0c2486bd97569f18a"
     default))
 '(package-selected-packages
   '(abyss-theme agent-shell all-the-icons beacon benchmark-init c-eldoc
		 ccls consult-spotify corfu csv csv-mode dap-mode
		 dash-functional diminish dired-preview docker
		 docker-compose-mode doom-modeline doom-themes
		 dotenv-mode drag-stuff eat eldoc-eval embark-consult
		 emmet-mode evil exec-path-from-shell expand-region
		 flycheck fortune-cookie gnu-elpa-keyring-update gptel
		 graphql graphql-mode helm-spotify-plus htmlize
		 hungry-delete hyperspace iedit ivy js2-mode json-mode
		 json-reformat jtsx jump-char kaolin-themes leetcode
		 magit magit-popup marginalia memoize multi-vterm
		 multiple-cursors nginx-mode nyan-mode ob-mongo
		 ob-restclient orderless org-babel-eval-in-repl
		 org-bullets ox-asciidoc ox-latex-subfigure pkg-info
		 popup pos-tip protobuf-mode pyenv-mode pyvenv
		 rainbow-delimiters request-deferred shrface shut-up
		 sideline-flymake smartparens terraform-mode
		 transpose-frame tree-mode treepy undo-tree use-ttf
		 vertico wgrep xkcd yasnippet-snippets))
 '(package-vc-selected-packages
   '((claude-code :url "https://github.com/stevemolitor/claude-code.el"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
