(require-package 'clojure-mode)
(require-package 'cider)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(provide 'init-clojure)
