;; Mouse mode
(require 'mouse)
(xterm-mouse-mode t)

;; For old version
;; (require 'mwheel)
;; (defun track-mouse (e))

;; Set scrool range
(global-set-key [mouse-4] '(lambda () (interactive) (scroll-down 3)))
(global-set-key [mouse-5] '(lambda () (interactive) (scroll-up 3)))
