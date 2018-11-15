
;; ;; (add-to-list(add-hook 'web-mode-hook (lambda () (whitespace-mode -1)))
;; ;; (add-to-list 'auto-mode-alist '("\\.inc$" . php-mode)) ;; - For Drupal
;; ;; (add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . php-mode)) ;; - For Drupal
;; ;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; ;; (add-to-list 'auto-mode-alist '("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . web-mode))
;; (setq web-mode-markup-indent-offset 2)
;; (setq web-mode-css-indent-offset 2)
;; (setq web-mode-code-indent-offset 2)
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "tsx" (file-name-extension buffer-file-name))
;;               (setup-tide-mode))))
;; ;; enable typescript-tslint checker
;; (flycheck-add-mode 'typescript-tslint 'web-mode)

;; ;; jsvascript
;; (add-hook 'js2-mode-hook #'setup-tide-mode)
;; ;; configure javascript-tide checker to run after your default javascript checker
;; (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)


;; ;; jsx
;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "jsx" (file-name-extension buffer-file-name))
;;               (setup-tide-mode))))
;; ;; configure jsx-tide checker to run after your default jsx checker
;; (flycheck-add-mode 'javascript-eslint 'web-mode)
;; (flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)


;; ;; jsx
;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (when (string-equal "jsx" (file-name-extension buffer-file-name))
;;               (setup-tide-mode))))
;; ;; configure jsx-tide checker to run after your default jsx checker
;; (flycheck-add-mode 'javascript-eslint 'web-mode)
;; (flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)


(provide `init-web-mode)
