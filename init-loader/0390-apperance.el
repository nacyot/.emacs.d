;; (add-lib-path "dircolors")
;; (require 'dircolors)

(menu-bar-mode -1)

(if window-system
    ((tool-bar-mode -1)
     (menu-bar-mode -1)
     (scroll-bar-mode -1)))

;;highlight current line
(global-hl-line-mode 0)
(set-face-background 'hl-line "white")

;;set cursor colour
(set-cursor-color "black")
