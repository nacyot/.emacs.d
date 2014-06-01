(setq sass-indent-offset 2)

(add-to-list 'ac-modes 'sass-css-mode)
(add-hook 'sass-css-mode-hook 'ac-css-mode-setup)
