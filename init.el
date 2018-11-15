
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(add-to-list 'load-path "~/.emacs.d/elpa")
(require `init-elpa)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t) 

;; packages init
(add-to-list `load-path "~/.emacs.d/init")
(require `init-emacs)
(require `init-tide)
(require `init-evil)
(require `init-web-mode)
(require `init-auto-complete)
(require `init-tabbar)
;; (require `init-helm-config)
;; (require `init-drag-stuff)



;; end
