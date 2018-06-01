;; navigation tree/neotree
(require 'neotree)

;; set f8 to toggle
(global-set-key [f8] 'neotree-toggle)

;; do not refresh
(setq neo-autorefresh nil)

;; auto re-read files on disk
;; NOTE: use case is for neotree
(global-auto-revert-mode t)

;; neotree theme with all-the-icons
;; require all-the-icons
(require 'all-the-icons)
(setq neo-theme (if (display-graphic-p) 'arrow))

;; in case for slower performance
(setq inhibit-compacting-font-caches t)
