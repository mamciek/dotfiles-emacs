
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/"))

(package-initialize)

(add-to-list 'load-path
	     (concat user-emacs-directory "lisp"))

(require 'init-elpa)
(require 'init-use-package)

(require 'init-which-key)
(require 'init-gui)
(require 'init-editor)
(require 'init-helm)
(require 'init-ido)
(require 'init-company)
(require 'init-recentf)
(require 'init-ibuffer)
(require 'init-paredit)
(require 'init-smartparens)
(require 'init-uniquify)
(require 'init-rainbow)
(require 'init-avy)
(require 'init-java)
(require 'init-clojure)
;(require 'init-scala)
(require 'init-groovy)
(require 'init-php)
(require 'init-web-mode)
(require 'init-css)
(require 'init-flycheck)
(require 'init-docker)
(require 'init-yasnippet)
(require 'init-multiple-cursors)
(require 'init-magit)
(require 'init-projectile)
(require 'init-haskell)
(require 'init-go)
(require 'init-rust)
(require 'init-others)
(require 'init-org)
(require 'init-org-publish)

(require-package 'yaml-mode)


;; variables from 'customize' interface
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
