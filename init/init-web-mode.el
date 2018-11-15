;; Install
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Associate an engine
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
)

;; Associate a content type
(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/some/react/path/.*\\.js[x]?\\'" . web-mode))

(setq web-mode-content-types-alist
  '(("json" . "/some/path/.*\\.api\\'")
    ("xml"  . "/other/path/.*\\.api\\'")
    ("jsx"  . "/some/react/path/.*\\.js[x]?\\'")))

;; Customisation
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
;; Indentation
;; HTML element offset indentation
(setq web-mode-markup-indent-offset 2)
;; CSS offset indentation
(setq web-mode-css-indent-offset 2)
;; Script/code offset indentation (for JavaScript, Java, PHP, Ruby, Go, VBScript, Python, etc.)
(setq web-mode-code-indent-offset 2)
;; disable arguments|concatenation|calls lineup
;; (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
;; (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil))
;; (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
;; (add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))
;; Left padding
;; For <style> parts
(setq web-mode-style-padding 1)
;; For <script> parts
(setq web-mode-script-padding 1)
;; For multi-line blocks
(setq web-mode-block-padding 0)
;; Comments
;; comment with server comment instead of client (HTML/CSS/Js) comment
(setq web-mode-comment-style 2)
;; Syntax Highlighting
;; Change face color
;; (set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")
;; Shortcuts
;; Change the shortcut for element navigation
;; (define-key web-mode-map (kbd "C-n") 'web-mode-tag-match)
;; Snippets
;; Add a snippet
(setq web-mode-extra-snippets
      '(("erb" . (("toto" . "<% toto | %>\n\n<% end %>")))
        ("php" . (("dowhile" . "<?php do { ?>\n\n<?php } while (|); ?>")
                  ("debug" . "<?php error_log(__LINE__); ?>")))
       ))
;; Auto-pairs
;; Add auto-pair
(setq web-mode-extra-auto-pairs
      '(("erb"  . (("beg" "end")))
        ("php"  . (("beg" "end")
                   ("beg" "end")))
       ))
;; Enable / disable features
;; Auto-pairing
(setq web-mode-enable-auto-pairing t)
;; CSS colorization
(setq web-mode-enable-css-colorization t)
;; Block face: can be used to set blocks background and default foreground
(setq web-mode-enable-block-face t)
;; Part face: can be used to set parts background and default foreground
(setq web-mode-enable-part-face t)
;; Comment keywords
(setq web-mode-enable-comment-interpolation t)
;; Heredoc (cf. PHP strings) fontification (when the identifier is <<<EOTHTML or <<<EOTJAVASCRIPT)
(setq web-mode-enable-heredoc-fontification t)
;; Keywords / Constants
;; Add constants
(setq web-mode-extra-constants '(("php" . ("CONS1" "CONS2"))))
;; Current element / column highlight
;; Highlight current HTML element
(setq web-mode-enable-current-element-highlight t)      
;; You can also highlight the current column with
(setq web-mode-enable-current-column-highlight t)
;; Context-aware auto-completion
;; If you have auto-complete installed, you can set up per-language ac-sources with web-mode-ac-sources-alist:
(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property))
    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))


(provide `init-web-mode)
