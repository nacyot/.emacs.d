(defconst +home-dir+ "~")
(defconst +emacs-dir+ (concat +home-dir+ "/.emacs.d"))
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

    
