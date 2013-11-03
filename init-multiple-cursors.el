(require-package 'multiple-cursors)

(global-set-key (kbd "C-c m n") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "C-c m p") 'mc/mark-previous-symbol-like-this)
(global-set-key (kbd "C-c m f") 'mc/mark-all-symbols-like-this-in-defun)
(global-set-key (kbd "C-c m a") 'mc/mark-all-symbols-like-this)
(global-set-key (kbd "C-c m l") 'mc/edit-lines)

(provide 'init-multiple-cursors)
