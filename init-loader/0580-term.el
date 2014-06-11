(defun term-window-width () 200)

(add-hook 'term-mode-hook
      (lambda () (setq truncate-lines t)))
