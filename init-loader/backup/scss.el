(defun my-scss-mode-hook ()
  "Hooks for SASS mode."
  (setq-default scss-compile-at-save nil))

(add-hook 'scss-mode-hook 'my-scss-mode-hook)

(add-to-list 'ac-modes 'scss-css-mode)
(add-hook 'scss-css-mode-hook 'ac-css-mode-setup)
