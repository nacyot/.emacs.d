;; Need to install ecb from elpa
(require 'ecb)
(defun ecb-toggle ()
    (interactive)
      (if ecb-minor-mode
                (ecb-deactivate)
            (ecb-activate)))

;; Set custom key
(global-set-key [f2] 'ecb-toggle)
(global-set-key (kbd "C-c <right>") 'ecb-goto-window-methods)
(global-set-key (kbd "C-c <left>") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-c `") 'ecb-goto-window-edit1)
(global-set-key (kbd "C-c 1") 'ecb-goto-window-directories)
(global-set-key (kbd "C-c 2") 'ecb-goto-window-sources)
(global-set-key (kbd "C-c 3") 'ecb-goto-window-history)
(global-set-key (kbd "C-c 4") 'ecb-goto-window-methods)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-auto-expand-tag-tree (quote all))
 '(ecb-auto-expand-tag-tree-collapse-other nil)
 '(ecb-auto-update-methods-after-save t)
 '(ecb-layout-name "leftright1")
 '(ecb-options-version "2.40")
 '(ecb-windows-width 0.2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'set-goal-column 'disabled nil)
