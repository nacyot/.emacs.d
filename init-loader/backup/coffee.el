;; Need to install coffee-mode from elpa
;; Set tab width in coffee mode
(add-lib-path "coffee-mode")
(require 'coffee-mode)

(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2)
 (setq coffee-tab-width 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))


(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(add-to-list 'auto-mode-alist '("Devfile" . coffee-mode))

(add-to-list 'ac-modes 'coffee-mode)

(setq coffee-tab-width 2)

(add-hook 'coffee-mode-hook
          (lambda ()
            (setq imenu-generic-expression coffee-imenu-generic-expression)))
