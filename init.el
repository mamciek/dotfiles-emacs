(require 'package)

;;;; PACKAGE REPOSITORY
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(clojure-mode
		      paredit
		      nrepl
		      php-mode
		      helm
		      helm-ls-git
		      helm-git-grep
		      rainbow-delimiters
		      ace-jump-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;;; CUSTOM FILE
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file) (load custom-file))

;;;; BASIC CUSTOMIZATIONS
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium")

(global-set-key (kbd "C-h") 'backward-delete-char-untabify)
(global-set-key (kbd "M-h") 'backward-kill-word)

(global-set-key (kbd "M-/") 'hippie-expand)

;; hide splash screen and banner
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; auto ident after RET
(define-key global-map (kbd "RET") 'newline-and-indent)

;; buffer names have directory name appended if files have the same name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; mouse yanking inserts at the point instead of location of the click
(setq mouse-yank-at-point t)

;; save location of the point end return to it next time you visit file
(require 'saveplace)
(setq-default save-place t)

;; use regex-aware incremental search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(global-set-key (kbd "C-c q") 'join-line)

;; highlight the matching pair when the point is over parentheses
(show-paren-mode 1)

;;;; IDO
;(setq ido-enable-flex-matching t)
;(setq ido-everywhere t)
;(ido-mode 1)

;;;; HELM
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-i") 'helm-imenu)
(global-set-key (kbd "<f2> g") 'helm-git-grep)
(global-set-key (kbd "<f2> l") 'helm-ls-git-ls)

;;;; IMENU
(defun imenu-elisp-sections ()
  (setq imenu-prev-index-position-function nil)
  (add-to-list 'imenu-generic-expression '("Sections" "^;;;; \\(.+\\)$" 1) t))
(add-hook 'emacs-lisp-mode-hook 'imenu-elisp-sections)

;;;; IBUFFER
;; use ibuffer instead of buffer-list
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;;; PAREDIT
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'nrepl-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

;;;; RECENTF
(recentf-mode 1)
(setq recentf-max-menu-items 1000)

;;;; RAINBOW DELIMITERS
(global-rainbow-delimiters-mode)

;;;; ACE JUMP MODE
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
