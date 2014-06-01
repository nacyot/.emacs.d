(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/.emacs.d/user"))
(defconst +emacs-profiles-dir+ (concat +emacs-dir+ "/profiles"))
(defconst +emacs-lib-dir+ (concat +emacs-dir+ "/libs"))
(defconst +emacs-conf-dir+ (concat +emacs-dir+ "/config"))
(defconst +emacs-tmp-dir+ (concat +emacs-dir+ "/tmp"))
(defconst +dev-dir+ (concat +home-dir+ "/dev"))

;; cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/init-loader/")

;; (defun add-load-path (p) (add-to-list 'load-path (concat +emacs-dir+ "/" p)))
;; (defun add-lib-path (p) (add-to-list 'load-path (concat +emacs-lib-dir+ "/" p)))
;; (defun load-conf-file (f) (load-file (concat +emacs-conf-dir+ "/" f ".el")))
;; (defun load-lib-file (f) (load-file (concat +emacs-lib-dir+ "/" f)))
;; (defun load-profile (p) (load-file (concat +emacs-profiles-dir+ "/" p ".el")))

;; (defun load-customizations ()
;;   (let ((filename (concat +emacs-dir+ "/custom.el")))
;;     (if (file-readable-p filename)
;;         (load-file filename))))
  
    
;; (add-load-path "")
;; (add-load-path "lib")

;; (load-profile "nacyot")
;; (load-customizations)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ecb-auto-expand-tag-tree (quote all))
;;  '(ecb-auto-expand-tag-tree-collapse-other nil)
;;  '(ecb-auto-update-methods-after-save t)
;;  '(ecb-layout-name "leftright1")
;;  '(ecb-options-version "2.40")
;;  '(ecb-windows-width 0.2)
;;  '(org-agenda-files (quote ("~/Dropbox/org/presentation/유비쿼터스.org"))))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )



