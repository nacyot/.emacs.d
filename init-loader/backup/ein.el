(add-lib-path "ein")
(require 'ein)
(require 'ein-cell)
(require 'ein-multilang)

(setq ein:use-auto-complete t)
(setq ein:use-smartrep t)

(add-hook 'ein:notebook-multilang-mode-hook
          (lambda ()
            (define-key ein:notebook-multilang-mode-map (kbd "C-j") 'ein:worksheet-execute-cell-and-goto-next)
            (define-key ein:notebook-multilang-mode-map (kbd "C-M-j") 'ein:worksheet-execute-cell-and-insert-below)
            (define-key ein:notebook-multilang-mode-map (kbd "C-c C-d") 'ein:worksheet-delete-cell)
            (define-key ein:notebook-multilang-mode-map (kbd "C-c C-e") 'ein:worksheet-insert-cell-below)
            (define-key ein:notebook-multilang-mode-map (kbd "C-c d") 'ein:worksheet-delete-cell)
            (define-key ein:notebook-multilang-mode-map (kbd "C-c p") 'ein:worksheet-goto-prev-input)
            (define-key ein:notebook-multilang-mode-map (kbd "C-c n") 'ein:worksheet-goto-next-input)
            (define-key ein:notebook-multilang-mode-map (kbd "M-[ a") 'ein:worksheet-goto-prev-input)
            (define-key ein:notebook-multilang-mode-map (kbd "M-[ b") 'ein:worksheet-goto-next-input)
            (define-key ein:notebook-multilang-mode-map "\M-[1;2A" 'ein:worksheet-move-cell-up)
            (define-key ein:notebook-multilang-mode-map "\M-[1;2B" 'ein:worksheet-move-cell-down)
            ))

