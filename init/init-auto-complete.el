
(ac-config-default)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(ac-set-trigger-key "TAB")
;; (setq ac-auto-start nil)
;; (setq ac-auto-start 4)
(setq ac-auto-show-menu 0.5)
;; Complete member name by C-c . for C++ mode.
(add-hook 'c++-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-semantic)))
;; Complete file name by C-c /
(global-set-key (kbd "C-c /") 'ac-complete-filenamereadiree)


(provide `init-auto-complete)
