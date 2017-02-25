(use-package meghanada
  :ensure t
  :config
  (add-hook 'java-mode-hook
	    (lambda ()
	      (meghanada-mode t)
	      (add-hook 'before-save-hook 'meghanada-code-beautify-before-save))))

(provide 'init-java)
