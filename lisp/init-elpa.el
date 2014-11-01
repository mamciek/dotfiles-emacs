(require 'package)

(defun require-package (package)
  "Install given package"
  (if (package-installed-p package)
      t
    (package-install package)))

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("SC" . "http://joseito.republika.pl/sunrise-commander/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


(provide 'init-elpa)
