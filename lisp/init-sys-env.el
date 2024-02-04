(setq-default bidi-paragraph-direction 'left-to-right)
(global-so-long-mode 1)
(setq bidi-inhibit-bpa t)

;; beacon mode
(setq-default
 blink-cursor-interval 0.5
 beacon-color "#87CEEB"
 beacon-blink-duration 0.5
 beacon-size 50)
(beacon-mode)

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

(use-package eww
  :defer t
  :init
  (add-hook 'eww-after-render-hook #'shrface-mode)
  :config
  (require 'shrface))

;; which key
;; Allow C-h to trigger which-key before it is done automatically
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq
 which-key-show-early-on-C-h t
 which-key-idle-delay 1
 which-key-idle-secondary-delay 0.05)
(which-key-mode)


(provide 'init-sys-env)
