(add-to-list 'load-path "~/.emacs.d/tbr_elpa/spotify.el")
(require 'spotify)

(setq
 spotify-oauth2-client-id "a11d5be9d5434021b68e8ea890bcbd33"
 ;; enter secret client id here
 spotify-oauth2-client-secret ""
 spotify-api-search-limit 30
 spotify-mode-line-refresh-interval 1
 spotify-mode-line-truncate-length 15)
(defalias 'spotify 'global-spotify-remote-mode)

(provide 'init-spotify)
