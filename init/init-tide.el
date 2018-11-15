
(setq tide-default-mode "TS")
(setq tide-completion-enable-autoimport-suggestions t)
(setq tide-hl-identifier-idle-time 0.5)
(setq tide-completion-enable-autoimport-suggestions t)
(setq tide-jump-to-definition-reuse-window t)
(setq tide-recenter-after-jump t)
(global-set-key (kbd "M-\]") 'tide-jump-to-definition)
(global-set-key (kbd "M-\[") 'tide-jump-back)
;; typescript
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; format options
(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunctions nil))


(provide `init-tide)
