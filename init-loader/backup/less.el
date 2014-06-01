(setq less-indent-offset 2)

(add-to-list 'ac-modes 'less-css-mode)
(add-hook 'less-css-mode-hook 'ac-css-mode-setup)

;; flymake
(add-hook 'less-css-mode-hook
          '(lambda ()
             (define-key less-css-mode-map "\C-cd" 'flymake-display-err-minibuf)))
(add-hook 'less-css-mode-hook (lambda () (flymake-mode t)))
