
(drag-stuff-global-mode 1)
;; (drag-stuff-define-keys)
(global-set-key (kbd "M-<up>") 'drag-stuff-up)
(global-set-key (kbd "M-<down>") 'drag-stuff-down)
;; Do not set horizontal drag-stuff for cursor conflict
;; (global-set-key (kbd "M-<left>") 'drag-stuff-left)
;; (global-set-key (kbd "M-<right>") 'drag-stuff-right)


(provide `init-drag-stuff)
