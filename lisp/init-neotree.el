;; neotree theme with all-the-icons
;(require 'all-the-icons)
(setq neo-theme (if (display-graphic-p) 'nerd))

;; set f8 to toggle
(global-set-key [f8] 'neotree-toggle)

;; do not refresh
(setq neo-autorefresh nil)

;; in case for slower performance
(setq inhibit-compacting-font-caches t)

(setq neo-window-width 15)

(provide 'init-neotree)
