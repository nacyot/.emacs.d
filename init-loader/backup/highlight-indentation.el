;; Highlight indentation minor mode
(add-lib-path "highlight-indentation")

(require 'highlight-indentation)

;; Set indentation color
(set-face-background 'highlight-indentation-face "#555555")
(set-face-background 'highlight-indentation-current-column-face "#128010")

;; Set hightlight-indentation as global minor mode
(define-globalized-minor-mode global-highlight-indentation-minor-mode 
  highlight-indentation-mode highlight-indentation-mode)
(define-globalized-minor-mode global-highlight-indentation-current-column-minor-mode 
  highlight-indentation-current-column-mode highlight-indentation-current-column-mode)

(global-highlight-indentation-minor-mode 1)
(global-highlight-indentation-current-column-minor-mode 1)

