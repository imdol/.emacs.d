;; navigation tree/neotree

;; set f8 to toggle
(global-set-key [f8] 'neotree-toggle)

;; set show hidden files
(setq-default neo-show-hidden-files t)

;; do not refresh
(setq neo-autorefresh nil)

;; auto re-read files on disk
;; NOTE: use case is for neotree
(global-auto-revert-mode t)
