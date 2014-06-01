(defun disable-magit-highlight-in-buffer ()
  (face-remap-add-relative 'magit-item-highlight '()))
(add-hook 'magit-diff-mode-hook 'disable-magit-highlight-in-buffer)
(add-hook 'magit-status-mode-hook 'disable-magit-highlight-in-buffer)
