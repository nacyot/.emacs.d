(define-key global-map (kbd "C-c C-a") 'anything)

(require 'anything-config)
(add-to-list 'anything-sources 'anything-c-source-emacs-commands)

(setq anything-sources
      '(
        ;; anything-c-source-buffers+
        ;; anything-c-source-colors
        ;; anything-c-source-man-pages
        ;; anything-c-source-emacs-functions
        anything-c-source-emacs-commands
        anything-c-source-recentf
        anything-c-source-files-in-current-dir
        ))

