
(add-to-list 'load-path user-emacs-directory)

(require 'init-elpa)

(require 'init-gui)
(require 'init-editor)
(require 'init-helm)
(require 'init-recentf)
(require 'init-ibuffer)
(require 'init-paredit)
(require 'init-uniquify)
(require 'init-rainbow)
(require 'init-ace-jump)
(require 'init-clojure)
(require 'init-php)
(require 'init-css)
(require 'init-flycheck)
(require 'init-others)

(require-package 'yaml-mode)


;; variables from 'customize' interface
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
