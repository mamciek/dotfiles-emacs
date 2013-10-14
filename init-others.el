(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium")

(put 'dired-find-alternate-file 'disabled nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-others)
