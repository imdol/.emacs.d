;;; corfu does this shit
(use-package corfu
  :defer t
  ;; :bind
  ;; (:map corfu-map
  ;;       ("RET" . nil))
  :init
  ;; (corfu-popupinfo-mode t)
  (global-corfu-mode t)

  :config
  (corfu-popupinfo-mode t)
  (setq
   corfu-auto t
   corfu-cycle t
   corfu-auto-delay 0.2
   corfu-auto-prefix 3
   corfu-quit-at-boundary t
   corfu-quit-no-match t
   corfu-popupinfo-delay 0.1
   completion-styles '(orderless basic)
   )
  )

(provide 'init-corfu)
