;; typescript
(add-to-list 'load-path "~/.emacs.d/ac-typescript")
(add-to-list 'load-path "~/.emacs.d/emacs-tss")
(require 'typescript)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(setq typescript-indent-level 2)


;;(require 'ac-typescript)
;; (setq ac-typescript-server/isense-location "~/.emacs.d/ac-typescript/bin/isense.js")
;;  uncomment this If you want to change server port
;; (setq ac-typescript-server/server-port 8124)
;; (ac-typescript/start-server)
;; (add-hook 'typescript-mode-hook 'ac-typescript/ac-enab
