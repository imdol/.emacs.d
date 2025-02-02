(setq-default bidi-paragraph-direction 'left-to-right)
(global-so-long-mode 1)
(setq bidi-inhibit-bpa t)
(setf dired-kill-when-opening-new-dired-buffer t)

(use-package beacon
  :custom
  (beacon-color "#87CEEB")
  :hook
  (after-init . beacon-mode)
  )

;; toggle scroll bar here
(toggle-scroll-bar -1)

;; doom mode-line
(use-package doom-modeline
 :config
 (setq-default doom-modeline-buffer-file-name-style 'truncate-upto-project)
 (doom-modeline-mode)
 )

;; zone/idle
(use-package zone
  :defer t
  :config
  (zone-when-idle 60)
  )

;; fortune cookie
;; (use-package fortune-cookie
;;   :config
;;   (fortune-cookie-mode))

;; no font caches during GC
;;(setq-default inhibit-compacting-font-caches t)

(use-package shrface
  :defer t
  :config
  (shrface-basic)
  (shrface-trial)
  (shrface-default-keybindings) ; setup default keybindings
  (setq shrface-href-versatile t))

;; eww browser
(use-package eww
  :defer t
  :init
  (add-hook 'eww-after-render-hook #'shrface-mode)
  :config
  (require 'shrface))

;; which key
(use-package which-key
  :diminish which-key-mode
  :hook (after-init . which-key-mode))

(provide 'init-sys-env)
