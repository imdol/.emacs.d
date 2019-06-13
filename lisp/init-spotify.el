(add-to-list 'load-path "~/.emacs.d/elpa/spotify.el")
(require 'spotify)

(setq spotify-oauth2-client-id "a11d5be9d5434021b68e8ea890bcbd33")
(setq spotify-oauth2-client-secret "aac0053e59c1452d9e107676181f5f69")
(setq spotify-api-search-limit 30)
(setq spotify-mode-line-refresh-interval 1)
(setq spotify-mode-line-truncate-length 15)
(defalias 'spotify 'global-spotify-remote-mode)

(provide 'init-spotify)
