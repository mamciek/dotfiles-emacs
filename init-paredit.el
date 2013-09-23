(require-package 'paredit)

(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'nrepl-mode-hook 'enable-paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)


(provide 'init-paredit)
