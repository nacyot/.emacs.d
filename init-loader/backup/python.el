(add-hook 'python-mode-hook
          '(lambda ()
             (disable-electric-indent)))

;; (defun python-electric-indent-function (char)
;;   (if (eq major-mode 'python-mode)
;;       ))

;; (add-hook 'electric-indent-functions 'python-electric-indent-function)
