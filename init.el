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

(use-package treesit
  :defer t
  :config
  (setq treesit-font-lock-level 4)
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

(use-package js-ts-mode
  :defer t
  :mode ("\\.js\\'")
  :preface
  (defun js-start()
    (setq js-indent-level 2)
    (setq indent-tabs-mode nil)
    )
  :hook
  (js-ts-mode . js-start)
  (js-ts-mode . flymake-mode)
  )

(use-package typescript-ts-mode
  :defer t
  :mode ("\\.ts\\'")
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
  :mode "\\.rest\\'"
  :hook
  (restclient-mode . so-long-enabled)
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

;; (use-package company-quickhelp
;;   :ensure t
;;   :defer t
;;   :after company
;;   :custom
;;   (company-quickhelp-color-background "#000000")
;;   (company-quickhelp-color-foreground "#66B2B2")
;;   (company-quickhelp-delay 0.1)
;;   :hook
;;   (company-mode . company-quickhelp-mode)
;;   )

;; (use-package company
;;   :ensure t
;;   :defer t
;;   :config
;;   (setq company-idle-delay 0.2)
;;   (setq company-minimum-prefix-length 3)
;;   (define-key company-active-map (kbd "M-n") nil)
;;   (define-key company-active-map (kbd "M-p") nil)
;;   (define-key company-active-map (kbd ".") 'company--my-insert-dot)
;;   (define-key company-active-map (kbd "C-d") #'company-abort)
;;   (define-key company-active-map (kbd "C-n") #'company-select-next)
;;   (define-key company-active-map (kbd "C-p") #'company-select-previous)
;;   (define-key company-active-map (kbd "<tab>") #'company-complete-selection)
;;   (define-key company-mode-map (kbd "C-c c") 'company-complete)
;;   :hook
;;   (after-init-hook . global-company-mode)
;;  )

;; (use-package lsp-mode
;;   :ensure t
;;   :init
;;   (setq lsp-keymap-prefix "C-c l")
;;   :config
;;   (setq lsp-before-save-edits nil)
;;   (setq lsp-headerline-breadcrumb-enable nil)
;;   (setq lsp-auto-guess-root nil)
;;   (setq lsp-prefer-capf t)
;;   (setq lsp-completion-provider :capf)
;;   (setq lsp-auto-configure t)
;;   (setq lsp-auto-execute-action nil)
  
;;   (setq lsp-completion-default-behaviour :insert)
  
;;   (setq lsp-enable-indentation nil)
;;   (setq lsp-enable-folding t)
;;   (setq lsp-enable-snippet t)
;;   (setq lsp-diagnostics-provider :flymake)
;;   :hook
;;   ((c-ts-mode . lsp-deferred)
;;    (c++-ts-mode . lsp-deferred)
;;    (typescript-ts-mode . lsp-deferred)
;;    (tsx-ts-mode . lsp-deferred)
;;    (html-ts-mode . lsp-deferred)
;;    (python-ts-mode . lsp-deferred)
;;    (lsp-mode . lsp-enable-which-key-integration))
;;   :commands
;;   (lsp lsp-deferred)
;;   )

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
  (after-init . global-corfu-mode)
  ;; :hook
  ;; (python-ts-mode . corfu-mode)
  ;; (typescript-ts-mode . corfu-mode)
  ;; (tsx-ts-mode . corfu-mode)
  ;; (c-ts-mode . corfu-mode)
  ;; (c++-ts-mode . corfu-mode)
  )

(use-package eglot
  :ensure t
  :hook
  ((c-ts-mode . eglot-ensure)
   (c++-ts-mode . eglot-ensure)
   (html-ts-mode . eglot-ensure)
   (typescript-ts-mode . eglot-ensure)
   (python-ts-mode . eglot-ensure)
   (tsx-ts-mode . eglot-ensure))
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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi))
 '(package-selected-packages
   '(ace-window beacon corfu doom-modeline drag-stuff eglot
		embark-consult emmet-mode expand-region hydra iedit
		lsp-mode magit marginalia mood-line multiple-cursors
		orderless poetry pos-tip rainbow-delimiters restclient
		smartparens typescript-mode vertico yasnippet-snippets)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
