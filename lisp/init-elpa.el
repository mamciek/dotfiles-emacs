(when (not package-archive-contents)
  (package-refresh-contents))

(defun require-package (package)
  "Install given package"
  (unless (package-installed-p package)
    (package-install package)))

(provide 'init-elpa)
