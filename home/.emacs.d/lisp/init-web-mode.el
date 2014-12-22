(require-package 'web-mode)

(require 'web-mode)
(require 'init-flycheck)

(add-to-list 'auto-mode-alist '("\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))

(defun custom-web-mode-hook ()
    "Hooks for Web mode."
      (setq web-mode-markup-indent-offset 2)
      (setq web-mode-css-indent-offset 2)
      (setq web-mode-enable-engine-detection t)
      (flycheck-mode t)
      )
(add-hook 'web-mode-hook  'custom-web-mode-hook)

(provide 'init-web-mode)
