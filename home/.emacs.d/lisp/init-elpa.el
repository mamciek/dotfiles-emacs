(require 'package)

(defun require-package (package)
  "Install given package"
  (if (package-installed-p package)
      t
    (package-install package)))

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(setq package-pinned-packages '((groovy-mode . "melpa")))


(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


(provide 'init-elpa)
