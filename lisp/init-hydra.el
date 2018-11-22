;; movement
(defhydra hydra-move
  (:body-pre (next-line))
  "move"
  ("n" next-line)
  ("p" previous-line)
  ("f" forward-char)
  ("b" backward-char)
  ("a" beginning-of-line)
  ("e" move-end-of-line)
  ("v" scroll-up-command)
  ("V" scroll-down-command)
  ("l" recenter-top-bottom)
  ("q" nil "quit" :color blue))
(global-set-key (kbd "C-b") #'hydra-move/backward-char)

;; zooming
(defhydra hydra-zoom ()
  "zoom"
  ("+" text-scale-increase "in")
  ("-" text-scale-decrease "out")
  ("0" (text-scale-adjust 0) "reset")
  ("q" nil "quit" :color blue))

(provide 'init-hydra)
