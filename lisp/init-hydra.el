;; fixes hydra interaction with modeline and cursors
(setq hydra--work-around-dedicated nil)

;; movement
;; (defhydra hydra-move
;;   (:body-pre (next-line))
;;   "move"
;;   ("n" next-line)
;;   ("p" previous-line)
;;   ("f" forward-char)
;;   ("b" backward-char)
;;   ("a" beginning-of-line)
;;   ("e" move-end-of-line)
;;   ("v" scroll-up-command)
;;   ("V" scroll-down-command)
;;   ("l" recenter-top-bottom)
;;   ("q" nil "quit" :color blue))
;; (global-set-key (kbd "C-f") #'hydra-move/forward-char)
;; (global-set-key (kbd "C-b") #'hydra-move/backward-char)

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

;; multi-cursors
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
(global-set-key (kbd "C->") #'hydra-multi-cursors/body)


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
(global-set-key (kbd "C-x 3") #'hydra-set-window/split-window-right)
(global-set-key (kbd "C-x 2") #'hydra-set-window/split-window-below)

(provide 'init-hydra)
