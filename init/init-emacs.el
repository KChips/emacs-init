
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(package-selected-packages (quote (evil auto-complete tide))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; hide tool-bar
(tool-bar-mode -1)

;; startup configurations
;; open rencent file when startup
;; (desktop-save-mode 1)  ;; cause slowly setup
;; (setq inhibit-startup-screen nil)
;; fullscreen startup frame
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; code indentation
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)

;; show line number
(global-linum-mode 1)
(setq linum-format "%d ")

;; parentheses auto complete
(electric-pair-mode t)

;; parentheses auto match
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; (setq auto-save-file-name-transforms '((".*" "~/.emacs-saves/" t)))

;; switch windows directionally
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
;; switch between active buffers by default
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)


;; close bell and warning image when error occured
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; show column number
(setq column-number-mode t)

;; title line setting
;; (setq frame-title-format "emacs@%b")
(setq frame-title-format
      (list
       ;; (format "%s %%S: %%j " (system-name))
       '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;; can show image file
(auto-image-file-mode)

;; add grammer highlight
(global-font-lock-mode t)

;; close creating temp files
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)  ; stop creating .# files

(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

;; (defun move-line-down ()
;;   "Move down the current line."
;;   (interactive)
;;   (forward-line 1)
;;   (transpose-lines 1)
;;   (forward-line -1)
;;   (indent-according-to-mode))

;; (global-set-key (kbd "M-<up>")  'move-line-up)
;; (global-set-key (kbd "M-<down>")  'move-line-down)

;; Ensure ibuffer opens with point at the current buffer's entry.
(defadvice ibuffer
  (around ibuffer-point-to-most-recent) ()
  "Open ibuffer with cursor pointed to most recent buffer name."
  (let ((recent-buffer-name (buffer-name)))
    ad-do-it
    (ibuffer-jump-to-buffer recent-buffer-name)))
(ad-activate 'ibuffer)

(setenv "PATH" (concat (getenv "PATH") ":/sw/bin"))
(setq exec-path (append exec-path '("/sw/bin")))


(provide `init-emacs)
