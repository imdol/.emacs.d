;; disable splash screen
(setq-default
 inhibit-splash-screen t
 inhibit-startup-message t
 initial-scratch-message nil)

;; don't store any backup files
(setq-default
 make-backup-files nil
 backup-inhibited t
 auto-save-default nil
 create-lockfiles nil)

;; maximize screen on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; turn off the annoying bell
;; (setq-default visible-bell 1)

;; delete section default
(delete-selection-mode 1)

;; set kill ring buffer max
;;(setq-default kill-ring-max 20)

;; usefull shortcuts
(global-set-key [f3] 'comment-region)
(global-set-key [f4] 'uncomment-region)

;; line and column numbering
(column-number-mode 1)
(line-number-mode 1)

(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; display line numbers
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; refresh buffers when any file changes
(global-auto-revert-mode t)

;; faster y/n prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; no font caches during GC
;;(setq-default inhibit-compacting-font-caches t)

;; OSX settings
;; for mac keyboards
 ;; (setq-default mac-option-key-is-meta nil
 ;;  mac-command-key-is-meta t
 ;;  mac-command-modifier 'meta
 ;;  mac-option-modifier nil)

;; exec-path-from-shell
;; (when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))


;; custom.el block
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "7b3d184d2955990e4df1162aeff6bfb4e1c3e822368f0359e15e2974235d9fa8" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "7a994c16aa550678846e82edc8c9d6a7d39cc6564baaaacc305a3fdc0bd8725f" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "aaa4c36ce00e572784d424554dcc9641c82d1155370770e231e10c649b59a074" "66e417dfa3a329de0531c9fefa0410e43b350de1fc5bba73e5b7fb2e986d10c8" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "3a78cae35163bb71df460ebcfdebf811fd7bc74eaa15428c7e0bccfd4f858d30" default))
 '(fringe-mode 6 nil (fringe))
 '(hl-paren-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(hl-paren-colors '("#40883f" "#0287c8" "#b85c57"))
;; '(initial-major-mode 'fundamental-mode) 
 '(linum-format 'dynamic)
 '(package-selected-packages
   '(fortune-cookie protobuf-mode snow rust-mode jump-char hybrid-reverse-theme use-package helm-spotify-plus docker multi-vterm vterm helm-rg dash-functional log4e markdown-mode multi transient projectile helm-projectile tramp anaconda-mode iy-go-to-char evil fireplace diminish nyan-mode tron-legacy-theme drag-stuff helm-ag ccls ob-restclient leetcode htmlize ox-latex-subfigure ox-asciidoc org-bullets dot-mode which-key dotenv-mode doom-themes gnu-elpa-keyring-update flymake lsp-mode magit async ess eval-in-repl helm helm-core ivy julia-mode matlab-mode memoize paredit restclient treemacs with-editor yasnippet swiper yasnippet-snippets centaur-tabs doom-modeline org-babel-eval-in-repl expand-region beacon aio autothemer goto-chg ht pfuture treemacs-projectile transpose-frame use-ttf undo-tree ob-mongo powerline 0blayout yaml-mode docker-compose-mode graphql-mode dockerfile-mode deferred hierarchy request-deferred spinner tree-mode wgrep all-the-icons auto-complete avy company csharp-mode dash epl f flycheck git-commit go-mode graphql js2-mode json-reformat json-snatcher know-your-http-well let-alist lv pkg-info popup pos-tip pythonic request s shrink-path treepy typescript-mode web-completion-data coin-ticker company-nginx nginx-mode web-mode tide smartparens shut-up rjsx-mode restclient-helm rainbow-delimiters pug-mode org omnisharp neotree multiple-cursors multi-term magit-popup json-mode iedit hydra exec-path-from-shell emmet-mode eldoc-eval company-web company-restclient company-quickhelp company-go company-anaconda cherry-blossom-theme c-eldoc benchmark-init ace-window))
 '(show-paren-mode t)
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 98 :width normal))))
 '(centaur-tabs-active-bar-face ((t (:background "#B62D66" :box nil))))
 '(company-scrollbar-bg ((t (:background "#199919991999"))))
 '(company-scrollbar-fg ((t (:background "#0ccc0ccc0ccc"))))
 '(company-tooltip ((t (:inherit default :background "#199919991999"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(helm-prefarg ((t (:foreground "deep pink"))))
 '(helm-rg-preview-line-highlight ((t (:background "#009081" :foreground "white smoke"))))
 '(helm-selection ((t (:background "#009081" :distant-foreground "black")))))

;; theme block
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme `killme t)
