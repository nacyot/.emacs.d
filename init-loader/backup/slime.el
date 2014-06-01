;; Slime
(add-lib-path "slime")
(add-to-list 'load-path "~/.emacs.d/slime/") 
(require 'slime)
(slime-setup)

;; Slime and js2
(global-set-key [f6] 'slime-js-reload)
(add-hook 'js2-mode-hook
          (lambda ()
            (slime-js-minor-mode 1)))

;; Slime and css
(add-hook 'css-mode-hook
          (lambda ()
            (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)
            (define-key css-mode-map "\C-c\C-r" 'slime-js-embed-css)))
