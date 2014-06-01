(add-hook 'ruby-mode-hook 'rinari-minor-mode)
(add-hook 'haml-mode-hook 'rinari-minor-mode)

(add-hook 'ruby-mode-hook
          '(lambda ()
            (define-key ruby-mode-map (kbd "C-c c") 'rinari-find-controller)
            (define-key ruby-mode-map (kbd "C-c m") 'rinari-find-model)
            (define-key ruby-mode-map (kbd "C-c v") 'rinari-find-view)
            (define-key ruby-mode-map (kbd "C-c e") 'rinari-find-environment)
            (define-key ruby-mode-map (kbd "C-c i") 'rinari-find-migration)
            (define-key ruby-mode-map (kbd "C-c j") 'rinari-find-javascript)
            (define-key ruby-mode-map (kbd "C-c n") 'rinari-find-configuration)
            (define-key ruby-mode-map (kbd "C-c v") 'rinari-find-view)
            (define-key ruby-mode-map (kbd "C-c l") 'rinari-find-log)
            (define-key ruby-mode-map (kbd "C-c p") 'rinari-find-public)
            (define-key ruby-mode-map (kbd "C-c y") 'rinari-find-stylesheet)
            (define-key ruby-mode-map (kbd "C-c r") 'rinari-find-rspec)
            (define-key ruby-mode-map (kbd "C-c t") 'rinari-find-test)
            (define-key ruby-mode-map (kbd "C-c w") 'rinari-find-worker)
            (define-key ruby-mode-map (kbd "C-c f") 'rinari-find-fixture)
            ))

(add-hook 'haml-mode-hook
          '(lambda ()
            (define-key haml-mode-map (kbd "C-c c") 'rinari-find-controller)
            (define-key haml-mode-map (kbd "C-c m") 'rinari-find-model)
            (define-key haml-mode-map (kbd "C-c v") 'rinari-find-view)
            (define-key haml-mode-map (kbd "C-c e") 'rinari-find-environment)
            (define-key haml-mode-map (kbd "C-c i") 'rinari-find-migration)
            (define-key haml-mode-map (kbd "C-c j") 'rinari-find-javascript)
            (define-key haml-mode-map (kbd "C-c n") 'rinari-find-configuration)
            (define-key haml-mode-map (kbd "C-c v") 'rinari-find-view)
            (define-key haml-mode-map (kbd "C-c l") 'rinari-find-log)
            (define-key haml-mode-map (kbd "C-c p") 'rinari-find-public)
            (define-key haml-mode-map (kbd "C-c y") 'rinari-find-stylesheet)
            (define-key haml-mode-map (kbd "C-c r") 'rinari-find-rspec)
            (define-key haml-mode-map (kbd "C-c t") 'rinari-find-test)
            (define-key haml-mode-map (kbd "C-c w") 'rinari-find-worker)
            (define-key haml-mode-map (kbd "C-c f") 'rinari-find-fixture)
            ))


;; C-c ; f f rinari-find-file-in-project
;; C-c ; f l rinari-find-plugin
;; C-c ; f s rinari-find-script
;; C-c ; f x rinari-find-fixture
